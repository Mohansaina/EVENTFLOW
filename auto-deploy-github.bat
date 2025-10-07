@echo off
title Auto Deploy EventFlow to GitHub

echo ==========================================
echo 🚀 Auto Deploying EventFlow to GitHub
echo Repository: https://github.com/Mohansaina/EVENTFLOW
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
git commit -m "Auto-deploy: EventFlow landing page"

echo.
echo 🔗 Connecting to GitHub repository...
git remote add origin https://github.com/Mohansaina/EVENTFLOW.git
git branch -M main

echo.
echo 🚀 Pushing to GitHub...
git push -u origin main --force

echo.
echo 🔄 Setting up GitHub Pages...
echo This step requires manual configuration:
echo 1. Go to https://github.com/Mohansaina/EVENTFLOW/settings/pages
echo 2. Under "Source", select "GitHub Actions"
echo 3. Click "Save"
echo.

echo ==========================================
echo ✅ Auto-deployment to GitHub completed!
echo.
echo Your files have been pushed to:
echo https://github.com/Mohansaina/EVENTFLOW
echo.
echo To complete the deployment and make your site live:
echo 1. Visit: https://github.com/Mohansaina/EVENTFLOW/settings/pages
echo 2. Select "GitHub Actions" as the source
echo 3. Save the settings
echo.
echo Your site will then be available at:
echo https://Mohansaina.github.io/EVENTFLOW/
echo ==========================================
echo.
pause