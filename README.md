# EventFlow Landing Page

A modern, responsive landing page for EventFlow - a real-time event timer and coordination platform for live events.

## Features

- Fully responsive design that works on all devices
- Modern UI with smooth animations and transitions
- Complete landing page sections:
  - Hero section with clear value proposition
  - Problem section highlighting pain points
  - Solution section showcasing EventFlow benefits
  - Features section with key capabilities
  - How It Works section with step-by-step guide
  - Pricing section with freemium and paid options
  - About section explaining the product vision
  - Call-to-action sections

## Technologies Used

- HTML5
- CSS3 (Flexbox and Grid layout)
- JavaScript (ES6)
- Font Awesome for icons
- Google Fonts (Poppins)

## Quick Deployment

Deploy your EventFlow landing page in seconds:

### GitHub Pages Deployment:
1. **Windows users**: Double-click `one-click-deploy.bat`
2. **Mac/Linux users**: Run `./one-click-deploy.sh` in your terminal

### Vercel Deployment:
1. **Windows users**: Double-click `deploy-to-vercel.bat`
2. **Mac/Linux users**: Run `./deploy-to-vercel.sh` in your terminal

Follow the prompts for either deployment option.

## Manual Setup Instructions

1. Clone or download this repository
2. Open `index.html` in your web browser
3. No build process required - it's ready to use!

## Deployment

This project is configured for easy deployment to both GitHub Pages and Vercel:

### GitHub Pages:
1. Run the one-click deployment script
2. Enable GitHub Pages in your repository settings
3. Your site will be live at `https://YOUR_USERNAME.github.io/EVENTFLOW/`

### Vercel:
1. Run the Vercel deployment script
2. Follow the prompts to set up your Vercel account
3. Your site will be live at the URL provided by Vercel

## Customization

To customize the content:
1. Edit `index.html` to modify text content
2. Modify `styles.css` to change colors, fonts, or layout
3. Update `script.js` for any additional interactivity

## Sections Overview

### Hero Section
Clear headline, subheadline, and call-to-action buttons that communicate the main value proposition.

### Problem Section
Explains the challenges event organizers face with timing and coordination.

### Solution Section
Shows how EventFlow solves these problems with key features.

### Features Section
Detailed feature list with benefit-oriented descriptions.

### How It Works Section
Simple 4-step process for using EventFlow.

### Pricing Section
Freemium model and single-event license options.

### About Section
Story behind EventFlow and why it exists.

## Browser Support

This landing page works on all modern browsers:
- Chrome
- Firefox
- Safari
- Edge

## Custom Domain Setup

To use a custom domain with your EventFlow landing page:

1. Edit the `CNAME` file in the project root and replace the content with your domain (e.g., `eventflow.yourdomain.com`)
2. Configure DNS settings with your domain provider:
   - For an apex domain (example.com), create A records pointing to:
     * 185.199.108.153
     * 185.199.109.153
     * 185.199.110.153
     * 185.199.111.153
   - For a subdomain (www.example.com), create a CNAME record pointing to `username.github.io` (replace username with your GitHub username)
3. After deployment, go to your repository settings on GitHub:
   - Visit `https://github.com/username/repository/settings/pages`
   - Verify your custom domain is shown there
   - Optionally, enforce HTTPS

## License

This is a demo landing page template. Feel free to use and modify for your own projects.