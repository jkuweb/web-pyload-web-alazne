import type { PayloadHandler } from 'payload'

export const hasPendingChanges: PayloadHandler = async (req) => {
  const { payload } = req

  const result = await payload.find({
    collection: 'pages',
    where: {
      _status: { equals: 'draft' },
    },
    limit: 1,
  })

  return Response.json({
    hasChanges: result.totalDocs > 0,
  })
}
