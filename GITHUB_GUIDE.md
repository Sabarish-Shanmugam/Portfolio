# GitHub & Portfolio Management Guide

This document serves as a "cheat sheet" for manually managing your portfolio website, handling Git operations, and troubleshooting deployment issues.

## 1. Manual Git Operations (The Basics)

If you need to make changes when I'm unavailable, use these commands in your terminal (PowerShell or Command Prompt).

### **Check Status**
See which files have changed:
```powershell
git status
```

### **Stage Changes**
Prepare files for saving.
*   **Stage all changes:**
    ```powershell
    git add .
    ```
*   **Stage a specific file:**
    ```powershell
    git add index.html
    ```

### **Commit Changes**
Save the staged changes with a message describing what you did.
```powershell
git commit -m "Description of your changes"
```

### **Push to GitHub**
Send your saved changes to the live repository.
```powershell
git push origin main
```

---

## 2. Deployment Troubleshooting (`deploy.yml`)

Your site uses **GitHub Actions** to deploy. The configuration file is at `.github/workflows/deploy.yml`.

### **The "GA_MEASUREMENT_ID" Warning**
You might see a warning about `secrets.GA_MEASUREMENT_ID`. This is because the build script (`build.ps1`) expects a Google Analytics ID to be injected.

**How to fix it:**
1.  Go to your GitHub Repository.
2.  Click **Settings** > **Secrets and variables** > **Actions**.
3.  Click **New repository secret**.
4.  **Name**: `GA_MEASUREMENT_ID`
5.  **Value**: Your actual Google Analytics ID (e.g., `G-123456789`).
6.  Click **Add secret**.

### **Bypassing the Build Script (Emergency Mode)**
If the build script (`build.ps1`) keeps failing and you just want to publish the HTML files as they are:

1.  Open `.github/workflows/deploy.yml`.
2.  Find the **Build Site** step (around line 30).
3.  Replace the `run: ./build.ps1` command with a simple copy command.

**Original:**
```yaml
      - name: Build Site
        shell: pwsh
        env:
          GA_MEASUREMENT_ID: ${{ secrets.GA_MEASUREMENT_ID }}
        run: ./build.ps1
```

**Emergency Bypass (Direct Copy):**
```yaml
      - name: Build Site
        shell: pwsh
        run: |
          New-Item -ItemType Directory -Path dist -Force
          Copy-Item -Path ./* -Destination dist -Recurse -Exclude .git,.github,dist
```

---

## 3. Common Tasks & Fixes

### **Restoring a Previous Version**
If you break something and want to go back to the last working version:
```powershell
git checkout .
```
*(Warning: This undoes all unsaved local changes!)*

### **Updating the Blog**
To add a new article manually:
1.  Open `index.html`.
2.  Search for `<!-- NEW ARTICLE -->` or `class="article-grid"`.
3.  Copy an existing `<article>` block.
4.  Paste it at the top of the list.
5.  Update the text and links.
6.  **Important**: Keep only 6 articles in the main grid. Move older ones to the `archiveContainer` table at the bottom.

### **Checking the Live Site**
Your site is deployed to: `https://sabarish-shanmugam.github.io/Portfolio/`
*   **Note**: Changes can take 1-2 minutes to appear after pushing.
*   **Check Progress**: Go to the **Actions** tab in your GitHub repo to see the deployment status.

---

## 4. Key Files Overview
*   `index.html`: The main homepage file.
*   `assets/`: Folder containing images and styles.
*   `.github/workflows/deploy.yml`: The automation script that publishes your site.
*   `build.ps1`: A helper script that prepares files for publishing (injects Analytics ID).
