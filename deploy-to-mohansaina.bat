@echo off
title Deploy EventFlow to Mohansaina/EVENTFLOW

echo ==========================================
echo 🚀 Deploying EventFlow to Mohansaina/EVENTFLOW
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
echo.

echo 📦 Initializing repository...
git init
git add .
git commit -m "Initial commit: EventFlow landing page"

echo.
echo 🔗 Connecting to GitHub repository...
git remote add origin https://github.com/Mohansaina/EVENTFLOW.git
git branch -M main

echo.
echo 🚀 Pushing to GitHub...
git push -u origin main --force

echo.
echo ==========================================
echo ✅ Deployment completed successfully!
echo.
echo Your EventFlow landing page is now live at:
echo https://Mohansaina.github.io/EVENTFLOW/
echo.
echo Note: It may take a few minutes for GitHub Pages to be activated.
echo To enable GitHub Pages:
echo 1. Go to https://github.com/Mohansaina/EVENTFLOW/settings/pages
echo 2. Select "GitHub Actions" as the source
echo 3. Click "Save"
echo.
echo After enabling, your site will be available at:
echo https://Mohansaina.github.io/EVENTFLOW/
echo ==========================================
echo.
pause