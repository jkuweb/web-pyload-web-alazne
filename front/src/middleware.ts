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

export const onRequest: MiddlewareHandler = async (context, next) => {
	const response = await next();

	const userAgent = context.request.headers.get('user-agent') || '';
	const isBot =
		/googlebot|bingbot|slurp|duckduckbot|baiduspider|yandexbot|sogou|exabot|facebot|ia_archiver/i.test(
			userAgent,
		);

	const isPublic = PUBLIC_PATHS.some((path) =>
		context.url.pathname.startsWith(path),
	);

	// Si la ruta es pública o es un bot, no bloquear
	if (isPublic || isBot) {
		// CSP ligera para bots y normal para usuarios
		const trustedScripts = [
			'https://www.google.com',
			'https://www.gstatic.com',
			'https://www.recaptcha.net',
			'https://www.googletagmanager.com',
			'https://www.google-analytics.com',
			'https://ssl.gstatic.com',
		];

		const trustedImages = [
			'https://res.cloudinary.com',
			'https://www.gstatic.com',
			'https://www.google.com',
		];

		response.headers.set(
			'Content-Security-Policy',
			`
        default-src 'self';
        script-src 'self' 'unsafe-inline' 'unsafe-eval' ${trustedScripts.join(' ')};
        script-src-elem 'self' 'unsafe-inline' ${trustedScripts.join(' ')};
        style-src 'self' 'unsafe-inline';
        img-src 'self' data: blob: ${trustedImages.join(' ')};
        font-src 'self' data:;
        connect-src 'self';
        frame-src 'self';
        object-src 'none';
        base-uri 'self';
        form-action 'self';
        upgrade-insecure-requests;
      `.replace(/\s+/g, ' '),
		);
	} else {
		// Para rutas privadas que requieren login
		// Puedes devolver 401 o redirigir
		// return new Response('Unauthorized', { status: 401 });
	}

	// Headers de seguridad generales
	response.headers.set('X-Content-Type-Options', 'nosniff');
	response.headers.set('Referrer-Policy', 'strict-origin-when-cross-origin');
	response.headers.set('X-XSS-Protection', '1; mode=block');
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
