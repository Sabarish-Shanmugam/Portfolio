# Build Script for Portfolio Website
# 1. Copies files to a 'dist' folder
# 2. Injects the Google Analytics ID from .env into the HTML files in 'dist'

$ErrorActionPreference = "Stop"
$sourceDir = Get-Location
$distDir = Join-Path $sourceDir "dist"
$envFile = Join-Path $sourceDir ".env"

# 1. Check for .env file
if (-not (Test-Path $envFile)) {
    Write-Error "❌ .env file not found! Please create one with GA_MEASUREMENT_ID=..."
    exit 1
}

# 2. Read GA ID from .env
$gaId = $null
$lines = Get-Content $envFile
foreach ($line in $lines) {
    if ($line -match '^GA_MEASUREMENT_ID=(.*)') {
        $gaId = $matches[1].Trim()
        break
    }
}

if (-not $gaId) {
    Write-Error "❌ GA_MEASUREMENT_ID not found in .env file."
    exit 1
}

Write-Host "ℹ️  Found GA ID: $gaId"

# 3. Prepare 'dist' folder
if (Test-Path $distDir) {
    Write-Host "🧹 Cleaning dist folder..."
    Remove-Item $distDir -Recurse -Force
}
New-Item -ItemType Directory -Path $distDir | Out-Null
Write-Host "fq  Created dist folder."

# 4. Copy files to dist (excluding git, dist, env, etc)
Write-Host "📂 Copying files..."
$exclude = @(".git", ".gitignore", ".env", "build.ps1", "dist")
Get-ChildItem -Path $sourceDir -Exclude $exclude | Copy-Item -Destination $distDir -Recurse -Force

# 5. Replace Placeholder in HTML files
Write-Host "🔄 Injecting Google Analytics ID..."
$htmlFiles = Get-ChildItem -Path $distDir -Filter "*.html" -Recurse

foreach ($file in $htmlFiles) {
    $content = Get-Content $file.FullName -Raw
    if ($content -match "G-XXXXXXX") {
        $newContent = $content -replace "G-XXXXXXX", $gaId
        Set-Content -Path $file.FullName -Value $newContent
        Write-Host "   ✅ Updated $($file.Name)"
    }
    else {
        Write-Host "   ⚠️  No placeholder found in $($file.Name)"
    }
}

Write-Host "🎉 Build complete! The ready-to-publish site is in the 'dist' folder."
