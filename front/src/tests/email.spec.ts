import { handleContactForm } from '@/lib/email/handleContactForm';
import type { AstroCookies } from 'astro';
import type {
	CreateEmailOptions,
	CreateEmailRequestOptions,
	CreateEmailResponse,
	Resend,
} from 'resend';
import { describe, it, expect } from 'vitest';
import { vi } from 'vitest';

type MockResendSend = typeof vi.fn & {
	mockResolvedValue: (value: CreateEmailResponse) => void;
	mockResolvedValueOnce: (value: CreateEmailResponse) => void;
	mockRejectedValue: (error: Error) => void;
	mockRejectedValueOnce: (error: Error) => void;
} & ((
		payload: CreateEmailOptions,
		options?: CreateEmailRequestOptions,
	) => Promise<CreateEmailResponse>);

const baseInput = {
	username: 'Ana',
	email: 'ana@example.com',
	select: 'Consultas',
	message: 'Hola, quiero más información.',
	termsAccepted: 'on',
	csrf_token: 'token123',
	lang: 'es',
};

// Mock completo de AstroCookies
const createMockCookies = (token = 'token123'): AstroCookies =>
	({
		get: (key: string) => ({ value: token }),
		set: vi.fn(),
		delete: vi.fn(),
		has: vi.fn(),
		merge: vi.fn(),
		headers: new Headers(),
		[Symbol.iterator]: function* () {
			yield ['csrf_token', { value: token }];
		},
	}) as unknown as AstroCookies;

const createMockResend = () => {
	// Creamos el mock con el tipo extendido
	const mockSend = vi.fn() as MockResendSend;

	return {
		emails: {
			send: mockSend,
			create: vi.fn(),
			get: vi.fn(),
			update: vi.fn(),
			cancel: vi.fn(),
		},
		headers: new Headers(),
		apiKeys: {},
		audiences: {},
		batch: {},
		contacts: {},
		domains: {},
		events: {},
		messages: {},
		webhooks: {},
	} as unknown as Resend;
};

describe('handleContactForm', () => {
	it('✅ Envía correctamente el email', async () => {
		const mockResend = createMockResend();
		// Ahora TypeScript reconoce los métodos de mock
		mockResend.emails.send
			.mockResolvedValueOnce({ id: 'fake-id-1' })
			.mockResolvedValueOnce({ id: 'fake-id-2' });

		const cookies = createMockCookies();
		const result = await handleContactForm(baseInput, cookies, mockResend);

		expect(result.success).toBe(true);
		expect(mockResend.emails.send).toHaveBeenCalledTimes(2);
	});

	it('❌ Falla si el token CSRF no coincide', async () => {
		const cookies = createMockCookies('otroToken');
		const mockResend = createMockResend();

		const result = await handleContactForm(baseInput, cookies, mockResend);

		expect(result.success).toBe(false);
		expect(result.error).toBe('Token CSRF inválido');
	});

	it('❌ Falla si ocurre un error en el envío del correo', async () => {
		const mockResend = createMockResend();
		mockResend.emails.send.mockRejectedValue(new Error('SMTP error'));

		const cookies = createMockCookies();

		const result = await handleContactForm(baseInput, cookies, mockResend);

		expect(result.success).toBe(false);
		expect(result.error).toBe('Error al enviar el correo. Error: SMTP error');
	});
});

describe('handleContactForm with bounced@resend.dev', () => {
	const bouncedInput = {
		...baseInput,
		email: 'bounced@resend.dev',
	};

	it('❌ Falla si el correo al cliente hace bounce', async () => {
		const mockResend = createMockResend();
		mockResend.emails.send
			.mockResolvedValueOnce({ id: 'abc123' })
			.mockRejectedValueOnce(new Error('Bounce error'));

		const cookies = createMockCookies();

		const result = await handleContactForm(bouncedInput, cookies, mockResend);

		expect(mockResend.emails.send).toHaveBeenCalledTimes(2);
		expect(result.success).toBe(false);
		expect(result.error).toBe('Error al enviar el correo. Error: Bounce error');
	});

	it('❌ Falla si el correo es una queja (complaint)', async () => {
		const mockResend = createMockResend();
		mockResend.emails.send
			.mockResolvedValueOnce({ id: 'admin-email-id' })
			.mockRejectedValueOnce(new Error('Complaint: user marked as spam'));

		const cookies = createMockCookies();

		const result = await handleContactForm(bouncedInput, cookies, mockResend);

		expect(result.success).toBe(false);
		expect(result.error).toBe(
			'Error al enviar el correo. Error: Complaint: user marked as spam',
		);
		expect(mockResend.emails.send).toHaveBeenCalledTimes(2);
	});
});
