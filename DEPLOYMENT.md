# Deployment Guide for EventFlow Landing Page

This guide will help you deploy your EventFlow landing page to make it live on the internet using GitHub Pages with automated deployment.

## Prerequisites

1. A GitHub account
2. Git installed on your computer

## Automated Deployment (Recommended)

This project includes automated deployment scripts for your convenience:

### Windows Users
Run the `deploy.bat` file by double-clicking it or executing it in Command Prompt.

### Mac/Linux Users
Run the `deploy.sh` file in your terminal:
```bash
chmod +x deploy.sh
./deploy.sh
```

## Manual Deployment Steps

### Step 1: Push Code to GitHub

1. Create a new repository on GitHub (you can name it "eventflow-landing")
2. Connect your local repository to the GitHub repository:
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/eventflow-landing.git
   git branch -M main
   git push -u origin main
   ```

### Step 2: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click on the "Settings" tab
3. Scroll down to the "Pages" section
4. Under "Source", select "GitHub Actions"
5. Click "Save"

### Step 3: Trigger Deployment

1. Make a small change to trigger the GitHub Actions workflow
2. Commit and push the change:
   ```bash
   git add .
   git commit -m "Trigger deployment"
   git push origin main
   ```

## GitHub Actions Workflow

This project includes a GitHub Actions workflow that automatically deploys your site:
- Located at `.github/workflows/deploy.yml`
- Runs on every push to the `main` branch
- Automatically publishes your site to GitHub Pages

## Custom Domain (Optional)

After deployment, you can add a custom domain:
1. In your GitHub repository, go to Settings
2. Navigate to the "Pages" section
3. Add your custom domain in the "Custom domain" field
4. Follow the DNS configuration instructions

## Updating Your Site

To update your site after making changes:
1. Run the automated deployment script (`deploy.bat` or `deploy.sh`)
2. Or commit your changes manually:
   ```bash
   git add .
   git commit -m "Description of changes"
   git push origin main
   ```
3. GitHub Actions will automatically redeploy your site

## Troubleshooting

If you encounter issues:
1. Ensure all files are properly committed and pushed to GitHub
2. Check that the GitHub Actions workflow ran successfully
3. Make sure your GitHub repository is public
4. Verify that GitHub Pages is enabled in your repository settings