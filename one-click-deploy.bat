@echo off
title EventFlow One-Click Deployment

echo ==========================================
echo 🚀 EventFlow One-Click Deployment
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

REM Configure Git with your GitHub username
echo Please enter your GitHub username (case sensitive):
set /p github_username="Username: "

if "%github_username%"=="" (
    echo ❌ Username cannot be empty
    echo.
    pause
    exit /b 1
)

echo.
echo Setting up Git configuration...
git config --global user.email "ruttalamohan23@gmail.com"
git config --global user.name "%github_username%"

echo.
echo 📦 Initializing repository...
git init
git add .
git commit -m "Initial commit: EventFlow landing page"

echo.
echo 🔗 Connecting to GitHub...
git remote add origin https://github.com/%github_username%/EVENTFLOW.git
git branch -M main

echo.
echo 🚀 Deploying to GitHub...
git push -u origin main --force

echo.
echo ==========================================
echo ✅ Deployment completed successfully!
echo.
echo Your EventFlow landing page will be available at:
echo https://%github_username%.github.io/EVENTFLOW/
echo.
echo Note: It may take a few minutes for GitHub Pages to be activated.
echo To enable GitHub Pages:
echo 1. Go to https://github.com/%github_username%/EVENTFLOW/settings/pages
echo 2. Select "GitHub Actions" as the source
echo 3. Click "Save"
echo ==========================================
echo.
pause