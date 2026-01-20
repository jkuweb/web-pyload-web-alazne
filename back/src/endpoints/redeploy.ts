import type { PayloadHandler } from 'payload'

export const redeployFrontend: PayloadHandler = async (req) => {
  await fetch(process.env.NETLIFY_BUILD_HOOK!, {
    method: 'POST',
  })

  return new Response(JSON.stringify({ ok: true }), { status: 200 })
}
