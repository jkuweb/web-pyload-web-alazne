import { handleContactForm } from '@/lib/email/handleContactForm';
import { handleServiceForm } from '@/lib/email/handleServiceForm';
import { z } from 'astro/zod';
import { defineAction } from 'astro:actions';
import { Resend } from 'resend';

const resend = new Resend(import.meta.env.RESEND_API_KEY);

const schemaContactFormSchema = z.object({
	username: z
		.string()
		.min(2, { message: 'El nombre debe de tener al menos 2 caracteres' }),
	email: z.string().email({ message: 'Invalid email address' }),
	select: z.enum([
		'Plan de sueño personalizado con seguimiento',
		'Plan a vuestro ritmo',
		'Consultas',
		'Encuentros grupales',
		'Plan de sueño conmigo pero a tu ritmo',
	]),

	message: z.string().min(10, {
		message: 'El mensaje debe de tener al menos 10 caracteres',
	}),
	termsAccepted: z.literal('on'),
	lang: z.string().max(2).optional().default('es'),
	csrf_token: z.string(),
	cfTurnstileToken: z.string(),
});
const schemaServiceFormSchema = z.object({
	serviceUsername: z
		.string()
		.min(2, { message: 'El nombre debe de tener al menos 2 caracteres' })
		.max(100, { message: 'Error en el campor username' }),
	telephone: z.string().regex(/^(6|7|8|9)\d{8}$/, {
		message: 'Introduce un número de teléfono español válido',
	}),
	serviceEmail: z.string().email({ message: 'Invalid email address' }),
	termsAccepted: z.literal('on'),
	service: z.string().min(2),
	lang: z.string().max(2).optional().default('es'),
	csrf_token: z.string(),
	cfTurnstileToken: z.string(),
});
export const server = {
	send: defineAction({
		accept: 'form',
		input: schemaContactFormSchema,
		handler: async (input, { cookies }) => {
			return await handleContactForm(input, cookies, resend);
		},
	}),
	sendContactEmail: defineAction({
		accept: 'form',
		input: schemaServiceFormSchema,
		handler: async (input, { cookies }) => {
			return await handleServiceForm(input, cookies, resend);
		},
	}),
};
