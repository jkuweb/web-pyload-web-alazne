import type { Block } from 'payload'

export const MediaBlock: Block = {
  slug: 'mediaBlock',
  interfaceName: 'MediaBlock',
  fields: [
    {
      name: 'media',
      type: 'upload',
      relationTo: 'media',
      required: true,
    },
    // {
    //   name: 'sectionName',
    //   type: 'text',
    //   access: {
    //     read: publicReadField,
    //     create: isAdminFieldLevel,
    //     update: isAdminFieldLevel,
    //   },
    //   admin: {
    //     condition: (_data, _siblingData, { user }) => user?.roles?.includes('admin') ?? false,
    //   },
    // },
  ],
}
