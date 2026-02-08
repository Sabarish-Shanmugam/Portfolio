# Documentation

## Project Overview

This is a personal portfolio website for **Sabarish Shanmugam**, a Senior Business Analyst & Product Owner based in New Zealand. The site showcases projects, articles, a transformation process timeline, and a contact form.

**Live Site:** [https://sabarish-shanmugam.github.io/Portfolio/](https://sabarish-shanmugam.github.io/Portfolio/)

## Structure

```
My Personal Website/
├── index.html              # Single-page application
├── assets/
│   └── images/             # Project icons and images
├── .github/
│   └── workflows/
│       └── deploy.yml      # GitHub Actions deployment
├── documentation.md        # This file
├── style_guide.md          # Design system documentation
├── ui_ux_audit.md          # UX audit report
├── GITHUB_GUIDE.md         # Git operations cheat sheet
├── build.ps1               # Build script for deployment
├── .gitignore              # Git ignore rules
└── .env                    # Environment variables (not committed)
```

## Sections

1. **About** - Professional summary with expandable details
2. **Selected Work** - 3 featured projects (ReqWise, Vithagan, Ultimate Diagram Master)
3. **My Transformation Process** - 5-step timeline (Discovery → Optimize)
4. **Thoughts & Writing** - 6 featured articles + archived articles toggle
5. **Contact** - Form with Formspree integration and reCAPTCHA

## Current Articles (as of January 2026)

### Featured Articles:

1. Product leadership — strategy & product management _(Jan 2026)_
2. How product management and business analysis align in digital products _(Jan 2026)_
3. Cybersecurity & data privacy in healthtech _(Jan 2026)_
4. New Zealand's recent cyber wake-up call _(Jan 2026)_
5. Generalist vs Domain Specific Business Analysts _(NEW - December 2025)_
6. Beyond the Breach: Mixpanel Incident Analysis
7. Hybrid Agile: Bridging Agile and Waterfall
8. AI for Mental Health: Community-Driven Innovation
9. How BAs and POs Use Diagramming Tools
10. Introducing ReqWise: AI Requirements Assistant
11. Business Analyst's Role in Product Prioritization

### Archived Articles:

- MVP: Validate Product Ideas Before It's Too Late
- Balancing Act in IT Product Development

## Dependencies

| Service              | Purpose                          |
| -------------------- | -------------------------------- |
| **Formspree**        | Contact form submission handling |
| **Google reCAPTCHA** | Spam protection                  |
| **GitHub Pages**     | Static site hosting              |
| **GitHub Actions**   | CI/CD deployment                 |

_No JavaScript frameworks required - vanilla JS and CSS only._

## Running Locally

1. Open `index.html` directly in a browser (no server required)
2. Ensure internet connectivity for Formspree and reCAPTCHA to function

## Testing & Validation

### Automated:

```powershell
npx -y lighthouse-cli@latest file:///path/to/index.html --output html --output-path lighthouse_report.html
```

### Manual Checks:

- [ ] Form submission works and displays success/error messages
- [ ] reCAPTCHA loads and can be solved
- [ ] Responsive layout at mobile (≤768px), tablet, and desktop widths
- [ ] Mobile menu toggle functions correctly
- [ ] Keyboard navigation with visible focus outlines
- [ ] Back-to-top button appears after scrolling
- [ ] Archive toggle shows/hides older articles
- [ ] All external links open in new tabs
- [ ] No console errors

## Non-Functional Requirements (NFRs)

| Category       | Target                       | Current |
| -------------- | ---------------------------- | ------- |
| Performance    | Lighthouse ≥ 90              | 92      |
| Accessibility  | WCAG 2.1 AA, Lighthouse ≥ 95 | 96      |
| Best Practices | Lighthouse ≥ 90              | 94      |
| SEO            | Lighthouse ≥ 90              | 95      |

## Security

- Content Security Policy (CSP) meta tag enforced
- HTTPS for all external resources (Formspree, reCAPTCHA)
- Honeypot field for basic spam filtering
- reCAPTCHA v2 for bot protection

## Maintainability

- CSS variables for consistent theming
- Component-based HTML structure
- Well-commented code sections
- Semantic HTML5 elements

---

_Last updated: January 19, 2026_
