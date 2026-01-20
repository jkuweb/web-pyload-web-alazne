import type { PayloadHandler } from 'payload'

export const hasPendingChanges: PayloadHandler = async (req) => {
  const { payload } = req

  const result = await payload.find({
    collection: 'pages',
    where: {
      _status: { equals: 'draft' },
    },
    limit: 0,
  })

  return Response.json({
    count: result.totalDocs,
  })
}
