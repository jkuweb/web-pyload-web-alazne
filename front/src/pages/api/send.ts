import type { APIRoute } from 'astro';
import { handleContactForm } from '@/lib/email/handleContactForm';
import { Resend } from 'resend';

const resend = new Resend(import.meta.env.RESEND_API_KEY);

// Cookies fake para TypeScript
const fakeCookies = {
	get: (_key: string) => undefined,
	set: (_key: string, _value: string, _options?: any) => {},
	delete: (_key: string, _options?: any) => {},
};

export const POST: APIRoute = async ({ request }) => {
	try {
		const formData = await request.formData();

		const input = {
			username: formData.get('username')?.toString() || '',
			email: formData.get('email')?.toString() || '',
			select: formData.get('select')?.toString() || '',
			message: formData.get('message')?.toString() || '',
			termsAccepted: formData.get('termsAccepted')?.toString() as 'on',
			lang: formData.get('lang')?.toString() || 'es',
			csrf_token: formData.get('csrf_token')?.toString() || '',
		};

		const result = await handleContactForm(input, fakeCookies, resend);

		return new Response(JSON.stringify({ success: true, result }), {
			status: 200,
		});
	} catch (err) {
		console.error('Error sending email:', err);

		return new Response(
			JSON.stringify({ success: false, error: (err as Error).message }),
			{
				status: 500,
			},
		);
	}
};
