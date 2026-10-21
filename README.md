# Mithun VM — Professional Portfolio

A dark, responsive React + Vite portfolio designed with two clear paths:
- Recruiters: experience, technical strengths, semiconductor engineering and projects.
- Freelance clients: service descriptions and an inquiry form.

## Requirements
- Node.js 18 or newer
- npm

## Run locally
```bash
npm install
npm run dev
```
Open the local URL Vite prints in your terminal.

## Production build
```bash
npm run build
npm run preview
```
The production website is generated in `dist/`.

## Deploy to Cloudflare Pages
1. Push this project to a GitHub repository.
2. In Cloudflare, open **Workers & Pages** → **Create** → **Pages** → **Connect to Git**.
3. Select the repository.
4. Configure:
   - Framework preset: **Vite**
   - Build command: `npm run build`
   - Build output directory: `dist`
   - Root directory: leave blank if `package.json` is at the repository root.
5. Deploy. Cloudflare will rebuild the site after future pushes.

The included `public/_headers` file is copied to the output and adds a few basic browser security headers.

## Connect a Hostinger domain
After the Pages deployment succeeds:
1. Open the Pages project → **Custom domains** → **Set up a custom domain**.
2. Enter the domain or subdomain you want to use.
3. Follow the DNS instructions shown by Cloudflare. If the domain's DNS is still managed at Hostinger, add the exact records Cloudflare provides in Hostinger DNS.
4. Avoid deleting existing email-related MX, SPF, DKIM, or DMARC records.
5. Wait for DNS and certificate provisioning to complete.

Do not guess DNS records: use the exact values Cloudflare displays for your project and domain.

## Before publishing — required personalization
Search the project for `your.email@example.com` and replace it with the professional email address you want to publish. It appears in the contact section and mailto workflow.

Then review:
- Confirm employment titles, dates, education, certificates, and project descriptions.
- Add a real downloadable resume to `public/` and add a link to it if desired.
- Add public demo URLs and repository links for Orvai and the employee application if available.
- Add original screenshots and architecture diagrams for projects you can safely disclose.
- Replace case-study summaries with verified implementation details and outcomes.
- Add a LinkedIn profile link if you want it public.
- Ensure no employer-confidential details, credentials, API keys, personal customer data, or internal system screenshots are published.

## Contact form behavior
The inquiry form uses `mailto:`. It does not upload or store the submitted information, and it depends on the visitor having an email application configured. For a more reliable production workflow, connect a form service or a Cloudflare Worker endpoint with server-side validation, rate limiting, and spam protection.

## Notes
- This is a front-end portfolio starter, not a backend or CMS.
- No fabricated performance metrics or testimonials are included.
- The contact email is intentionally a placeholder until you replace it.
