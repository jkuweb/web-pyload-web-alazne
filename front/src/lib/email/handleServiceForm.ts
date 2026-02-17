import { getServiceClientEmailTemplate } from '@/email-templates/service-client-email';
import { getServiceContactEmailTemplate } from '@/email-templates/service-contact-email';
import type { AstroCookies } from 'astro';
import { ActionError } from 'astro:actions';
import type { Resend } from 'resend';

export interface ContactFormInput {
	serviceUsername: string;
	telephone: string;
	serviceEmail: string;
	service: string;
	lang: string;
	csrf_token: string;
	cfTurnstileToken: string;
	company?: string;
}
export async function handleServiceForm(
	input: ContactFormInput,
	cookies: AstroCookies,
	resendClient: Resend,
) {
	const {
		serviceUsername,
		telephone,
		serviceEmail,
		service,
		lang,
		csrf_token,
		cfTurnstileToken,
	} = input;
	const csrfFromCookie = cookies.get('csrf_token')?.value;
	if (!csrfFromCookie || csrf_token !== csrfFromCookie) {
		return {
			success: false,
			error: 'Token CSRF inválido',
		};
	}
	// Validar Turnstile
	const verifyResponse = await fetch(
		'https://challenges.cloudflare.com/turnstile/v0/siteverify',
		{
			method: 'POST',
			headers: {
				'Content-Type': 'application/x-www-form-urlencoded',
			},
			body: new URLSearchParams({
				secret: import.meta.env.TURNSTILE_SECRET_KEY,
				response: cfTurnstileToken,
			}),
		},
	);

	const verifyResult = await verifyResponse.json();

	if (!verifyResult.success) {
		throw new ActionError({
			code: 'FORBIDDEN',
			message: 'Verificación anti-spam fallida',
		});
	}

	if (service.includes('http')) {
		throw new ActionError({
			code: 'BAD_REQUEST',
			message: 'Contenido sospechoso',
		});
	}

	if (/casino|crypto|loan|seo/i.test(service)) {
		throw new ActionError({
			code: 'BAD_REQUEST',
			message: 'Contenido sospechoso',
		});
	}

	if (input.company) {
		throw new ActionError({
			code: 'FORBIDDEN',
			message: 'Bot detectado',
		});
	}

	const contactHtml = getServiceClientEmailTemplate({
		serviceUsername,
		service,
		lang,
	});

	const clientHtml = getServiceContactEmailTemplate({
		serviceUsername,
		service,
		telephone,
		serviceEmail,
		lang,
	});

	try {
		await resendClient.emails.send({
			from: 'Alazne <aitama@aitamasleepcoaching.com>',
			to: ['aitama@aitamasleepcoaching'],
			replyTo: serviceEmail,
			subject: service,
			html: clientHtml,
			text: `Nuevo mensaje de la web Usuario: ${serviceUsername}, email: ${serviceEmail}, servicio: ${service}`,
		});

		await resendClient.emails.send({
			from: 'Alazne <aitama@aitamasleepcoaching.com>',
			to: [serviceEmail],
			subject: service,
			html: contactHtml,
		});

		return {
			success: true,
			redirect: `/${lang}/?sent=true`,
		};
	} catch (error) {
		return {
			success: false,
			error: `Error al enviar el correo ${error}`,
		};
	}
}
