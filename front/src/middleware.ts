// src/middleware.ts
import type { MiddlewareHandler } from 'astro';

export const onRequest: MiddlewareHandler = async (context, next) => {
	const response = await next();

	response.headers.set(
		'Content-Security-Policy',
		[
			"default-src 'self';",

			// Scripts locales, Ahrefs, Google reCAPTCHA
			"script-src 'self' https://analytics.ahrefs.com https://www.google.com https://www.gstatic.com https://www.recaptcha.net 'unsafe-inline';",

			// Estilos (permite inline por compatibilidad)
			"style-src 'self' 'unsafe-inline';",

			// Imágenes locales, Cloudinary, Google
			"img-src 'self' https://res.cloudinary.com https://www.gstatic.com https://www.google.com data:;",

			// Fuentes locales
			"font-src 'self';",

			// Conexiones externas (API, reCAPTCHA, Ahrefs)
			"connect-src 'self' https://www.google.com https://www.recaptcha.net https://www.gstatic.com https://analytics.ahrefs.com;",

			// iframes de reCAPTCHA
			'frame-src https://www.google.com https://www.recaptcha.net;',

			// Opcional: bloquear objetos
			"object-src 'none';",
		].join(' '),
	);

	// Otros headers de seguridad
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
