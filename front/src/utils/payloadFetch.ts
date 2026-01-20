const PAYLOAD_URL =
	import.meta.env.PAYLOAD_URL || 'https://api.aitamasleepcoaching.com';
const SITE_URL = 'https://aitamasleepcoaching.com';

export function getCanonicalUrl(path: string, locale: 'es' | 'eu'): string {
	const cleanPath = path.startsWith('/') ? path : `/${path}`;

	if (locale === 'es') {
		return cleanPath === '/' ? SITE_URL : `${SITE_URL}${cleanPath}`;
	}

	return cleanPath === '/' ? `${SITE_URL}/eu` : `${SITE_URL}/eu${cleanPath}`;
}

export function getAlternateUrls(path: string): { es: string; eu: string } {
	const cleanPath = path.startsWith('/') ? path : `/${path}`;

	return {
		es: cleanPath === '/' ? SITE_URL : `${SITE_URL}${cleanPath}`,
		eu: cleanPath === '/' ? `${SITE_URL}/eu` : `${SITE_URL}/eu${cleanPath}`,
	};
}

export async function getPageBySlug(slug: string, locale: 'es' | 'eu') {
	try {
		const response = await fetch(
			`${PAYLOAD_URL}/api/pages?where[slug][equals]=${slug}&where[_status][equals]=published&locale=${locale}&limit=1&depth=2`,

			{
				cache: 'no-store',
			},
		);

		if (!response.ok) {
			throw new Error(`Failed to fetch page: ${response.statusText}`);
		}

		const data = await response.json();
		return data.docs[0] || null;
	} catch (error) {
		console.error(`Error fetching page ${slug} (${locale}):`, error);
		return null;
	}
}
