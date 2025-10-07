# GitHub Pages Setup Instructions

Your EventFlow landing page has been successfully deployed to GitHub, but to make it live on the internet, you need to enable GitHub Pages in your repository settings.

## Steps to Enable GitHub Pages

1. **Go to Repository Settings**
   - Visit: https://github.com/Mohansaina/EVENTFLOW/settings
   - Scroll down to the "Pages" section

2. **Configure GitHub Pages**
   - Under "Build and deployment" section
   - In the "Source" dropdown, select "GitHub Actions"
   - Click "Save"

3. **Wait for Deployment**
   - After saving, GitHub will automatically run the deployment workflow
   - It may take 1-2 minutes for the site to be published

4. **Access Your Live Site**
   - Once deployed, your site will be available at:
   - https://Mohansaina.github.io/EVENTFLOW/

## Troubleshooting

If your site doesn't appear after a few minutes:

1. Check the Actions tab:
   - Visit: https://github.com/Mohansaina/EVENTFLOW/actions
   - Ensure the "Deploy to GitHub Pages" workflow completed successfully

2. Verify Pages settings:
   - Go back to the Pages settings
   - Confirm "GitHub Actions" is still selected as the source

3. Check for any custom domain issues:
   - If you added a custom domain, ensure DNS settings are correct

## Custom Domain (Optional)

If you want to use your own domain:

1. Edit the `CNAME` file in this repository with your domain
2. Update your domain's DNS settings:
   - For apex domain: Add A records pointing to GitHub's IP addresses
   - For subdomain: Add CNAME record pointing to `Mohansaina.github.io`

## Need Help?

If you encounter any issues, feel free to reach out for assistance.