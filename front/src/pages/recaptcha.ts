export async function POST({ request }: { request: Request }) {
	const body = await request.json();
	const token = body.recaptcha;
	if (!token) {
		return new Response(
			JSON.stringify({ success: false, error: 'No token provided' }),
			{ status: 400, headers: { 'Content-Type': 'application/json' } },
		);
	}

	const secret = import.meta.env.RECAPTCHA3_KEY;
	const verifyURL = 'https://www.google.com/recaptcha/api/siteverify';

	const response = await fetch(verifyURL, {
		method: 'POST',
		headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
		body: new URLSearchParams({
			secret,
			response: token,
		}),
	});

	const result = await response.json();

	return new Response(JSON.stringify(result), {
		status: 200,
		headers: { 'Content-Type': 'application/json' },
	});
}
