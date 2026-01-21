import type { MiddlewareHandler } from 'astro';

export const onRequest: MiddlewareHandler = async (context, next) => {
	const response = await next();

	// Detectar si estamos en desarrollo
	const isDev = import.meta.env.DEV;

	// Frame sources base
	const frameSrc = [
		'https://www.google.com',
		'https://www.recaptcha.net',
		'https://aitamasleepcoaching.com/~partytown/',
	];

	// Añadir localhost en desarrollo para Partytown
	if (isDev) {
		frameSrc.push('http://localhost:*');
	}

	// Content Security Policy
	response.headers.set(
		'Content-Security-Policy',
		[
			"default-src 'self';",
			"script-src 'self' https://www.google.com https://www.gstatic.com https://www.recaptcha.net https://www.googletagmanager.com https://static.cloudflareinsights.com 'unsafe-inline';",
			"style-src 'self' 'unsafe-inline';",
			"img-src 'self' https://res.cloudinary.com https://www.gstatic.com https://www.google.com https://www.google-analytics.com data:;",
			"font-src 'self';",
			"connect-src 'self' https://www.google.com https://www.recaptcha.net https://www.gstatic.com https://www.google-analytics.com https://cloudflareinsights.com https://static.cloudflareinsights.com;",
			`frame-src ${frameSrc.join(' ')};`,
			"object-src 'none';",
		].join(' '),
	);

	// Security Headers
	response.headers.set('X-Frame-Options', 'DENY');
	response.headers.set('X-XSS-Protection', '1; mode=block');
	response.headers.set('X-Content-Type-Options', 'nosniff');
	response.headers.set('Referrer-Policy', 'strict-origin-when-cross-origin');
	response.headers.set(
		'Strict-Transport-Security',
		'max-age=63072000; includeSubDomains; preload',
	);

	// Early Hints para fuentes (HTTP/2 Server Push)
	response.headers.set(
		'Link',
		[
			'</fonts/montserrat/montserrat-v25-latin-regular.woff2>; rel=preload; as=font; type=font/woff2; crossorigin',
			'</fonts/montserrat/montserrat-v25-latin-700.woff2>; rel=preload; as=font; type=font/woff2; crossorigin',
			'</fonts/silk_font/silk_serif_regular-webfont.woff2>; rel=preload; as=font; type=font/woff2; crossorigin',
		].join(', '),
	);

	// Cache Headers basado en tipo de recurso
	const url = new URL(context.request.url);
	const pathname = url.pathname;

	// Cache agresivo para assets estáticos (JS, CSS, fonts, imágenes)
	if (
		pathname.match(/\.(js|css|woff2?|ttf|eot|svg|jpg|jpeg|png|webp|gif|ico)$/)
	) {
		response.headers.set(
			'Cache-Control',
			'public, max-age=31536000, immutable',
		);
	}
	// Cache específico para fuentes
	else if (pathname.includes('/fonts/')) {
		response.headers.set(
			'Cache-Control',
			'public, max-age=31536000, immutable',
		);
	}
	// Cache moderado para HTML
	else if (pathname.endsWith('/') || pathname.endsWith('.html')) {
		response.headers.set(
			'Cache-Control',
			'public, max-age=3600, must-revalidate',
		);
	}
	// Cache para assets de Astro (_astro/)
	else if (pathname.includes('/_astro/')) {
		response.headers.set(
			'Cache-Control',
			'public, max-age=31536000, immutable',
		);
	}

	return response;
};
