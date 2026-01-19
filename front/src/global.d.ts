declare global {
	interface Window {
		loadRecaptcha: () => void;
		serviceFormSend: (e: Event) => boolean;
		onCaptchaPassed: (token: string) => void;
		recaptchaReady?: boolean;
		recaptchaCargado?: boolean;
		grecaptcha?: {
			ready: (callback: () => void) => void;
			execute: (
				siteKey: string,
				options: { action: string },
			) => Promise<string>;
		};
	}
}
