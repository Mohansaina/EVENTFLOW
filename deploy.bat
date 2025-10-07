@echo off
title EventFlow Deployment Script

echo 🚀 Starting EventFlow Deployment Process
echo.

REM Check if git is installed
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git is not installed. Please install Git and try again.
    pause
    exit /b 1
)

echo ✅ Git is ready
echo.

REM Add all files
echo 📦 Adding all files to git...
git add .

REM Commit changes
echo 📝 Committing changes...
git commit -m "Deploy EventFlow landing page"

REM Push to GitHub (assuming origin is set)
echo 📤 Pushing to GitHub...
git push origin main

echo ✅ Code pushed to GitHub successfully!
echo.

echo ==========================================
echo Next steps to enable GitHub Pages:
echo 1. Go to your repository on GitHub
echo 2. Click on 'Settings' tab
echo 3. Scroll down to 'Pages' section
echo 4. Under 'Source', select 'GitHub Actions'
echo 5. Click 'Save'
echo.
echo Your site will be available at:
echo https://[your-username].github.io/eventflow-landing/
echo ==========================================
echo.

echo 🎉 Deployment process completed!
pause