# GitHub & Portfolio Management Guide

This document serves as a quick reference for managing your portfolio website, handling Git operations, and troubleshooting deployment issues.

**Last Updated:** December 5, 2025

---

## 1. Git Quick Reference

### Check Status
```powershell
git status
```

### Stage & Commit Changes
```powershell
# Stage all changes
git add .

# Or stage specific file
git add index.html

# Commit with message
git commit -m "Description of changes"
```

### Push to GitHub
```powershell
# Push to main branch
git push origin main

# Push to feature branch
git push origin branch-name
```

### Restore Previous Version
```powershell
# Undo all local changes (WARNING: destructive!)
git checkout .

# Restore specific file from last commit
git checkout HEAD -- index.html
```

---

## 2. Adding a New Article

### Steps:
1. Open `index.html`
2. Find `<div class="article-grid featured-articles">`
3. Copy an existing `<article class="article-card">` block
4. Paste it as the **first article** in the grid
5. Update: date, tags, title, description, and link
6. **Important**: Keep only 6-7 articles in featured. Move older ones to archive.

### Article Template:
```html
<article class="article-card">
    <div class="article-meta">Month Year • Category</div>
    <div class="tags"><span class="tag">Tag1</span><span class="tag">Tag2</span></div>
    <h3>Article Title</h3>
    <p class="project-description">Brief description of the article.</p>
    <a href="LINKEDIN_URL" class="link-text" target="_blank" rel="noopener noreferrer">Read on LinkedIn →</a>
</article>
```

---

## 3. Deployment

### Automatic Deployment
- Push to `main` branch triggers GitHub Actions
- Deploys to: `https://sabarish-shanmugam.github.io/Portfolio/`
- Takes 1-2 minutes to propagate

### Check Deployment Status
1. Go to GitHub repository
2. Click **Actions** tab
3. View latest workflow run

### Emergency: Bypass Build Script
If `build.ps1` fails, edit `.github/workflows/deploy.yml`:

```yaml
# Replace build step with:
- name: Build Site
  shell: pwsh
  run: |
    New-Item -ItemType Directory -Path dist -Force
    Copy-Item -Path ./* -Destination dist -Recurse -Exclude .git,.github,dist
```

---

## 4. Branch Management

### Current Branches:
| Branch | Purpose |
|--------|---------|
| `main` | Production (live site) |
| `articles-update` | Article updates (merge when ready) |

### Create Feature Branch:
```powershell
git checkout -b feature/new-feature
# Make changes...
git push origin feature/new-feature
```

### Merge to Main:
```powershell
git checkout main
git merge feature-branch
git push origin main
```

---

## 5. Key Files

| File | Purpose |
|------|---------|
| `index.html` | Main website page |
| `assets/images/` | Project icons and images |
| `.github/workflows/deploy.yml` | CI/CD deployment config |
| `build.ps1` | Build script (injects Analytics) |
| `documentation.md` | Project documentation |
| `style_guide.md` | Design system reference |
| `ui_ux_audit.md` | UX audit report |

---

## 6. Troubleshooting

### Form Not Submitting
- Check internet connection
- Verify reCAPTCHA is loaded
- Check Formspree endpoint in `index.html`

### Site Not Updating
- Wait 2-3 minutes for cache
- Hard refresh: `Ctrl + Shift + R`
- Check GitHub Actions for errors

### Broken Layout
```powershell
# Restore from last good commit
git checkout HEAD -- index.html
```

---

## 7. Google Analytics

### Add GA_MEASUREMENT_ID Secret:
1. GitHub Repository → **Settings**
2. **Secrets and variables** → **Actions**
3. **New repository secret**
4. Name: `GA_MEASUREMENT_ID`
5. Value: Your GA ID (e.g., `G-XXXXXXXXXX`)

---
*Guide for: Sabarish Shanmugam Portfolio*
