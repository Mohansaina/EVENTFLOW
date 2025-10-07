@echo off
title Deploy EventFlow to Vercel

echo ==========================================
echo 🚀 Deploying EventFlow to Vercel
echo ==========================================
echo.

REM Check if npm is installed
npm --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js/npm is not installed. Please install Node.js from https://nodejs.org/ and try again.
    echo.
    pause
    exit /b 1
)

echo ✅ Node.js/npm is installed
echo.

echo 📦 Installing Vercel CLI...
npm install -g vercel

echo.
echo 🔧 Initializing Vercel project...
echo You will need to:
echo 1. Enter your email when prompted
echo 2. Check your email for the verification code
echo 3. Enter the verification code
echo 4. Select your team (or create a new one)
echo 5. Select the project name (eventflow-landing)
echo.

vercel

echo.
echo ==========================================
echo ✅ Vercel setup completed!
echo.
echo To deploy updates in the future, simply run:
echo vercel --prod
echo.
echo Your site will be available at the URL provided by Vercel
echo ==========================================
echo.
pause