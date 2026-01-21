import type { MiddlewareHandler } from 'astro';

export const onRequest: MiddlewareHandler = async (context, next) => {
	const response = await next();

	response.headers.set(
		'Content-Security-Policy',
		[
			"default-src 'self';",
			"script-src 'self' https://www.google.com https://www.gstatic.com https://www.recaptcha.net https://www.googletagmanager.com https://static.cloudflareinsights.com 'unsafe-inline';",
			"style-src 'self' 'unsafe-inline';",
			"img-src 'self' https://res.cloudinary.com https://www.gstatic.com https://www.google.com https://www.google-analytics.com data:;",
			"font-src 'self';",
			"connect-src 'self' https://www.google.com https://www.recaptcha.net https://www.gstatic.com https://www.google-analytics.com https://cloudflareinsights.com https://static.cloudflareinsights.com;",
			'frame-src https://www.google.com https://www.recaptcha.net https://aitamasleepcoaching.com/~partytown/;',
			"object-src 'none';",
		].join(' '),
	);

	response.headers.set('X-Frame-Options', 'DENY');
	response.headers.set('X-XSS-Protection', '1; mode=block');
	response.headers.set('X-Content-Type-Options', 'nosniff');
	response.headers.set('Referrer-Policy', 'strict-origin-when-cross-origin');
	response.headers.set(
		'Strict-Transport-Security',
		'max-age=63072000; includeSubDomains; preload',
	);

	return response;
};
