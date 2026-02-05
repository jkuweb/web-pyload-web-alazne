import type { MiddlewareHandler } from 'astro';

export const onRequest: MiddlewareHandler = async (context, next) => {
	const response = await next();

	// Dominios confiables
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
		"'self'",
		'https://api.aitamasleepcoaching.com', // tu API
		'https://res.cloudinary.com',
		'https://www.google.com',
		'https://www.recaptcha.net',
		'https://www.gstatic.com',
		'https://www.google-analytics.com',
		'https://analytics.google.com',
		'https://www.googletagmanager.com',
		'https://region1.google-analytics.com',
		'https://region2.google-analytics.com',
		'https://cloudflareinsights.com',
		'https://universe-static.elfsightcdn.com',
	];

	const trustedFrames = ['https://www.google.com', 'https://www.recaptcha.net'];
	const trustedStyles = ['https://fonts.googleapis.com'];
	const trustedFonts = ['https://fonts.gstatic.com'];

	// Detectar Googlebot para permitir rastreo sin CSP bloqueante
	const userAgent = context.request.headers.get('user-agent') || '';
	const isGoogleBot = /Googlebot/i.test(userAgent);

	// CSP principal
	const cspDirectives = [
		`default-src 'self';`,
		`img-src 'self' data: blob: ${trustedImages.join(' ')};`,
		`font-src 'self' data: ${trustedFonts.join(' ')};`,
		`connect-src ${trustedConnect.join(' ')};`,
		`frame-src 'self' ${trustedFrames.join(' ')};`,
		`frame-ancestors 'self';`,
		`script-src 'self' 'unsafe-inline' 'unsafe-eval' ${trustedScripts.join(' ')};`,
		`script-src-elem 'self' 'unsafe-inline' ${trustedScripts.join(' ')};`,
		`style-src 'self' 'unsafe-inline' ${trustedStyles.join(' ')};`,
		`style-src-elem 'self' 'unsafe-inline' ${trustedStyles.join(' ')};`,
		`object-src 'none';`,
		`base-uri 'self';`,
		`form-action 'self';`,
		`upgrade-insecure-requests;`,
	];

	// Si es Googlebot, relajar restricciones de script para rastreo
	if (isGoogleBot) {
		const relaxScripts = "'unsafe-inline' 'unsafe-eval'";
		cspDirectives.push(`script-src ${relaxScripts};`);
		cspDirectives.push(`script-src-elem ${relaxScripts};`);
	}

	response.headers.set('Content-Security-Policy', cspDirectives.join(' '));

	// Encabezados de seguridad adicionales
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
