import type { MiddlewareHandler } from 'astro';

const PUBLIC_PATHS = [
	'/es/',
	'/es/about/',
	'/es/contact/',
	'/es/services/',
	'/eu/',
	'/eu/about/',
	'/eu/contact/',
	'/eu/services/',
	'/privacy-policy/',
	'/terms-and-conditions/',
	'/legal-notice/',
];

const BOT_REGEX =
	/bingbot|slurp|duckduckbot|baiduspider|yandexbot|sogou|exabot|facebot|ia_archiver/i;

export const onRequest: MiddlewareHandler = async (context, next) => {
	const response = await next();
	const userAgent = context.request.headers.get('user-agent') || '';
	const isBot = BOT_REGEX.test(userAgent);
	const isPublic = PUBLIC_PATHS.some((path) =>
		context.url.pathname.startsWith(path),
	);

	if (isBot) {
		response.headers.set(
			'Content-Security-Policy',
			`
      default-src 'self';
      img-src 'self' data:;
      style-src 'self';
      font-src 'self';
      object-src 'none';
      base-uri 'self';
      `.replace(/\s+/g, ' '),
		);
	} else if (isPublic) {
		const trustedScripts = [
			'https://www.google.com',
			'https://www.gstatic.com',
			'https://www.googletagmanager.com',
			'https://www.google-analytics.com',
			'https://challenges.cloudflare.com',
		];

		const trustedImages = [
			'https://res.cloudinary.com',
			'https://www.gstatic.com',
			'https://www.google.com',
			'https://www.googletagmanager.com',
			'https://www.google-analytics.com',
		];

		const trustedFrames = [
			"'self'",
			'https://www.google.com',
			'https://aitamasleepcoaching.com',
			'https://challenges.cloudflare.com',
		];

		const trustedStyles = [
			'https://fonts.googleapis.com',
			'https://www.googletagmanager.com',
		];

		const trustedConnect = [
			'https://www.google.com',
			'https://www.gstatic.com',
			'https://www.googletagmanager.com',
			'https://www.google-analytics.com',
			'https://*.google-analytics.com',
		];

		response.headers.set(
			'Content-Security-Policy',
			`
      default-src 'self';
      script-src 'self' 'unsafe-inline' ${trustedScripts.join(' ')};
      script-src-elem 'self' 'unsafe-inline' ${trustedScripts.join(' ')};
      style-src 'self' 'unsafe-inline' ${trustedStyles.join(' ')};
      style-src-elem 'self' 'unsafe-inline' ${trustedStyles.join(' ')};
      img-src 'self' data: blob: ${trustedImages.join(' ')};
      font-src 'self' data:;
      connect-src 'self' ${trustedConnect.join(' ')};
      frame-src ${trustedFrames.join(' ')};
      worker-src 'self' blob:;
      child-src 'self' blob:;
      object-src 'none';
      base-uri 'self';
      form-action 'self';
      upgrade-insecure-requests;
      `.replace(/\s+/g, ' '),
		);
	}

	response.headers.set('X-Content-Type-Options', 'nosniff');
	response.headers.set('Referrer-Policy', 'strict-origin-when-cross-origin');
	response.headers.set(
		'Permissions-Policy',
		'geolocation=(), microphone=(), camera=()',
	);

	if (context.url.protocol === 'https:') {
		response.headers.set(
			'Strict-Transport-Security',
			'max-age=63072000; includeSubDomains; preload',
		);
	}

	return response;
};
