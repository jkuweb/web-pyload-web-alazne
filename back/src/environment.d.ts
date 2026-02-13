declare global {
  namespace NodeJS {
    interface ProcessEnv {
      PAYLOAD_SECRET: string
      DATABASE_URI: string
      NEXT_PUBLIC_SERVER_URL: string
      CLOUDINARY_CLOUD_NAME: string
      CLOUDINARY_API_KEY: string
      CLOUDINARY_API_SECRET: string
      RESEND_API_KEY: string
      ADMIN_EMAIL: string
      SITE_NAME: string
      FRONTEND_URL: string
      BACKEND_URL: string
      PREVIEW_SECRET: string
      ADMIN_EMAIL: string
      RESEND_FROM_EMAIL: string
      PAYLOAD_PUBLIC_SERVER_URL: string
      NETLIFY_BUILD_HOOK: string
    }
  }
}

export {}
