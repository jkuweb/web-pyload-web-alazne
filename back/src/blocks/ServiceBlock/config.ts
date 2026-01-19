import type { Block } from 'payload'

export const ServiceBlock: Block = {
  slug: 'services',
  interfaceName: 'ServiceBlock',
  // access: {
  //   read: publicAccess,
  //   create: isAdmin,
  //   update: isAdminOrUser,
  //   delete: isAdmin,
  // },

  fields: [
    {
      name: 'services',
      type: 'array',
      fields: [
        {
          name: 'title',
          type: 'text',
          required: true,
          localized: true,
        },
        {
          name: 'image',
          type: 'upload',
          relationTo: 'media',
          required: true,
        },
      ],
    },
  ],
}
