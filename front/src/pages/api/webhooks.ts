import type { APIRoute } from 'astro';
import { Webhook } from 'svix';
import { Resend } from 'resend';

const resend = new Resend(import.meta.env.RESEND_API_KEY);

export const POST: APIRoute = async ({ request }) => {
	const payload = await request.text();

	const headers = {
		'svix-id': request.headers.get('svix-id') ?? '',
		'svix-timestamp': request.headers.get('svix-timestamp') ?? '',
		'svix-signature': request.headers.get('svix-signature') ?? '',
	};

	const secret = import.meta.env.RESEND_WEBHOOK_SECRET;

	let event;
	if (secret) {
		const wh = new Webhook(secret);
		try {
			event = wh.verify(payload, headers);
		} catch (err) {
			console.error('Webhook verification failed', err);

			return new Response('Invalid signature', { status: 400 });
		}
	} else {
		event = JSON.parse(payload);
	}

	if (
		['email.bounced', 'email.complained', 'email.delivery_delayed'].includes(
			event.type,
		)
	) {
		try {
			await resend.emails.send({
				from: 'Alazne <contacto@aitamasleepcoaching.com>',
				to: ['josebaquerejetawork@gmail.com'],
				subject: `Email Event Alert: ${event.type}`,
				html: `
          <h2>Email Event Notification</h2>
          <p><strong>Event:</strong> ${event.type}</p>
          <p><strong>Email:</strong> ${event.data.to}</p>
          <p><strong>Time:</strong> ${event.created_at}</p>
          <pre>${JSON.stringify(event.data, null, 2)}</pre>
        `,
				tags: [{ name: 'category', value: 'webhook_alert' }],
			});
		} catch (err) {
			console.error('Email send failed', err);

			return new Response('Failed to send email', { status: 500 });
		}
	}

	return new Response('OK', { status: 200 });
};
