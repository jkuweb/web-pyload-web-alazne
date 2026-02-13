declare global {
	interface Window {
		serviceFormSend: (e: Event) => boolean;
		onCaptchaPassed: (token: string) => void;
	}
}
