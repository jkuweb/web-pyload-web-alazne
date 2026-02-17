import {
	getClientEmailTemplate,
	getContactEmailTemplate,
} from '@/email-templates';
import type { AstroCookies } from 'astro';
import type { Resend } from 'resend';
import { ActionError } from 'astro:actions';

export interface ContactFormInput {
	username: string;
	email: string;
	message: string;
	select: string;
	lang: string;
	csrf_token: string;
	cfTurnstileToken: string;
	company?: string;
}

export async function handleContactForm(
	input: ContactFormInput,
	cookies: AstroCookies,
	resendClient: Resend,
) {
	const {
		username,
		email,
		message,
		select,
		lang,
		csrf_token,
		cfTurnstileToken,
	} = input;

	// Validar CSRF
	const csrfFromCookie = cookies.get('csrf_token')?.value;
	if (!csrfFromCookie || csrf_token !== csrfFromCookie) {
		throw new ActionError({
			code: 'FORBIDDEN',
			message: 'Token CSRF inválido',
		});
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

	if (message.includes('http')) {
		throw new ActionError({
			code: 'BAD_REQUEST',
			message: 'Contenido sospechoso',
		});
	}

	if (/casino|crypto|loan|seo/i.test(message)) {
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

	const contactHtml = getContactEmailTemplate({
		username,
		email,
		select,
		message,
		lang,
	});

	const clientHtml = getClientEmailTemplate({
		username,
		lang,
	});

	try {
		await resendClient.emails.send({
			from: 'Alazne <aitama@aitamasleepcoaching.com>',
			to: ['valverdealazne@gmail.com'],
			subject: select,
			html: contactHtml,
			text: `Nuevo mensaje de la web Usuario: ${username}, email: ${email}, asunto: ${select}, mensaje: ${message}`,
		});

		await resendClient.emails.send({
			from: 'Alazne <aitama@aitamasleepcoaching.com>',
			to: [email],
			subject: select,
			html: clientHtml,
		});

		return {
			success: true,
			redirect: `/${lang}/?sent=true`,
		};
	} catch (error) {
		throw new ActionError({
			code: 'INTERNAL_SERVER_ERROR',
			message: 'Error al enviar el correo',
		});
	}
}
