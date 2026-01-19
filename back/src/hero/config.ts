import type { Field } from 'payload'
import {
  FixedToolbarFeature,
  HeadingFeature,
  InlineToolbarFeature,
  lexicalEditor,
} from '@payloadcms/richtext-lexical'

import { linkGroup } from '@/fields/linkGroup'

export const hero: Field = {
  name: 'hero',
  type: 'group',
  fields: [
    {
      name: 'title',
      label: 'Título',
      type: 'text',
      localized: true,
    },
    {
      name: 'media',
      type: 'upload',
      relationTo: 'media',
      required: true,
      maxDepth: 1,
    },
    {
      name: 'enableText',
      label: '¿Quieres añadir texto?',
      type: 'checkbox',
    },
    {
      name: 'text',
      type: 'text',
      localized: true,
      admin: {
        condition: (_, siblingData) => siblingData?.enableText,
      },
    },
    {
      name: 'enableSubText',
      label: '¿Quieres añadir subtexto?',
      type: 'checkbox',
    },
    {
      name: 'subtext',
      type: 'text',
      localized: true,
      admin: {
        condition: (_, siblingData) => siblingData?.enableSubText,
      },
    },

    linkGroup({
      overrides: {
        maxRows: 2,
      },
    }),
  ],
  label: false,
}
