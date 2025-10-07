@echo off
title Auto-Enable GitHub Pages for EventFlow

echo ==========================================
echo 🚀 Auto-Enabling GitHub Pages for EventFlow
echo ==========================================
echo.

REM Check if git is installed
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git is not installed. Please install Git from https://git-scm.com/ and try again.
    echo.
    pause
    exit /b 1
)

echo ✅ Git is installed

REM Check if GitHub CLI is installed
gh --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ GitHub CLI is not installed. Please install GitHub CLI from https://cli.github.com/ and try again.
    echo.
    pause
    exit /b 1
)

echo ✅ GitHub CLI is installed
echo.

echo 🔐 Logging into GitHub...
gh auth status >nul 2>&1
if %errorlevel% neq 0 (
    echo 🔧 Please log in to GitHub CLI:
    gh auth login
    if %errorlevel% neq 0 (
        echo ❌ Failed to log in to GitHub CLI.
        echo.
        pause
        exit /b 1
    )
)

echo ✅ Logged into GitHub
echo.

echo 📦 Ensuring repository is up to date...
git add .
git commit -m "Auto-commit: Update for GitHub Pages enable" >nul 2>&1
git push origin main

echo ✅ Repository is up to date
echo.

echo 🔄 Enabling GitHub Pages...
gh api -X PUT repos/Mohansaina/EVENTFLOW/pages --field build_type=workflow --field source="GitHub Actions" >nul 2>&1
if %errorlevel% neq 0 (
    echo ⚠️  Could not automatically enable GitHub Pages. You'll need to enable it manually:
    echo 1. Go to https://github.com/Mohansaina/EVENTFLOW/settings/pages
    echo 2. Select "GitHub Actions" as the source
    echo 3. Click "Save"
    echo.
) else (
    echo ✅ GitHub Pages has been enabled!
    echo.
)

echo 📋 Checking deployment status...
gh run list --repo Mohansaina/EVENTFLOW --workflow deploy.yml --limit 1 > deployment_status.txt
set /p deployment_status=<deployment_status.txt
del deployment_status.txt >nul 2>&1

echo.
echo ==========================================
echo ✅ Process completed!
echo.
echo Your EventFlow landing page will be available at:
echo https://Mohansaina.github.io/EVENTFLOW/
echo.
echo Note: It may take a few minutes for the site to be deployed.
echo.
echo If the site doesn't appear after 5 minutes:
echo 1. Check the Actions tab: https://github.com/Mohansaina/EVENTFLOW/actions
echo 2. Ensure the deployment workflow completed successfully
echo.
echo To view your site now, visit:
echo https://github.com/Mohansaina/EVENTFLOW/settings/pages
echo ==========================================
echo.
pause