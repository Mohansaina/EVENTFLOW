# Deployment Guide for EventFlow Landing Page

This guide will help you deploy your EventFlow landing page to make it live on the internet using Vercel.

## Prerequisites

1. A GitHub account
2. A Vercel account (you can sign up with your GitHub account)

## Step 1: Push Code to GitHub

1. Create a new repository on GitHub (you can name it "eventflow-landing")
2. Connect your local repository to the GitHub repository:
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/eventflow-landing.git
   git branch -M main
   git push -u origin main
   ```

## Step 2: Deploy to Vercel

1. Go to [vercel.com](https://vercel.com) and sign up or log in
2. Click "New Project"
3. Import your GitHub repository ("eventflow-landing")
4. Vercel will automatically detect this is a static site
5. Click "Deploy"
6. Wait for the deployment to complete
7. Your site will be live at a URL like: `https://eventflow-landing.vercel.app`

## Vercel Configuration

This project includes a `vercel.json` file that configures:
- Static file serving for HTML, CSS, and JS files
- Routing to ensure all paths serve the main index.html (for SPA-like behavior)

## Custom Domain (Optional)

After deployment, you can add a custom domain:
1. In your Vercel dashboard, go to your project settings
2. Navigate to the "Domains" section
3. Add your custom domain
4. Follow the DNS configuration instructions

## Updating Your Site

To update your site after making changes:
1. Commit your changes locally:
   ```bash
   git add .
   git commit -m "Description of changes"
   git push origin main
   ```
2. Vercel will automatically redeploy your site

## Troubleshooting

If you encounter issues:
1. Ensure all files are properly committed and pushed to GitHub
2. Check that the `vercel.json` file is in the root of your repository
3. Make sure your GitHub repository is public (or configure Vercel access for private repos)