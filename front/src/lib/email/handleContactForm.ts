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
}

export async function handleContactForm(
	input: ContactFormInput,
	cookies: AstroCookies,
	resendClient: Resend,
) {
	const { username, email, message, select, lang, csrf_token } = input;

	// Validar CSRF
	const csrfFromCookie = cookies.get('csrf_token')?.value;
	if (!csrfFromCookie || csrf_token !== csrfFromCookie) {
		throw new ActionError({
			code: 'FORBIDDEN',
			message: 'Token CSRF inválido',
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
		// Enviar email al administrador
		await resendClient.emails.send({
			from: 'Alazne <contacto@aitamasleepcoaching.com>',
			to: ['valverdealazne@gmail.com'],
			subject: select,
			html: contactHtml,
			text: `Nuevo mensaje de la web Usuario: ${username}, email: ${email}, asunto: ${select}, mensaje: ${message}`,
		});

		// Enviar email de confirmación al cliente
		await resendClient.emails.send({
			from: 'Alazne <contacto@aitamasleepcoaching.com>',
			to: [email],
			subject: select,
			html: clientHtml,
		});

		// Retornar objeto con redirect
		return {
			success: true,
			redirect: `/${lang}/?sent=true`,
		};
	} catch (error) {
		console.error('Error al enviar email:', error);
		throw new ActionError({
			code: 'INTERNAL_SERVER_ERROR',
			message: 'Error al enviar el correo',
		});
	}
}
