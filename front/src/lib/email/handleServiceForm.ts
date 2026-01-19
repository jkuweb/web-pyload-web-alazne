import { getServiceClientEmailTemplate } from '@/email-templates/service-client-email';
import { getServiceContactEmailTemplate } from '@/email-templates/service-contact-email';
import type { AstroCookies } from 'astro';
import type { Resend } from 'resend';

export interface ContactFormInput {
	serviceUsername: string;
	telephone: string;
	serviceEmail: string;
	service: string;
	lang: string;
	csrf_token: string;
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
	} = input;
	const csrfFromCookie = cookies.get('csrf_token')?.value;
	if (!csrfFromCookie || csrf_token !== csrfFromCookie) {
		return {
			success: false,
			error: 'Token CSRF inválido',
		};
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
			from: 'Alazne <contacto@aitamasleepcoaching.com>',
			to: ['valverdealazne@gmail.com'],
			subject: service,
			html: clientHtml,
			text: `Nuevo mensaje de la web Usuario: ${serviceUsername}, email: ${serviceEmail}, servicio: ${service}`,
		});

		await resendClient.emails.send({
			from: 'Alazne <contacto@aitamasleepcoaching.com>',
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
