import type { Block } from 'payload'

export const SentenceBlock: Block = {
  slug: 'sentence',
  interfaceName: 'SentenceBlock',
  // access: {
  //   read: publicAccess,
  //   create: isAdmin,
  //   update: isAdminOrUser,
  //   delete: isAdmin,
  // },

  fields: [
    {
      name: 'sentences',
      type: 'array',
      fields: [
        {
          name: 'title',
          type: 'text',
          required: true,
          localized: true,
        },
      ],
    },
  ],
}
