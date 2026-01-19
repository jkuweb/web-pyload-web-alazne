import { defineConfig } from 'astro/config';
import { imageService } from '@unpic/astro/service';
import sitemap from '@astrojs/sitemap';
import compress from 'astro-compress';
import path from 'path';

import netlify from '@astrojs/netlify';

export default defineConfig({
	// site: 'https://aitamasleepcoaching.com',
	integrations: [
		sitemap({
			i18n: {
				defaultLocale: 'es',
				locales: {
					es: 'es-ES',
					eu: 'eu-ES',
				},
			},
			customPages: [
				'https://aitamasleepcoaching.com/es',
				'https://aitamasleepcoaching.com/es/about',
				'https://aitamasleepcoaching.com/es/services',
				'https://aitamasleepcoaching.com/es/contact',
				'https://aitamasleepcoaching.com/eu',
				'https://aitamasleepcoaching.com/eu/about',
				'https://aitamasleepcoaching.com/eu/services',
				'https://aitamasleepcoaching.com/eu/contact',
			],
		}),
	],
	image: {
		service: imageService({
			placeholder: 'blurhash',
			fallbackService: 'cloudinary',
		}),
	},
	build: {
		inlineStylesheets: 'auto', // Inline CSS crítico automáticamente
		assets: '_astro', // Carpeta para assets
	},
	vite: {
		build: {
			cssCodeSplit: true, // Split CSS por página
			rollupOptions: {
				output: {
					manualChunks: {
						// Separar vendor chunks grandes
						glider: ['glider-js'],
					},
				},
			},
		},
	},
	integrations: [
		sitemap({
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
			changefreq: 'weekly',
			priority: 0.7,
			lastmod: new Date(),
			customPages: [
				'https://aitamasleepcoaching.com/',
				'https://aitamasleepcoaching.com/about',
				'https://aitamasleepcoaching.com/services',
				'https://aitamasleepcoaching.com/contact',
				'https://aitamasleepcoaching.com/eu',
				'https://aitamasleepcoaching.com/eu/about',
				'https://aitamasleepcoaching.com/eu/services',
				'https://aitamasleepcoaching.com/eu/contact',
			],
		}),
		// Opcional: Compresión de assets
		compress({
			CSS: true,
			HTML: {
				removeAttributeQuotes: false,
				collapseWhitespace: true,
				removeComments: true,
			},
			Image: false, // Cloudinary ya optimiza
			JavaScript: true,
			SVG: true,
		}),
	],
	i18n: {
		defaultLocale: 'es',
		locales: ['es', 'eu'],
		routing: {
			prefixDefaultLocale: true,
		},
	},
	vite: {
		optimizeDeps: {
			include: ['@unpic/astro'],
		},
		resolve: {
			alias: {
				'@': path.resolve('./src'),
			},
		},
	},
	adapter: netlify(),
	output: 'static',
});
