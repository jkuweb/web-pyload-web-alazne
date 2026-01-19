export interface Page {
	id: number;
	title: string;
	hero: {
		title?: string | null;
		media: number | Media;
		enableText?: boolean | null;
		text?: string | null;
		enableSubText?: boolean | null;
		subtext?: string | null;
		links?:
			| {
					link: {
						type?: ('reference' | 'custom') | null;
						newTab?: boolean | null;
						reference?: {
							relationTo: 'pages';
							value: number | Page;
						} | null;
						url?: string | null;
						label: string;
						/**
						 * Elija cómo debe representarse el enlace
						 */
						appearance?: ('default' | 'outline') | null;
					};
					id?: string | null;
			  }[]
			| null;
	};
	layout: (
		| ContentBlock
		| MediaBlock
		| OpinionBlock
		| ServiceBlock
		| SentenceBlock
		| PriceBlock
	)[];
	publishedAt?: string | null;
	slug?: string | null;
	slugLock?: boolean | null;
	meta?: {
		title?: string | null;
		description?: string | null;
		/**
		 * Maximum upload file size: 12MB. Recommended file size for images is <500KB.
		 */
		image?: (number | null) | Media;
	};
	updatedAt: string;
	createdAt: string;
	_status?: ('draft' | 'published') | null;
}
/**
 * This interface was referenced by `Config`'s JSON-Schema
 * via the `definition` "ContentBlock".
 */
export interface ContentBlock {
	enableSectionTitle?: boolean | null;
	sectionTitle?: string | null;
	enableTitle?: boolean | null;
	title?: string | null;
	enableRichText?: boolean | null;
	richText?: {
		root: {
			type: string;
			children: {
				type: any;
				version: number;
				[k: string]: unknown;
			}[];
			direction: ('ltr' | 'rtl') | null;
			format: 'left' | 'start' | 'center' | 'right' | 'end' | 'justify' | '';
			indent: number;
			version: number;
		};
		[k: string]: unknown;
	} | null;
	enableLink?: boolean | null;
	link?: {
		type?: ('reference' | 'custom') | null;
		newTab?: boolean | null;
		reference?: {
			relationTo: 'pages';
			value: number | Page;
		} | null;
		url?: string | null;
		label: string;
		/**
		 * Elija cómo debe representarse el enlace
		 */
		appearance?: ('default' | 'outline') | null;
	};
	id?: string | null;
	blockName?: string | null;
	blockType: 'content';
}
/**
 * This interface was referenced by `Config`'s JSON-Schema
 * via the `definition` "MediaBlock".
 */
export interface MediaBlock {
	media: number | Media;
	id?: string | null;
	blockName?: string | null;
	blockType: 'mediaBlock';
}
/**
 * This interface was referenced by `Config`'s JSON-Schema
 * via the `definition` "OpinionBlock".
 */
export interface OpinionBlock {
	enableSectionTitle?: boolean | null;
	sectionTitle?: string | null;
	enableTitle?: boolean | null;
	title?: string | null;
	enableRichText?: boolean | null;
	richText?: {
		root: {
			type: string;
			children: {
				type: any;
				version: number;
				[k: string]: unknown;
			}[];
			direction: ('ltr' | 'rtl') | null;
			format: 'left' | 'start' | 'center' | 'right' | 'end' | 'justify' | '';
			indent: number;
			version: number;
		};
		[k: string]: unknown;
	} | null;
	opinions?:
		| {
				opinion: string;
				media: number | Media;
				id?: string | null;
		  }[]
		| null;
	id?: string | null;
	blockName?: string | null;
	blockType: 'opinionBlock';
}
/**
 * This interface was referenced by `Config`'s JSON-Schema
 * via the `definition` "ServiceBlock".
 */
export interface ServiceBlock {
	services?:
		| {
				title: string;
				image: number | Media;
				id?: string | null;
		  }[]
		| null;
	id?: string | null;
	blockName?: string | null;
	blockType: 'services';
}
/**
 * This interface was referenced by `Config`'s JSON-Schema
 * via the `definition` "SentenceBlock".
 */
export interface SentenceBlock {
	sentences?:
		| {
				title: string;
				id?: string | null;
		  }[]
		| null;
	id?: string | null;
	blockName?: string | null;
	blockType: 'sentence';
}

export interface Media {
	id: number;
	alt?: string | null;
	unpicUrl?: string | null;
	updatedAt: string;
	createdAt: string;
	url?: string | null;
	thumbnailURL?: string | null;
	filename?: string | null;
	mimeType?: string | null;
	filesize?: number | null;
	width?: number | null;
	height?: number | null;
	focalX?: number | null;
	focalY?: number | null;
}

export interface PriceBlock {
	price: number;
	id?: string | null;
	blockName?: string | null;
	blockType: 'priceBlock';
}
