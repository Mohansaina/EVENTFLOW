# Deployment Guide for EventFlow Landing Page

This guide will help you deploy your EventFlow landing page to make it live on the internet using either GitHub Pages or Vercel with automated deployment.

## Prerequisites

For GitHub Pages:
1. A GitHub account
2. Git installed on your computer

For Vercel:
1. A Vercel account (can be created during deployment)
2. Node.js installed on your computer

## Automated Deployment (Recommended)

This project includes automated deployment scripts for your convenience:

### GitHub Pages Deployment

#### Windows Users
Run the `deploy.bat` file by double-clicking it or executing it in Command Prompt.

#### Mac/Linux Users
Run the `deploy.sh` file in your terminal:
```bash
chmod +x deploy.sh
./deploy.sh
```

### Vercel Deployment

#### Windows Users
Run the `deploy-to-vercel.bat` file by double-clicking it or executing it in Command Prompt.

#### Mac/Linux Users
Run the `deploy-to-vercel.sh` file in your terminal:
```bash
chmod +x deploy-to-vercel.sh
./deploy-to-vercel.sh
```

## Manual Deployment Steps

### GitHub Pages Deployment

#### Step 1: Push Code to GitHub

1. Create a new repository on GitHub (you can name it "eventflow-landing")
2. Connect your local repository to the GitHub repository:
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/eventflow-landing.git
   git branch -M main
   git push -u origin main
   ```

#### Step 2: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click on the "Settings" tab
3. Scroll down to the "Pages" section
4. Under "Source", select "GitHub Actions"
5. Click "Save"

#### Step 3: Trigger Deployment

1. Make a small change to trigger the GitHub Actions workflow
2. Commit and push the change:
   ```bash
   git add .
   git commit -m "Trigger deployment"
   git push origin main
   ```

### Vercel Deployment

#### Step 1: Install Vercel CLI
```bash
npm install -g vercel
```

#### Step 2: Deploy
```bash
vercel
```

Follow the prompts to set up your Vercel account and deploy your project.

## GitHub Actions Workflow

This project includes a GitHub Actions workflow that automatically deploys your site:
- Located at `.github/workflows/deploy.yml`
- Runs on every push to the `main` branch
- Automatically publishes your site to GitHub Pages

## Configuration Files

- `vercel.json`: Configuration for Vercel deployment
- `.github/workflows/deploy.yml`: Configuration for GitHub Actions

## Custom Domain (Optional)

### For GitHub Pages
1. In your GitHub repository, go to Settings
2. Navigate to the "Pages" section
3. Add your custom domain in the "Custom domain" field
4. Follow the DNS configuration instructions

### For Vercel
1. In your Vercel dashboard, go to your project settings
2. Navigate to the "Domains" section
3. Add your custom domain
4. Follow the DNS configuration instructions

## Updating Your Site

### For GitHub Pages
1. Run the automated deployment script (`deploy.bat` or `deploy.sh`)
2. Or commit your changes manually:
   ```bash
   git add .
   git commit -m "Description of changes"
   git push origin main
   ```
3. GitHub Actions will automatically redeploy your site

### For Vercel
1. Run `vercel --prod` to deploy the latest changes

## Troubleshooting

If you encounter issues:

### GitHub Pages
1. Ensure all files are properly committed and pushed to GitHub
2. Check that the GitHub Actions workflow ran successfully
3. Make sure your GitHub repository is public
4. Verify that GitHub Pages is enabled in your repository settings

### Vercel
1. Ensure Node.js is properly installed
2. Check that the Vercel CLI is properly installed
3. Verify that you're logged into your Vercel account
4. Make sure all files are committed before deploying