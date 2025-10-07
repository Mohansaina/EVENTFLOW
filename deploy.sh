#!/bin/bash

# EventFlow Deployment Script
# This script helps automate the deployment of your EventFlow landing page

echo "🚀 Starting EventFlow Deployment Process"

# Check if git is installed
if ! command -v git &> /dev/null
then
    echo "❌ Git is not installed. Please install Git and try again."
    exit 1
fi

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1
then
    echo "❌ Not in a git repository. Please initialize git first."
    exit 1
fi

echo "✅ Git is ready"

# Add all files
echo "📦 Adding all files to git..."
git add .

# Commit changes
echo "📝 Committing changes..."
git commit -m "Deploy EventFlow landing page"

# Push to GitHub (assuming origin is set)
echo "📤 Pushing to GitHub..."
git push origin main

echo "✅ Code pushed to GitHub successfully!"

echo "=========================================="
echo "Next steps to enable GitHub Pages:"
echo "1. Go to your repository on GitHub"
echo "2. Click on 'Settings' tab"
echo "3. Scroll down to 'Pages' section"
echo "4. Under 'Source', select 'GitHub Actions'"
echo "5. Click 'Save'"
echo ""
echo "Your site will be available at:"
echo "https://<your-username>.github.io/eventflow-landing/"
echo "=========================================="

echo "🎉 Deployment process completed!"