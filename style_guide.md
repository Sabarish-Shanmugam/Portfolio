# Style Guide

**Last Updated:** December 5, 2025

---

## Color Palette

| Name | Value | Usage |
|------|-------|-------|
| **Primary** | `#667eea` | Links, buttons, accents |
| **Primary Dark** | `#5a6fd6` | Hover states |
| **Secondary** | `#764ba2` | Gradients, timeline |
| **Text Main** | `#2d3748` | Body text, headings |
| **Text Light** | `#718096` | Descriptions, meta |
| **Background Light** | `#f7fafc` | Section backgrounds |
| **White** | `#ffffff` | Cards, modals |

### Gradient Usage
```css
background: linear-gradient(135deg, var(--primary) 0%, var(--secondary) 100%);
```

---

## Typography

| Element | Font | Size | Weight |
|---------|------|------|--------|
| Body | System stack | 1rem (16px) | 400 |
| H1 | System stack | clamp(2.5rem, 5vw, 4rem) | 700 |
| H2 | System stack | 2.25rem | 700 |
| H3 | System stack | 1.5rem | 600 |
| Buttons | System stack | 1rem | 600 |

**Font Stack:**
```css
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
```

---

## Spacing & Layout

| Variable | Value | Usage |
|----------|-------|-------|
| Section padding | 2.5rem 1.5rem | Vertical rhythm |
| Container max-width | 1200px | Content constraint |
| Card padding | 2rem | Content spacing |
| Grid gap | 2rem - 2.5rem | Card grids |

---

## Components

### Buttons
```css
.btn {
    padding: 0.8rem 2rem;
    border-radius: 50px;
    font-weight: 600;
    transition: all 0.3s ease;
}
```
- **Primary**: Gradient background, white text, shadow
- **Secondary**: White background, bordered, primary text on hover

### Cards
```css
.project-card {
    border-radius: 16px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
    transition: transform 0.3s ease;
}
.project-card:hover {
    transform: translateY(-8px);
}
```

### Tags
```css
.tag {
    background: #edf2f7;
    color: #4a5568;
    padding: 0.25rem 0.75rem;
    border-radius: 20px;
    font-size: 0.8rem;
}
```

### Timeline
- Vertical line with gradient
- Circular markers with numbers
- Content cards on right side
- Hover effects for interactivity

---

## Accessibility

| Requirement | Implementation |
|-------------|----------------|
| Focus Outline | `outline: 3px solid var(--primary); outline-offset: 2px;` |
| Skip Link | Hidden until focused |
| Color Contrast | WCAG AA compliant |
| Touch Targets | Minimum 44x44px |
| ARIA Labels | Applied to all interactive elements |

---

## Animation

| Animation | Duration | Easing |
|-----------|----------|--------|
| Hover transitions | 0.3s | ease |
| Logo morph | 8s | ease-in-out |
| Mobile menu | 0.3s | ease |
| Scroll reveal | - | CSS only |

---

## Performance Guidelines

1. **No external CSS frameworks** - Vanilla CSS only
2. **System fonts** - No web font loading delay
3. **Minimal JavaScript** - Only for interactions
4. **Async loading** - reCAPTCHA loaded async defer
5. **Image optimization** - PNG icons, optimized sizes

---
*Generated: December 5, 2025*
