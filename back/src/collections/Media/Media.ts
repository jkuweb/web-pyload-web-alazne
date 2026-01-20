import { isAdminOrUser, publicAccess } from '@/access'
import type { CollectionConfig } from 'payload'

const getCloudinaryUrl = (filename: string, transformations?: string): string => {
  const cloudName = process.env.CLOUDINARY_CLOUD_NAME
  const baseUrl = `https://res.cloudinary.com/${cloudName}/image/upload`

  if (transformations) {
    return `${baseUrl}/${transformations}/media/${filename}`
  }
  return `${baseUrl}/media/${filename}`
}

export const Media: CollectionConfig = {
  slug: 'media',
  labels: {
    singular: 'Media',
    plural: 'Media',
  },
  access: {
    read: publicAccess,
    create: isAdminOrUser,
    update: isAdminOrUser,
    delete: isAdminOrUser,
  },
  upload: {
    disableLocalStorage: true,
    mimeTypes: ['image/jpeg', 'image/png', 'image/gif', 'image/webp', 'image/svg+xml'],
    adminThumbnail: ({ doc }) => {
      const filename = doc?.filename

      if (!filename || typeof filename !== 'string' || filename.trim() === '') {
        if (doc?.url && typeof doc.url === 'string' && doc.url.includes('cloudinary')) {
          const isSVG = doc.mimeType === 'image/svg+xml'
          if (isSVG) {
            return doc.url
          }
          return doc.url.replace('/upload/', '/upload/c_fill,w_150,h_150,f_auto,q_auto/')
        }
        return ''
      }

      const isSVG = doc.mimeType === 'image/svg+xml' || filename.endsWith('.svg')

      if (isSVG) {
        return getCloudinaryUrl(filename)
      }

      return getCloudinaryUrl(filename, 'c_fill,w_150,h_150,f_auto,q_auto')
    },
  },
  admin: {
    group: 'Recursos',
  },
  fields: [
    {
      name: 'url',
      type: 'text',
      admin: {
        hidden: true,
        readOnly: true,
      },
    },
    {
      name: 'alt',
      label: 'Texto alternativo',
      type: 'text',
      admin: {
        description: 'Ayuda a lectores de pantalla a describir la imagen.',
      },
    },
    {
      name: 'unpicUrl',
      type: 'text',
      label: 'URL optimizada (Unpic)',
      admin: {
        readOnly: true,
        hidden: true,
        description: 'URL compatible con Unpic para optimización automática.',
      },
    },
  ],
  hooks: {
    afterChange: [
      async ({ doc, req }) => {
        let needsUpdate = false
        const updates: any = {}

        if (doc.url?.includes('localhost') || doc.url?.includes('/api/media/file/')) {
          const cloudinary = (await import('cloudinary')).v2
          const correctUrl = cloudinary.url(`media/${doc.filename}`, {
            secure: true,
            fetch_format: 'auto',
            quality: 'auto',
          })
          updates.url = correctUrl
          needsUpdate = true
        }

        if (!doc.unpicUrl && doc.url && !doc.url.includes('localhost')) {
          const baseUrl = doc.url.replace('/f_auto,q_auto/', '/')
          updates.unpicUrl = baseUrl
          needsUpdate = true
        }

        if (needsUpdate) {
          await req.payload.update({
            collection: 'media',
            id: doc.id,
            data: updates,
          })
        }

        return doc
      },
    ],
    afterRead: [
      async ({ doc }) => {
        if (!doc.url || doc.url.includes('localhost') || doc.url.includes('/api/media/file/')) {
          const cloudinary = (await import('cloudinary')).v2
          doc.url = cloudinary.url(`media/${doc.filename}`, {
            secure: true,
            fetch_format: 'auto',
            quality: 'auto',
          })
        }

        if (!doc.unpicUrl && doc.url) {
          doc.unpicUrl = `https://res.cloudinary.com/${process.env.CLOUDINARY_CLOUD_NAME}/image/upload/media/${doc.filename}`
        }

        if (doc.mimeType === 'svg' || doc.filename?.endsWith('.svg')) {
          doc.isSVG = true
        }

        return doc
      },
    ],
  },
}
