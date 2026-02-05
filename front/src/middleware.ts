import type { MiddlewareHandler } from 'astro';

export const onRequest: MiddlewareHandler = async (context, next) => {
	const response = await next();

	const trustedScripts = [
		'https://www.google.com',
		'https://www.gstatic.com',
		'https://www.recaptcha.net',
		'https://www.googletagmanager.com',
		'https://www.google-analytics.com',
		'https://ssl.gstatic.com',
		'https://static.cloudflareinsights.com',
		'https://region1.google-analytics.com',
		'https://region2.google-analytics.com',
	];

	const trustedImages = [
		'https://res.cloudinary.com',
		'https://www.gstatic.com',
		'https://www.google.com',
		'https://www.google-analytics.com',
		'https://ssl.gstatic.com',
		'https://www.googletagmanager.com',
	];

	const trustedConnect = [
		'https://res.cloudinary.com',
		'https://www.google.com',
		'https://www.recaptcha.net',
		'https://www.gstatic.com',
		'https://www.google-analytics.com',
		'https://analytics.google.com',
		'https://www.googletagmanager.com',
		'https://region1.google-analytics.com',
		'https://region2.google-analytics.com',
		'https://region1.analytics.google.com',
		'https://cloudflareinsights.com',
		'https://universe-static.elfsightcdn.com',
	];

	const trustedFrames = ['https://www.google.com', 'https://www.recaptcha.net'];

	const trustedStyles = ['https://fonts.googleapis.com'];
	const trustedFonts = ['https://fonts.gstatic.com'];

	response.headers.set('Content-Security-Policy', [].join(' '));

	// Encabezados de seguridad
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
