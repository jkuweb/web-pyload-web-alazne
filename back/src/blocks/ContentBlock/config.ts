import type { Block } from 'payload'
import {
  BlocksFeature,
  FixedToolbarFeature,
  InlineToolbarFeature,
  LinkFeature,
  lexicalEditor,
} from '@payloadcms/richtext-lexical'
import { link } from '@/fields/link'
import { MediaBlock } from '../MediaBlock/config'

export const ContentBlock: Block = {
  slug: 'content',
  interfaceName: 'ContentBlock',
  fields: [
    {
      name: 'enableSectionTitle',
      label: '¿Quieres añadir un Título a la sección?',
      type: 'checkbox',
    },
    {
      name: 'sectionTitle',
      label: 'Título',
      type: 'text',
      admin: {
        condition: (_, siblingData) => siblingData?.enableSectionTitle,
      },
      localized: true,
    },
    {
      name: 'enableTitle',
      label: '¿Quieres añadir un Título?',
      type: 'checkbox',
    },
    {
      name: 'title',
      label: 'Título',
      type: 'text',
      admin: {
        condition: (_, siblingData) => siblingData?.enableTitle,
      },
      localized: true,
    },
    // {
    //   name: 'enableImage',
    //   label: '¿Quieres añadir una imagen a la sección?',
    //   type: 'checkbox',
    // },
    // {
    //   name: 'image',
    //   type: 'upload',
    //   relationTo: 'media',
    //   admin: {
    //     condition: (_, siblingData) => siblingData?.enableImage,
    //   },
    // },
    {
      name: 'enableRichText',
      label: '¿Quieres añadir texto?',
      type: 'checkbox',
    },
    {
      name: 'richText',
      type: 'richText',
      editor: lexicalEditor({
        admin: {
          hideGutter: true,
          hideInsertParagraphAtEnd: true,
          placeholder: 'Escribe tu contenido aquí...',
        },
        features: ({ defaultFeatures }) => {
          const filtered = defaultFeatures.filter(
            (feature) =>
              !['superscript', 'subscript', 'inlineCode', 'indent'].includes(feature.key),
          )

          const hasLinkFeature = filtered.some((f) => f.key === 'link')

          return [...filtered, FixedToolbarFeature(), InlineToolbarFeature()]
        },
      }),
      admin: {
        condition: (_, siblingData) => siblingData?.enableRichText,
      },
      label: false,
      localized: true,
    },
  ],
}
