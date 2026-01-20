import type { PayloadHandler } from 'payload'

export const hasPendingChanges: PayloadHandler = async (req) => {
  const { payload } = req

  // Traer último deploy
  const settings = await payload.find({ collection: 'settings', limit: 1 })
  const lastDeploy = settings.docs[0]?.lastFrontendDeploy || null

  // Buscar páginas publicadas actualizadas después del último deploy
  const where: any = { _status: { equals: 'published' } }
  if (lastDeploy) {
    where.updatedAt = { greater_than: lastDeploy }
  }

  const result = await payload.find({ collection: 'pages', where, limit: 0 })

  return Response.json({ count: result.totalDocs })
}
