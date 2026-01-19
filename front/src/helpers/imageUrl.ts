import { v2 as cloudinary } from 'cloudinary';

cloudinary.config({
	cloud_name: import.meta.env.CLOUDINARY_CLOUD_NAME,
	secure: true,
});

export const getImageUrl = (imageId: string): string => {
	const cleanId = imageId.replace(/\.(jpg|jpeg|png|gif|webp|avif)$/i, '');

	const url = cloudinary.url(`media/${cleanId}`, {
		secure: true,
		transformation: [
			{
				quality: 'auto',
				fetch_format: 'auto',
			},
		],
	});

	return url;
};
