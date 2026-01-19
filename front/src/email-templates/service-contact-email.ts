import type { languagesList } from '@/i18n/ui';
import { useTranslations } from '@/i18n/utils';

export type Props = {
	serviceUsername: string;
	serviceEmail: string;
	telephone: string;
	lang: string;
	service: string;
};

export const getServiceContactEmailTemplate = ({ ...formInfo }: Props) => {
	const { serviceUsername, serviceEmail, service, lang, telephone } = formInfo;
	const user =
		serviceUsername.charAt(0).toUpperCase() + serviceUsername.substring(1);
	const t = useTranslations(lang as keyof typeof languagesList);

	const html = `
    <!DOCTYPE html>
    <html lang=${lang} dir="ltr">
    <head>
      <meta charset="UTF-8" />
      <title>${t('email.template.title')}</title>
      <style>
        body { background-color: #fafafa; font-family: sans-serif; padding: 40px; margin: 0; }
        .container { background-color: #ffffff; max-width: 600px; margin: 0 auto; padding: 40px; border-radius: 8px; }
        .logo { display: block; max-width: 300px; margin: 0 auto 32px; }
        .heading { color: #222222; font-size: 24px; font-weight: bold; text-align: center; margin-bottom: 24px; }
        .text { color: #222222; font-size: 16px; line-height: 24px; margin-bottom: 20px; }
        .contact-section { background-color: #fafafa; padding: 20px; border-radius: 8px; margin-bottom: 24px; }
        .contact-section strong { font-weight: bold; }
        .label { color: #222222; font-size: 14px; margin-bottom: 4px; }
        .message-section { margin-bottom: 32px; }
        .message-box { background-color: #fafafa; padding: 20px; border-radius: 8px; border-left: 4px solid #f49292; color: #222222; font-size: 14px; line-height: 20px; white-space: pre-wrap; }
        .cta-section { text-align: center; margin-bottom: 32px; }
        .cta-text { color: #222222; font-size: 14px; margin-bottom: 16px; }
        .cta-button { background-color: #f49292; color: #ffffff !important; padding: 12px 24px; border-radius: 6px; font-size: 14px; font-weight: 600; text-decoration: none; display: inline-block; }
        .footer { text-align: center; color: #666666; font-size: 12px; margin-top: 32px; }
        .footer a { color: #f49292; text-decoration: none; }
        .small { font-size: 10px; margin: 8px 0; }
        hr { border: none; border-top: 1px solid #e5e5e5; margin: 32px 0; }
      </style>
    </head>
    <body>
      <div class="container">
					 <img alt="Banner" src="https://res.cloudinary.com/web-alazne/image/upload/v1768677746/media/baner-1.png" width="150" style="height:auto;" />

        <h1 class="heading">${t('email.template.title')}</h1>
        <p class="text">${t('email.template.info')}</p>
        <div class="contact-section">
          <p class="label"><strong>${t('email.template.contacto')}</strong></p>
          <p class="label"><strong>${t('email.template.nombre')}</strong> ${user}</p>
          <p class="label"><strong>${t('email.template.email')}</strong> ${serviceEmail}</p>

          ${telephone ? `<p p class="label" > <strong>${t('email.template.phone')}: </strong> ${telephone}</p > ` : ''}
				${service ? `<p p class="label" > <strong>${t('email.template.asunto')}: </strong> ${service}</p > ` : ''}

        <div class="cta-section">
          <a href="mailto:${serviceEmail}?subject=Re: ${service}" class="cta-button">${t('email.template.responder.mensaje')}</a>
        </div>
        <hr />
        <div class="footer">
          <p class="small">San Sebastián</p>
          <p class="small"><a href="https://www.aitamasleepcoaching.com/es/">www.aitamasleepcoaching.com</a></p>
          <p class="small">${t('email.template.all')}</p>
          <p class="small">${t('email.template.legal')}</p>
        </div>
      </div>
    </body>
    </html>
  `;

	return html;
};
