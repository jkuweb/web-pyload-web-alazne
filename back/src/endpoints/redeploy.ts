import type { PayloadHandler } from 'payload'

export const redeployFrontend: PayloadHandler = async (req) => {
  const { payload, user } = req
  if (!user) return new Response('Unauthorized', { status: 401 })

  // Disparar build en Netlify
  await fetch(process.env.NETLIFY_BUILD_HOOK!, { method: 'POST' })

  // Guardar timestamp del último deploy
  const settings = await payload.find({ collection: 'settings', limit: 1 })
  if (settings.docs[0]) {
    await payload.update({
      collection: 'settings',
      id: settings.docs[0].id,
      data: { lastFrontendDeploy: new Date().toISOString() },
    })
  }

  return Response.json({ ok: true })
}
