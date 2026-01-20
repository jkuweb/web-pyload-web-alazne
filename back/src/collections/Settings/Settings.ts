import { isAdmin } from '@/access'
import type { CollectionConfig } from 'payload'

export const Settings: CollectionConfig<'settings'> = {
  slug: 'settings',
  labels: { singular: 'Settings', plural: 'Settings' },
  admin: { useAsTitle: 'title' },
  access: {
    read: () => true,
    update: isAdmin,
  },
  fields: [
    {
      name: 'title',
      type: 'text',
      admin: { readOnly: true },
      defaultValue: 'Settings',
    },
    {
      name: 'lastFrontendDeploy',
      type: 'date',
      admin: {
        description: 'Timestamp del último deploy del frontend',
      },
    },
  ],
}
