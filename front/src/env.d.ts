interface ImportMetaEnv {
	readonly BASE_URL: string;
	readonly PUBLIC_CLOUDINARY_CLOUD_NAME: string;
	readonly RESEND_API_KEY: string;
	readonly RECAPTCHA3_SECRET_SITE: string;
	readonly RECAPTCHA3_KEY: string;
	readonly RESEND_WEBHOOK_SECRET: string;
	readonly HREF: string;
}

interface ImportMeta {
	readonly env: ImportMetaEnv;
}
// Declare all asset file types
declare module '*.svg' {
	const content: string;
	export default content;
}
declare module '*.png' {
	const content: string;
	export default content;
}
declare module '*.jpg' {
	const content: string;
	export default content;
}
declare module '*.jpeg' {
	const content: string;
	export default content;
}
declare module '*.gif' {
	const content: string;
	export default content;
}
declare module '*.webp' {
	const content: string;
	export default content;
}
declare module '*.css' {
	const content: string;
	export default content;
}
declare module '*.scss' {
	const content: string;
	export default content;
}
declare module '*.woff' {
	const content: string;
	export default content;
}
declare module '*.woff2' {
	const content: string;
	export default content;
}
