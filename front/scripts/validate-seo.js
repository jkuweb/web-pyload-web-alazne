const PAYLOAD_URL =
	process.env.PAYLOAD_URL ||
	process.env.PUBLIC_PAYLOAD_URL ||
	'http://localhost:3000';

// Validar que la URL esté configurada
if (!PAYLOAD_URL) {
	console.error('❌ Error: PAYLOAD_URL no está configurado');
	console.log('\n📝 Configura la variable de entorno PAYLOAD_URL:');
	console.log('   1. Crea un archivo .env en la raíz del proyecto');
	console.log('   2. Añade: PAYLOAD_URL=https://tu-payload-cms.com');
	console.log(
		'   3. O ejecuta: PAYLOAD_URL=http://localhost:3000 pnpm run validate-seo\n',
	);
	process.exit(1);
}

// Validar que la URL sea válida
try {
	new URL(PAYLOAD_URL);
} catch (error) {
	console.error(`❌ Error: PAYLOAD_URL no es una URL válida: "${PAYLOAD_URL}"`);
	console.log('   Debe empezar con http:// o https://');
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
		console.error(`   ⚠️  Error al conectar: ${error.message}`);
		return null;
	}
}

async function testConnection() {
	console.log('🔌 Probando conexión a Payload CMS...');
	console.log(`   URL: ${PAYLOAD_URL}\n`);

	try {
		const response = await fetch(`${PAYLOAD_URL}/api/pages?limit=1`);

		if (!response.ok) {
			console.error(`❌ Error de conexión: HTTP ${response.status}`);
			console.log('   Verifica que:');
			console.log('   - La URL sea correcta');
			console.log('   - El servidor esté en ejecución');
			console.log('   - El endpoint /api/pages esté disponible\n');
			return false;
		}

		const data = await response.json();
		console.log(`✅ Conexión exitosa`);
		console.log(`   Total de páginas: ${data.totalDocs || 0}\n`);
		return true;
	} catch (error) {
		console.error(`❌ No se pudo conectar a Payload CMS`);
		console.log(`   Error: ${error.message}`);
		console.log('\n   Verifica que:');
		console.log('   - La URL sea correcta en .env');
		console.log('   - El servidor de Payload esté en ejecución');
		console.log('   - No haya problemas de red/firewall\n');
		return false;
	}
}

async function validateSEO() {
	console.log('🔍 Validando SEO de todas las páginas...\n');

	// Primero probar la conexión
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
		console.log(`📄 ${name} (${locale})`);
		console.log(`   Ruta: ${path}`);

		const page = await getPageBySlug(slug, locale);

		if (!page) {
			console.error(`   ❌ Página no encontrada en Payload CMS`);
			missingPages.push({ name, slug, locale, path });
			hasErrors = true;
			console.log('');
			continue;
		}

		// Validar meta title
		if (!page.meta?.title) {
			console.error(`   ❌ Falta meta title`);
			issuesFound.push(`${name} (${locale}): Falta meta title`);
			hasErrors = true;
		} else if (page.meta.title.length > 60) {
			console.warn(
				`   ⚠️  Meta title muy largo: ${page.meta.title.length} caracteres (máx. 60)`,
			);
			console.warn(`       "${page.meta.title}"`);
			issuesFound.push(
				`${name} (${locale}): Title demasiado largo (${page.meta.title.length} chars)`,
			);
			warnings++;
		} else {
			console.log(`   ✅ Meta title: ${page.meta.title.length} caracteres`);
			success++;
		}

		// Validar meta description
		if (!page.meta?.description) {
			console.error(`   ❌ Falta meta description`);
			issuesFound.push(`${name} (${locale}): Falta meta description`);
			hasErrors = true;
		} else if (page.meta.description.length > 160) {
			console.warn(
				`   ⚠️  Meta description muy larga: ${page.meta.description.length} caracteres (máx. 160)`,
			);
			issuesFound.push(
				`${name} (${locale}): Description demasiado larga (${page.meta.description.length} chars)`,
			);
			warnings++;
		} else {
			console.log(
				`   ✅ Meta description: ${page.meta.description.length} caracteres`,
			);
			success++;
		}

		// Validar imagen OG
		if (!page.meta?.image) {
			console.warn(`   ⚠️  Falta imagen OG (usando imagen por defecto)`);
			warnings++;
		} else {
			console.log(`   ✅ Imagen OG configurada`);
			success++;
		}

		console.log('');
	}

	console.log('='.repeat(70));
	console.log(`\n📊 Resumen de Validación:`);
	console.log(`   ✅ Validaciones correctas: ${success}`);
	console.log(`   ⚠️  Advertencias: ${warnings}`);
	console.log(
		`   ❌ Errores críticos: ${hasErrors ? missingPages.length + issuesFound.filter((i) => i.includes('Falta')).length : 0}`,
	);

	// Mostrar páginas faltantes
	if (missingPages.length > 0) {
		console.log('\n' + '='.repeat(70));
		console.log('📝 PÁGINAS FALTANTES EN PAYLOAD CMS:');
		console.log('='.repeat(70));
		missingPages.forEach(({ name, slug, locale, path }) => {
			console.log(`\n   ❌ ${name}`);
			console.log(`      Slug: "${slug}"`);
			console.log(`      Locale: ${locale}`);
			console.log(`      Ruta web: ${path}`);
		});

		console.log('\n💡 Cómo crear estas páginas:');
		console.log(`   1. Ve a ${PAYLOAD_URL}/admin`);
		console.log('   2. Navega a "Pages" → "Create New"');
		console.log('   3. Selecciona el locale correcto (es o eu)');
		console.log('   4. Usa el slug exacto mostrado arriba');
		console.log('   5. Completa los campos SEO');
		console.log('   6. Publica la página\n');
	}

	// Mostrar problemas de SEO
	if (issuesFound.length > 0) {
		console.log('='.repeat(70));
		console.log('⚠️  PROBLEMAS DE SEO ENCONTRADOS:');
		console.log('='.repeat(70));

		const titleIssues = issuesFound.filter(
			(i) => i.includes('Title') || i.includes('title'),
		);
		const descIssues = issuesFound.filter(
			(i) => i.includes('Description') || i.includes('description'),
		);

		if (titleIssues.length > 0) {
			console.log('\n📏 Meta Titles (máximo 60 caracteres):');
			titleIssues.forEach((issue) => console.log(`   • ${issue}`));
		}

		if (descIssues.length > 0) {
			console.log('\n📝 Meta Descriptions (máximo 160 caracteres):');
			descIssues.forEach((issue) => console.log(`   • ${issue}`));
		}

		console.log('\n💡 Cómo corregir:');
		console.log(`   1. Ve a ${PAYLOAD_URL}/admin`);
		console.log('   2. Edita la página correspondiente');
		console.log('   3. Ve a la pestaña "SEO"');
		console.log('   4. Ajusta el Meta Title y/o Meta Description');
		console.log('   5. Guarda y publica\n');
	}

	// Recomendaciones de textos
	if (issuesFound.some((i) => i.includes('Inicio') && i.includes('Title'))) {
		console.log('='.repeat(70));
		console.log('📝 SUGERENCIAS DE TEXTOS CORREGIDOS:');
		console.log('='.repeat(70));

		console.log('\n📄 Inicio (ES) - Meta Title:');
		console.log(
			'   Actual: "Aitama Sleep Coaching | Asesoría del Sueño Infantil Personalizada" (65 chars)',
		);
		console.log(
			'   Sugerencia: "Aitama Sleep Coaching | Asesoría del Sueño Infantil" (52 chars)',
		);
		console.log(
			'   Alternativa: "Asesoría del Sueño Infantil | Aitama Sleep Coach" (52 chars)',
		);
	}

	if (issuesFound.some((i) => i.includes('Hasiera') && i.includes('Title'))) {
		console.log('\n📄 Hasiera (EU) - Meta Title:');
		console.log(
			'   Actual: "Aitama Sleep Coaching | Lo Haur Infantilaren Aholkularitza Pertsonalizatua" (74 chars)',
		);
		console.log(
			'   Sugerencia: "Aitama Sleep Coaching | Haur Loaren Aholkularitza" (50 chars)',
		);
		console.log(
			'   Alternativa: "Haur Loaren Aholkularitza | Aitama Sleep Coach" (49 chars)',
		);
	}

	if (issuesFound.some((i) => i.includes('Description'))) {
		console.log('\n📝 Meta Descriptions sugeridas (máx. 160 chars):');

		if (issuesFound.some((i) => i.includes('Inicio'))) {
			console.log('\n   Inicio (ES):');
			console.log(
				'   "Ayudo a familias a conseguir noches tranquilas con métodos respetuosos.',
			);
			console.log(
				'    Asesoría del sueño infantil personalizada sin llanto. Mejora el descanso hoy." (158 chars)',
			);
		}

		if (issuesFound.some((i) => i.includes('Hasiera'))) {
			console.log('\n   Hasiera (EU):');
			console.log(
				'   "Familiei gau lasaiak lortzen laguntzen diet metodo errespetuzkoekin.',
			);
			console.log(
				'    Haur loaren aholkularitza pertsonalizatua, negarrik gabe. Hobetu gaur atsedena." (155 chars)',
			);
		}

		if (issuesFound.some((i) => i.includes('Kontaktua'))) {
			console.log('\n   Kontaktua (EU):');
			console.log(
				'   "Prest zure hauraren loa hobetzeko? Jarri harremanetan zure lehen kontsulta',
			);
			console.log(
				'    programatzeko. 24 ordutan erantzuten dut. Has gaitezen bidea elkarrekin." (158 chars)',
			);
		}
	}

	// Resultado final
	console.log('\n' + '='.repeat(70));

	if (hasErrors) {
		console.error('❌ VALIDACIÓN DE SEO FALLÓ\n');
		console.log('📋 Pasos siguientes:');
		console.log(`   1. Ve a ${PAYLOAD_URL}/admin`);
		console.log('   2. Corrige los problemas listados arriba');
		console.log('   3. Vuelve a ejecutar: pnpm run validate-seo');
		console.log('');
		process.exit(1);
	} else if (warnings > 0) {
		console.log('⚠️  VALIDACIÓN COMPLETADA CON ADVERTENCIAS\n');
		console.log('Las páginas funcionarán, pero hay mejoras recomendadas.');
		console.log('Revisa las advertencias arriba para optimizar tu SEO.\n');
		process.exit(0);
	} else {
		console.log('✅ VALIDACIÓN DE SEO COMPLETADA EXITOSAMENTE\n');
		console.log('Todas las páginas tienen metadatos SEO correctos.');
		console.log('Tu sitio está optimizado para motores de búsqueda.\n');
		process.exit(0);
	}
}

// Ejecutar validación
validateSEO().catch((error) => {
	console.error('\n💥 Error inesperado durante la validación:');
	console.error(error);
	process.exit(1);
});
