import { defineConfig } from 'astro/config';
import { imageService } from '@unpic/astro/service';
import sitemap from '@astrojs/sitemap';
import compress from 'astro-compress';
import path from 'path';
import partytown from '@astrojs/partytown';
import netlify from '@astrojs/netlify';

export default defineConfig({
	site: 'https://aitamasleepcoaching.com',

	output: 'server',
	adapter: netlify(),

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
		}),

		partytown({
			config: {
				forward: ['dataLayer.push'],
			},
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
			prefixDefaultLocale: false, // 🔑 evita loop de redirecciones
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
		resolve: {
			alias: {
				'@': path.resolve('./src'),
			},
		},
	},
});
