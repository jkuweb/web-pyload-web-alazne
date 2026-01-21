import { defineConfig } from 'astro/config';
import { imageService } from '@unpic/astro/service';
import sitemap from '@astrojs/sitemap';
import compress from 'astro-compress';
import path from 'path';
import partytown from '@astrojs/partytown';
import netlify from '@astrojs/netlify';

export default defineConfig({
	site: 'https://aitamasleepcoaching.com',
	adapter: netlify(),
	output: 'server',

	integrations: [
		partytown({
			config: {
				forward: ['dataLayer.push'],
			},
		}),
		sitemap({
			i18n: {
				defaultLocale: 'es',
				locales: {
					es: 'es-ES',
					eu: 'eu-ES',
				},
				routing: {
					prefixDefaultLocale: false,
				},
			},
			filter: (page) =>
				!page.includes('/admin') &&
				!page.includes('/api') &&
				!page.includes('/_'),
			changefreq: 'weekly',
			priority: 0.7,
			lastmod: new Date(),
		}),
		compress({
			CSS: true,
			HTML: {
				removeAttributeQuotes: false,
				collapseWhitespace: true,
				removeComments: true,
			},
			Image: false,
			JavaScript: true,
			SVG: true,
		}),
	],

	i18n: {
		defaultLocale: 'es',
		locales: ['es', 'eu'],
		routing: {
			prefixDefaultLocale: false, // 👈 Cambia a false si no quieres /es/ en español
		},
	},

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
		optimizeDeps: {
			include: ['@unpic/astro'],
		},
		resolve: {
			alias: {
				'@': path.resolve('./src'),
			},
		},
		build: {
			cssCodeSplit: false,
			assetsInlineLimit: 10000,
			rollupOptions: {
				output: {
					manualChunks: {
						glider: ['glider-js'],
					},
				},
			},
		},
	},
});
