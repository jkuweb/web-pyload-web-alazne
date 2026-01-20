import type { CollectionConfig } from 'payload'
import { hero } from '@/hero/config'
import { slugField } from '@/fields/slug'
import { MediaBlock } from '@/blocks/MediaBlock/config'
import { ContentBlock } from '@/blocks/ContentBlock/config'
import { OpinionBlock } from '@/blocks/OpinionBlock/config'
import { ServiceBlock } from '@/blocks/ServiceBlock/config'
import { SentenceBlock } from '@/blocks/SentenceBlock/config'
import { publicAccess, isAdmin, isAdminOrUser } from '@/access'
import { PriceBlock } from '@/blocks/PriceBlock/config'

export const Pages: CollectionConfig<'pages'> = {
  slug: 'pages',
  labels: { singular: 'Página', plural: ' Lista de Páginas' },
  access: {
    read: publicAccess,
    create: isAdmin,
    update: isAdminOrUser,
    delete: isAdmin,
  },
  defaultPopulate: {
    title: true,
    slug: true,
  },
  admin: {
    defaultColumns: ['title', 'slug', 'updatedAt'],
    useAsTitle: 'title',
    group: 'Páginas',
  },
  fields: [
    {
      name: 'title',
      type: 'text',
      required: true,
      localized: true,
    },
    {
      type: 'tabs',
      tabs: [
        {
          fields: [hero],
          label: 'Hero',
        },
        {
          fields: [
            {
              name: 'layout',
              type: 'blocks',
              blocks: [
                ContentBlock,
                MediaBlock,
                OpinionBlock,
                ServiceBlock,
                SentenceBlock,
                PriceBlock,
              ],
              required: true,
              admin: {
                initCollapsed: true,
              },
            },
          ],
          label: 'Content',
        },
      ],
    },
    {
      name: 'publishedAt',
      type: 'date',
      admin: {
        position: 'sidebar',
      },
    },
    ...slugField(),
  ],
  versions: {
    drafts: {
      autosave: {
        interval: 5000,
      },
      schedulePublish: false,
    },
    maxPerDoc: 10,
  },
}
