# Style Guide

## Color Palette
- **Primary**: `#667eea`
- **Primary Dark**: `#5a6fd6`
- **Secondary**: `#764ba2`
- **Text Main**: `#2d3748`
- **Text Light**: `#718096`
- **Background Light**: `#f7fafc`
- **White**: `#ffffff`

## Typography
- **Font Family**: `-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif`
- **Headings**: Use `clamp()` for responsive sizes (e.g., `h1 { font-size: clamp(2.5rem,5vw,4rem); }`)
- **Buttons**: Rounded, gradient background, hover lift effect.

## Spacing & Layout
- Use CSS variables for consistent spacing (`--spacing-sm`, `--spacing-md`).
- Containers max‑width: `1200px` with `margin: 0 auto`.
- Flexbox for nav and button groups.

## Components
- **Logo**: Gradient text with animated flux box.
- **Cards**: Shadow, hover translateY, border radius 16px.
- **Forms**: Accessible labels, focus outlines, honeypot field, reCAPTCHA.
- **Back‑to‑Top**: Fixed button with fade‑in/out.

## Accessibility
- Focus outline: `outline: 3px solid var(--primary);`
- ARIA labels on interactive elements.
- Sufficient color contrast (WCAG AA).

## Performance
- Minify CSS, defer scripts, use `async` for reCAPTCHA.
- Images optimized, served via CDN if possible.

---
*Generated on 2025‑11‑24*
