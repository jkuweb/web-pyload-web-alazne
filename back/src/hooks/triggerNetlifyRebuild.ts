import type { CollectionAfterChangeHook, CollectionAfterDeleteHook } from 'payload'

let lastBuildTime = 0
const BUILD_COOLDOWN = 60000

const triggerBuild = async (payload: any, reason: string) => {
  const buildHook = process.env.NETLIFY_BUILD_HOOK

  if (!buildHook) {
    payload.logger.warn('⚠️ NETLIFY_BUILD_HOOK not configured in environment variables')
    return false
  }

  const now = Date.now()
  if (now - lastBuildTime < BUILD_COOLDOWN) {
    payload.logger.info(
      `⏳ Build skipped (cooldown active). Last build: ${Math.round((now - lastBuildTime) / 1000)}s ago`,
    )
    return false
  }

  try {
    const response = await fetch(buildHook, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
    })

    if (response.ok) {
      lastBuildTime = now
      payload.logger.info(`✅ Netlify build triggered: ${reason}`)
      return true
    } else {
      payload.logger.error(`❌ Failed to trigger build: ${response.status} ${response.statusText}`)
      return false
    }
  } catch (error) {
    payload.logger.error(`❌ Error triggering Netlify build: ${error}`)
    return false
  }
}

export const triggerNetlifyRebuild: CollectionAfterChangeHook = async ({
  doc,
  operation,
  req: { payload },
}) => {
  if (operation === 'update' || operation === 'create') {
    if (doc._status === 'published') {
      const slug = doc.slug === 'inicio' ? 'Inicio' : doc.slug
      await triggerBuild(payload, `Page published: ${slug}`)
    } else if (doc._status === 'draft') {
      payload.logger.info(`📝 Draft saved: ${doc.slug} (no build triggered)`)
    }
  }

  return doc
}

export const triggerNetlifyRebuildOnDelete: CollectionAfterDeleteHook = async ({
  doc,
  req: { payload },
}) => {
  const slug = doc?.slug === 'inicio' ? 'Inicio' : doc?.slug
  await triggerBuild(payload, `Page deleted: ${slug}`)

  return doc
}
