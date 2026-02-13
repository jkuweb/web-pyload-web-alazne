const PAYLOAD_URL =
	process.env.PAYLOAD_URL ||
	process.env.PUBLIC_PAYLOAD_URL ||
	'http://localhost:3000';

if (!PAYLOAD_URL) {
	process.exit(1);
}

try {
	new URL(PAYLOAD_URL);
} catch (error) {
	process.exit(1);
}

const PAGES = [
	{ slug: 'inicio', locale: 'es', path: '/', name: 'Inicio' },
	{ slug: 'sobre-mi', locale: 'es', path: '/about', name: 'Sobre mí' },
	{ slug: 'servicios', locale: 'es', path: '/services', name: 'Servicios' },
	{ slug: 'contacto', locale: 'es', path: '/contact', name: 'Contacto' },
	{ slug: 'sarrera', locale: 'eu', path: '/eu', name: 'Hasiera' },
	{ slug: 'niri-buruz', locale: 'eu', path: '/eu/about', name: 'Niri buruz' },
	{
		slug: 'zerbitzuak',
		locale: 'eu',
		path: '/eu/services',
		name: 'Zerbitzuak',
	},
	{ slug: 'kontaktua', locale: 'eu', path: '/eu/contact', name: 'Kontaktua' },
];

async function getPageBySlug(slug, locale) {
	try {
		const url = `${PAYLOAD_URL}/api/pages?where[slug][equals]=${slug}&locale=${locale}&limit=1&depth=2`;
		const response = await fetch(url);

		if (!response.ok) {
			throw new Error(`HTTP ${response.status}: ${response.statusText}`);
		}

		const data = await response.json();
		return data.docs?.[0] || null;
	} catch (error) {
		return null;
	}
}

async function testConnection() {
	try {
		const response = await fetch(`${PAYLOAD_URL}/api/pages?limit=1`);

		if (!response.ok) {
			return false;
		}

		const data = await response.json();
		return true;
	} catch (error) {
		return false;
	}
}

async function validateSEO() {
	const connected = await testConnection();
	if (!connected) {
		process.exit(1);
	}

	let hasErrors = false;
	let warnings = 0;
	let success = 0;
	const missingPages = [];
	const issuesFound = [];

	for (const { slug, locale, path, name } of PAGES) {
		const page = await getPageBySlug(slug, locale);

		if (!page) {
			missingPages.push({ name, slug, locale, path });
			hasErrors = true;
			console.log('');
			continue;
		}

		if (!page.meta?.title) {
			issuesFound.push(`${name} (${locale}): Falta meta title`);
			hasErrors = true;
		} else if (page.meta.title.length > 60) {
			warnings++;
		} else {
			success++;
		}

		if (!page.meta?.description) {
			issuesFound.push(`${name} (${locale}): Falta meta description`);
			hasErrors = true;
		} else if (page.meta.description.length > 160) {
			issuesFound.push(
				`${name} (${locale}): Description demasiado larga (${page.meta.description.length} chars)`,
			);
			warnings++;
		} else {
			success++;
		}

		if (!page.meta?.image) {
			warnings++;
		} else {
			success++;
		}
	}

	if (missingPages.length > 0) {
	}

	if (issuesFound.length > 0) {
		const titleIssues = issuesFound.filter(
			(i) => i.includes('Title') || i.includes('title'),
		);
		const descIssues = issuesFound.filter(
			(i) => i.includes('Description') || i.includes('description'),
		);

		if (titleIssues.length > 0) {
			titleIssues.forEach((issue) => console.log(`   • ${issue}`));
		}

		if (descIssues.length > 0) {
			descIssues.forEach((issue) => console.log(`   • ${issue}`));
		}
	}

	console.log('\n' + '='.repeat(70));

	if (hasErrors) {
		process.exit(1);
	} else if (warnings > 0) {
		process.exit(0);
	} else {
		process.exit(0);
	}
}

validateSEO().catch((error) => {
	process.exit(1);
});
