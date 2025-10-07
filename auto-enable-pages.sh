#!/bin/bash

# Auto-Enable GitHub Pages for EventFlow
echo "=========================================="
echo "🚀 Auto-Enabling GitHub Pages for EventFlow"
echo "=========================================="
echo

# Check if git is installed
if ! command -v git &> /dev/null
then
    echo "❌ Git is not installed. Please install Git and try again."
    echo
    exit 1
fi

echo "✅ Git is installed"

# Check if GitHub CLI is installed
if ! command -v gh &> /dev/null
then
    echo "❌ GitHub CLI is not installed. Please install GitHub CLI from https://cli.github.com/ and try again."
    echo
    exit 1
fi

echo "✅ GitHub CLI is installed"
echo

echo "🔐 Logging into GitHub..."
if ! gh auth status &> /dev/null
then
    echo "🔧 Please log in to GitHub CLI:"
    gh auth login
    if [ $? -ne 0 ]
    then
        echo "❌ Failed to log in to GitHub CLI."
        echo
        exit 1
    fi
fi

echo "✅ Logged into GitHub"
echo

echo "📦 Ensuring repository is up to date..."
git add .
git commit -m "Auto-commit: Update for GitHub Pages enable" &> /dev/null
git push origin main

echo "✅ Repository is up to date"
echo

echo "🔄 Enabling GitHub Pages..."
if gh api -X PUT repos/Mohansaina/EVENTFLOW/pages --field build_type=workflow --field source="GitHub Actions" &> /dev/null
then
    echo "✅ GitHub Pages has been enabled!"
    echo
else
    echo "⚠️  Could not automatically enable GitHub Pages. You'll need to enable it manually:"
    echo "1. Go to https://github.com/Mohansaina/EVENTFLOW/settings/pages"
    echo "2. Select \"GitHub Actions\" as the source"
    echo "3. Click \"Save\""
    echo
fi

echo "📋 Checking deployment status..."
gh run list --repo Mohansaina/EVENTFLOW --workflow deploy.yml --limit 1 > /dev/null 2>&1

echo
echo "=========================================="
echo "✅ Process completed!"
echo
echo "Your EventFlow landing page will be available at:"
echo "https://Mohansaina.github.io/EVENTFLOW/"
echo
echo "Note: It may take a few minutes for the site to be deployed."
echo
echo "If the site doesn't appear after 5 minutes:"
echo "1. Check the Actions tab: https://github.com/Mohansaina/EVENTFLOW/actions"
echo "2. Ensure the deployment workflow completed successfully"
echo
echo "To view your site now, visit:"
echo "https://github.com/Mohansaina/EVENTFLOW/settings/pages"
echo "=========================================="
echo

read -p "Press Enter to continue..."