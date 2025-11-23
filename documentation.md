# Documentation

## Project Overview
This is a personal portfolio website for **Sabarish Shanmugam**, a Senior Business Analyst & Product Owner. The site showcases projects, articles, a process timeline, and a contact form.

## Structure
- `index.html` – Single‑page application with sections: About, Projects, Process, Articles, Contact.
- `assets/images/` – Directory containing all project icons and images.
- `style_guide.md` – Defines colors, typography, spacing, components, accessibility, and performance guidelines.
- `ui_ux_audit.md` – CXO‑level audit report with Lighthouse scores, visual design review, interaction, security, and recommendations.
- `documentation.md` – This file, describing architecture, dependencies, and how to run tests.

## Dependencies
- **Formspree** – Handles contact form submissions.
- **Google reCAPTCHA** – Spam protection.
- No JavaScript frameworks; vanilla JS and CSS only.

## Running Locally
1. Open `index.html` in a browser (no server required).
2. Ensure internet connectivity for Formspree and reCAPTCHA.

## Testing & Validation
- **Lighthouse** – Run `npx -y lighthouse-cli@latest file:///c:/Users/Venom/Downloads/My%20Personal%20Website/index.html --output html --output-path lighthouse_report.html` to generate a performance, accessibility, best‑practices, and SEO report.
- **Manual Tests** – Verify:
  * Form submission works and displays success message.
  * reCAPTCHA loads and can be solved.
  * Responsive layout at mobile (≤768 px), tablet, and desktop widths.
  * Keyboard navigation with visible focus outlines.
  * No console errors.

## Non‑Functional Requirements (NFRs)
- **Performance**: Page load < 2 s on 3G (Lighthouse target ≥ 90).
- **Accessibility**: WCAG 2.1 AA compliance (Lighthouse ≥ 95).
- **Security**: CSP enforced, HTTPS for Formspree, honeypot + reCAPTCHA.
- **Maintainability**: CSS variables and component‑based markup for easy updates.

---
*Generated on 2025‑11‑24*
