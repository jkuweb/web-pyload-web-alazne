import { defineConfig } from 'astro/config';
import netlify from '@astrojs/netlify';
import sitemap from '@astrojs/sitemap';
import compress from 'astro-compress';
import partytown from '@astrojs/partytown';
import { imageService } from '@unpic/astro/service';
import path from 'path';

export default defineConfig({
	// site: 'https://aitamasleepcoaching.com',
	site: 'http://localhost:4321',
	output: 'server',
	adapter: netlify(),

	i18n: {
		defaultLocale: 'es',
		locales: ['es', 'eu'],
		routing: {
			prefixDefaultLocale: true,
		},
	},

	integrations: [
		partytown({
			config: {
				forward: ['dataLayer.push', 'gtag'],
			},
		}),

		sitemap({
			canonicalURL: 'https://aitamasleepcoaching.com',
			i18n: {
				defaultLocale: 'es',
				locales: {
					es: 'es-ES',
					eu: 'eu-ES',
				},
			},
			filter: (page) =>
				!page.includes('/admin') &&
				!page.includes('/api') &&
				!page.includes('/_'),
		}),
		compress({
			CSS: true,
			HTML: {
				removeAttributeQuotes: false,
				collapseWhitespace: true,
				removeComments: true,
			},
			JavaScript: true,
			SVG: true,
		}),
	],

	image: {
		service: imageService({
			placeholder: 'blurhash',
			fallbackService: 'cloudinary',
		}),
	},

	build: {
		inlineStylesheets: 'always',
		assets: '_astro',
	},

	vite: {
		resolve: {
			alias: {
				'@': path.resolve('./src'),
			},
		},
		optimizeDeps: {
			include: ['@unpic/astro'],
		},
	},
});
