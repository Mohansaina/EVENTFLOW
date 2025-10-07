#!/bin/bash

# Deploy EventFlow to Vercel
# This script helps deploy your EventFlow landing page to Vercel

echo "=========================================="
echo "🚀 Deploying EventFlow to Vercel"
echo "=========================================="
echo ""

# Check if npm is installed
if ! command -v npm &> /dev/null
then
    echo "❌ Node.js/npm is not installed. Please install Node.js from https://nodejs.org/ and try again."
    echo ""
    exit 1
fi

echo "✅ Node.js/npm is installed"
echo ""

echo "📦 Installing Vercel CLI..."
npm install -g vercel

echo ""
echo "🔧 Initializing Vercel project..."
echo "You will need to:"
echo "1. Enter your email when prompted"
echo "2. Check your email for the verification code"
echo "3. Enter the verification code"
echo "4. Select your team (or create a new one)"
echo "5. Select the project name (eventflow-landing)"
echo ""

vercel

echo ""
echo "=========================================="
echo "✅ Vercel setup completed!"
echo ""
echo "To deploy updates in the future, simply run:"
echo "vercel --prod"
echo ""
echo "Your site will be available at the URL provided by Vercel"
echo "=========================================="