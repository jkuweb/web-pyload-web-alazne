import {
	getClientEmailTemplate,
	getContactEmailTemplate,
} from '@/email-templates';
import type { AstroCookies } from 'astro';
import type { Resend } from 'resend';

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
	const csrfFromCookie = cookies.get('csrf_token')?.value;
	if (!csrfFromCookie || csrf_token !== csrfFromCookie) {
		return {
			success: false,
			error: 'Token CSRF inválido',
		};
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
			from: 'Alazne <contacto@aitamasleepcoaching.com>',
			to: ['valverdealazne@gmail.com'],
			subject: select,
			html: contactHtml,
			text: `Nuevo mensaje de la web Usuario: ${username}, email: ${email}, asunto: ${select}, mensaje: ${message}`,
		});

		await resendClient.emails.send({
			from: 'Alazne <contacto@aitamasleepcoaching.com>',
			to: [email],
			subject: select,
			html: clientHtml,
		});

		return {
			success: true,
			redirect: `/${lang}/?sent=true`,
		};
	} catch (error) {
		return {
			success: false,
			error: `Error al enviar el correo. ${error}`,
		};
	}
}
