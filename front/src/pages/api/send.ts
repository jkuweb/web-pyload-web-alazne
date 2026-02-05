import type { APIRoute } from 'astro';
import { handleContactForm } from '@/lib/email/handleContactForm';
import { Resend } from 'resend';

const resend = new Resend(import.meta.env.RESEND_API_KEY);

export const POST: APIRoute = async ({ request }) => {
	try {
		const formData = await request.formData();

		// Convertimos todos los campos a string
		const input = {
			username: formData.get('username')?.toString() || '',
			email: formData.get('email')?.toString() || '',
			select: formData.get('select')?.toString() || '',
			message: formData.get('message')?.toString() || '',
			termsAccepted: formData.get('termsAccepted')?.toString() as 'on',
			lang: formData.get('lang')?.toString() || 'es',
			csrf_token: formData.get('csrf_token')?.toString() || '',
		};

		// Validar reCAPTCHA si lo deseas aquí
		const recaptchaToken = formData.get('recaptcha')?.toString();
		if (!recaptchaToken) {
			return new Response(
				JSON.stringify({ success: false, error: 'Falta token reCAPTCHA' }),
				{ status: 400 },
			);
		}

		// Fake cookies, necesario para TypeScript pero no usado en Netlify
		const fakeCookies = {
			get: (_key: string) => undefined,
			set: (_key: string, _value: string, _options?: any) => {},
			delete: (_key: string, _options?: any) => {},
		};

		// Llamamos a la función que envía emails
		const result = await handleContactForm(input, fakeCookies, resend);

		return new Response(JSON.stringify(result), {
			status: result.success ? 200 : 500,
		});
	} catch (err) {
		return new Response(
			JSON.stringify({ success: false, error: (err as Error).message }),
			{ status: 500 },
		);
	}
};
