import { postgresAdapter } from '@payloadcms/db-postgres'
import { lexicalEditor } from '@payloadcms/richtext-lexical'
import path from 'path'
import { buildConfig } from 'payload'
import { fileURLToPath } from 'url'
import sharp from 'sharp'
import { es } from '@payloadcms/translations/languages/es'
import { Users } from './collections/Users/Users'
import { Media } from './collections/Media/Media'
import { Pages } from './collections/Pages/Pages'
import { cloudStoragePlugin } from '@payloadcms/plugin-cloud-storage'
import { UploadApiResponse, v2 as cloudinary } from 'cloudinary'
import { HandleDelete, HandleUpload } from '@payloadcms/plugin-cloud-storage/types'
import { seoPlugin } from '@payloadcms/plugin-seo'

const filename = fileURLToPath(import.meta.url)
const dirname = path.dirname(filename)

cloudinary.config({
  cloud_name: process.env.CLOUDINARY_CLOUD_NAME,
  api_key: process.env.CLOUDINARY_API_KEY,
  api_secret: process.env.CLOUDINARY_API_SECRET,
})

const cloudinaryAdapter = () => ({
  name: 'cloudinary-adapter',
  async handleUpload({ file }: Parameters<HandleUpload>[0]): Promise<void> {
    try {
      const isSVG = file.filename.toLowerCase().endsWith('.svg')

      const uploadResult = await new Promise<UploadApiResponse>((resolve, reject) => {
        const uploadStream = cloudinary.uploader.upload_stream(
          {
            resource_type: 'image',
            public_id: `media/${file.filename.replace(/\.[^/.]+$/, '')}`,
            overwrite: false,
            use_filename: true,
            ...(isSVG && { format: 'svg' }),
          },
          (error, result) => {
            if (error) return reject(error)
            if (!result) return reject(new Error('No result returned from Cloudinary'))
            resolve(result)
          },
        )
        uploadStream.end(file.buffer)
      })

      const filenameWithoutPrefix = uploadResult.public_id.replace('media/', '')

      const finalFilename =
        isSVG && !filenameWithoutPrefix.endsWith('.svg')
          ? `${filenameWithoutPrefix}.svg`
          : filenameWithoutPrefix

      file.filename = finalFilename
      file.mimeType = isSVG ? 'image/svg+xml' : `image/${uploadResult.format}`
      file.filesize = uploadResult.bytes

      Object.assign(file, {
        url: uploadResult.secure_url,
        width: uploadResult.width,
        height: uploadResult.height,
      })
    } catch (err) {
      console.error('Upload Error', err)
      throw err
    }
  },
  async handleDelete({ filename }: Parameters<HandleDelete>[0]): Promise<void> {
    try {
      await cloudinary.uploader.destroy(`media/${filename.replace(/\.[^/.]+$/, '')}`)
    } catch (error) {
      throw error
    }
  },
  staticHandler() {
    return new Response('Not implemented', { status: 501 })
  },
})

export default buildConfig({
  admin: {
    user: Users.slug,
    importMap: {
      baseDir: path.resolve(dirname),
    },
  },

  serverURL:
    process.env.PAYLOAD_PUBLIC_SERVER_URL ||
    'http://web-pyload-web-alazne-production.up.railway.app',
  localization: {
    locales: [
      {
        label: 'Español',
        code: 'es',
      },
      {
        label: 'Euskera',
        code: 'eu',
      },
    ],
    defaultLocale: 'es',
    fallback: true,
  },
  i18n: {
    supportedLanguages: { es },
  },
  collections: [Users, Media, Pages],
  editor: lexicalEditor(),
  secret: process.env.PAYLOAD_SECRET || '',
  typescript: {
    outputFile: path.resolve(dirname, 'payload-types.ts'),
  },
  db: postgresAdapter({
    pool: {
      connectionString: process.env.DATABASE_URL || '',
    },
  }),
  sharp,
  plugins: [
    cloudStoragePlugin({
      collections: {
        media: {
          adapter: cloudinaryAdapter,
          disableLocalStorage: true,
          disablePayloadAccessControl: true,
        },
      },
    }),
    seoPlugin({
      collections: ['pages'],
      uploadsCollection: 'media',
      generateTitle: ({ doc, locale }) => {
        if (doc.slug === 'inicio' || doc.slug === 'hasiera') {
          return locale === 'eu'
            ? doc.title || 'Aitama Sleep Coaching'
            : doc.title || 'Aitama Sleep Coaching'
        }
        return locale === 'eu'
          ? `${doc.title} | Aitama Sleep Coaching`
          : `${doc.title} | Aitama Sleep Coaching`
      },
      generateURL: ({ doc, locale }) => {
        const baseUrl = 'https://aitamasleepcoaching.com'
        const slug = doc.slug

        if (slug === 'inicio' || slug === 'hasiera') {
          return locale === 'eu' ? `${baseUrl}/eu` : baseUrl
        }

        return locale === 'eu' ? `${baseUrl}/eu/${slug}` : `${baseUrl}/${slug}`
      },
      tabbedUI: true,
    }),
  ],
  // cors: [
  // 'https://www.aitamasleepcoaching.com',
  // 'https://aitamasleepcoaching.com',
  // 'https://api.aitamasleepcoaching.com',
  //   process.env.FRONTEND_URL,
  //   process.env.PAYLOAD_PUBLIC_SERVER_URL,
  //   'http://localhost:4321',
  //   'http://localhost:3000',
  //   'web-pyload-web-alazne-production.up.railway.app',
  // ].filter(Boolean),
  // csrf: [
  // 'https://www.aitamasleepcoaching.com',
  // 'https://aitamasleepcoaching.com',
  // 'https://api.aitamasleepcoaching.com',
  //   process.env.FRONTEND_URL,
  //   process.env.PAYLOAD_PUBLIC_SERVER_URL,
  //   'http://localhost:4321',
  //   'http://localhost:3000',
  //   'web-pyload-web-alazne-production.up.railway.app',
  // ].filter(Boolean),

  cors: [
    process.env.FRONTEND_URL,
    process.env.PAYLOAD_PUBLIC_SERVER_URL,
    'http://localhost:4321',
  ].filter(Boolean),

  csrf: [
    process.env.FRONTEND_URL,
    process.env.PAYLOAD_PUBLIC_SERVER_URL,
    'http://localhost:4321',
  ].filter(Boolean),
})
