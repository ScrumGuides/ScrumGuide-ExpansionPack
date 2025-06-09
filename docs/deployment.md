# 🌐 Deployment Guide

This guide covers the deployment process for the Scrum Guide Expansion Pack using Azure Static Web Apps and GitHub Actions.

## Deployment Overview

The project uses **Azure Static Web Apps** for hosting with automated deployments triggered by GitHub Actions. The deployment pipeline supports multiple environments for different stages of development.

## Deployment Environments

### 🚀 Production Environment

- **URL**: [https://scrumexpansion.org](https://scrumexpansion.org)
- **Branch**: `main`
- **Configuration**: `staticwebapp.config.production.json`
- **Hugo Config**: `hugo.yaml`

### 🔄 Preview Environment

- **URL**: [https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net)
- **Branch**: `preview`
- **Configuration**: `staticwebapp.config.preview.json`
- **Hugo Config**: `hugo.preview.yaml`

### 🐤 Canary Environment

- **URL**: [https://agreeable-island-0c966e810-{PullRequestId}.centralus.6.azurestaticapps.net](https://agreeable-island-0c966e810-{PullRequestId}.centralus.6.azurestaticapps.net)
- **Branch**: `canary`
- **Configuration**: `staticwebapp.config.canary.json`
- **Hugo Config**: `hugo.canary.yaml`

## Azure Static Web Apps Configuration

### Environment URLs

- **Production**: Uses custom domain `https://scrumexpansion.org`
- **Preview**: Azure Static Web Apps URL `https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net`
- **Pull Request Environments**: Dynamic URLs `https://agreeable-island-0c966e810-{PullRequestId}.centralus.6.azurestaticapps.net`

> **Note**: The baseURL in Hugo configuration files is typically set dynamically during the build process. Azure Static Web Apps automatically provides the correct URLs for each environment.

### URL Pattern Explanation

- **agreeable-island-0c966e810**: Azure-generated unique identifier for this Static Web App
- **preview**: Dedicated preview environment for testing pre-production changes
- **{PullRequestId}**: Replaced with actual PR number (e.g., `agreeable-island-0c966e810-42.centralus.6.azurestaticapps.net` for PR #42)
- **centralus.6.azurestaticapps.net**: Azure region and domain suffix

### Static Web App Configurations

Each environment has its own configuration file:

```json
{
  "routes": [
    {
      "route": "/",
      "serve": "/index.html",
      "statusCode": 200
    },
    {
      "route": "/en/*",
      "serve": "/en/index.html",
      "statusCode": 200
    },
    {
      "route": "/de/*",
      "serve": "/de/index.html",
      "statusCode": 200
    },
    {
      "route": "/es/*",
      "serve": "/es/index.html",
      "statusCode": 200
    },
    {
      "route": "/fr/*",
      "serve": "/fr/index.html",
      "statusCode": 200
    }
  ],
  "responseOverrides": {
    "404": {
      "serve": "/404.html",
      "statusCode": 404
    }
  },
  "mimeTypes": {
    ".pdf": "application/pdf"
  },
  "globalHeaders": {
    "Cache-Control": "public, max-age=31536000, immutable"
  },
  "navigationFallback": {
    "rewrite": "/index.html"
  }
}
```

### Key Configuration Features

- **Multi-language routing** for i18n support
- **Custom 404 handling**
- **PDF mime type** configuration
- **Caching headers** for performance
- **SPA fallback** routing

## GitHub Actions Workflow

### Automated Deployment Process

The deployment is triggered automatically when:

1. **Pull requests** are created (creates staging deployments with unique URLs)
2. **Manual workflow dispatch** is triggered
3. **Push to main** deploys to production

### Azure Static Web Apps Features

- **Automatic PR Environments**: Each pull request gets a unique URL
- **Preview Environment**: Dedicated preview environment for testing
- **Production Deployment**: Custom domain deployment
- **Automatic SSL**: Managed SSL certificates
- **Global CDN**: Worldwide content distribution

### Current Workflow Configuration

The actual GitHub Actions workflow is configured for Azure Static Web Apps:

```yaml
name: Azure Static Web Apps CI/CD

on: workflow_dispatch

jobs:
  build_and_deploy_job:
    if: github.event_name == 'push' || (github.event_name == 'pull_request' && github.event.action != 'closed')
    runs-on: ubuntu-latest
    name: Build and Deploy Job
    steps:
      - uses: actions/checkout@v3
        with:
          submodules: true
          lfs: false
      - name: Build And Deploy
        id: builddeploy
        uses: Azure/static-web-apps-deploy@v1
        with:
          azure_static_web_apps_api_token: ${{ secrets.AZURE_STATIC_WEB_APPS_API_TOKEN_AGREEABLE_ISLAND_0C966E810 }}
          repo_token: ${{ secrets.GITHUB_TOKEN }}
          action: "upload"
          app_location: "./site"
          api_location: ""
          output_location: "."
```

## Environment-Specific Configurations

### Hugo Configuration Files

#### Production (`hugo.yaml`)

```yaml
baseURL: "https://scrumexpansion.org"
languageCode: "en-us"
title: "Scrum Guide Expansion Pack"
theme: ""

# Production-specific settings
minify: true
enableGitInfo: true
enableRobotsTXT: true

# Google Analytics
googleAnalytics: "G-XXXXXXXXXX"

# Security headers
security:
  enableInlineShortcodes: false
  exec:
    allow: ["^dart-sass-embedded$", "^go$", "^npx$", "^postcss$"]
```

#### Preview (`hugo.preview.yaml`)

```yaml
baseURL: "https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net"
languageCode: "en-us"
title: "Scrum Guide Expansion Pack - Preview"

# Preview-specific settings
buildDrafts: true
buildFuture: true
enableRobotsTXT: false

# Disable analytics in preview
googleAnalytics: ""
```

#### Canary (`hugo.canary.yaml`)

```yaml
baseURL: "https://agreeable-island-0c966e810-{PullRequestId}.centralus.6.azurestaticapps.net"
languageCode: "en-us"
title: "Scrum Guide Expansion Pack - Canary"

# Canary-specific settings
buildDrafts: true
buildFuture: true
enableRobotsTXT: false

# Different analytics for canary
googleAnalytics: "G-CANARY-ID"
```

## Manual Deployment

### Prerequisites for Manual Deployment

1. **Azure CLI** installed and configured
2. **Static Web Apps CLI** installed
3. **Deployment tokens** configured

### Local Build and Deploy

```powershell
# Build for production
cd site
hugo --environment production --minify

# Deploy using Azure CLI
cd ../public
swa deploy --env production
```

### Using GitHub CLI

```powershell
# Trigger workflow manually
gh workflow run deploy.yml --ref main

# Check workflow status
gh run list --workflow=deploy.yml
```

## Domain and SSL Configuration

### Domain Setup

1. **Configure DNS** to point to Azure Static Web Apps
2. **Add custom domain** in Azure portal
3. **SSL certificate** is automatically managed by Azure

### DNS Configuration

```
# Production custom domain
CNAME scrumexpansion.org -> <static-web-app-url>

# Development environments use Azure Static Web Apps URLs:
# Preview: https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net
# PR environments: https://agreeable-island-0c966e810-{PullRequestId}.centralus.6.azurestaticapps.net
```

## Performance Optimization

### Build Optimization

- **Minification** of HTML, CSS, and JS
- **Image optimization** with Hugo's image processing
- **Asset bundling** and compression
- **Tree shaking** for unused CSS

### Runtime Optimization

- **CDN distribution** through Azure
- **Caching headers** for static assets
- **Gzip compression** enabled
- **HTTP/2** support

## Monitoring and Analytics

### Built-in Monitoring

- **Azure Application Insights** for performance monitoring
- **Google Analytics** for user behavior tracking
- **GitHub Actions logs** for deployment monitoring

### Key Metrics to Monitor

- **Build times** and success rates
- **Page load performance**
- **User engagement** metrics
- **Error rates** and 404s

### Alerting Setup

Configure alerts for:

- **Failed deployments**
- **High error rates**
- **Performance degradation**
- **SSL certificate expiration**

## Troubleshooting Deployments

### Common Issues

#### Build Failures

```powershell
# Check Hugo version locally
hugo version

# Test build locally
cd site
hugo --environment production --minify --verbose

# Check for template errors
hugo --templateMetrics
```

#### Deployment Failures

1. **Check Azure Static Web Apps logs**
2. **Verify GitHub Actions workflow**
3. **Check configuration files**
4. **Validate Hugo build output**

#### SSL/Domain Issues

1. **Verify DNS configuration**
2. **Check Azure domain settings**
3. **Wait for DNS propagation** (up to 48 hours)
4. **Force SSL renewal** if needed

### Debug Steps

1. **Check workflow logs** in GitHub Actions
2. **Test build locally** with same configuration
3. **Verify all secrets** are configured correctly
4. **Check Azure resource** status and logs

## Security Considerations

### Access Control

- **Repository permissions** managed through GitHub
- **Azure resource access** controlled via RBAC
- **Deployment tokens** secured as GitHub secrets
- **Branch protection rules** enforced

### Content Security

- **Static files only** - no server-side vulnerabilities
- **HTTPS enforcement** for all traffic
- **Content Security Policy** headers
- **Regular dependency updates**

### Secret Management

```powershell
# Add GitHub secret for Azure deployment
gh secret set AZURE_STATIC_WEB_APPS_API_TOKEN --body "your-token-here"

# List configured secrets
gh secret list
```

## Rollback Procedures

### Quick Rollback Options

1. **Revert commit** and push to trigger new deployment
2. **Deploy previous version** manually
3. **Switch traffic** to previous environment
4. **Use GitHub release** to deploy specific version

### Emergency Procedures

```powershell
# Revert to last known good commit
git revert HEAD --no-edit
git push origin main

# Or reset to specific commit
git reset --hard <commit-hash>
git push --force-with-lease origin main
```

## Best Practices

### Pre-deployment Checklist

- ✅ **Test build locally** with production settings
- ✅ **Run content validation** checks
- ✅ **Review configuration** changes
- ✅ **Check for broken links**
- ✅ **Verify translations** are complete
- ✅ **Test on multiple devices/browsers**

### Post-deployment Checklist

- ✅ **Verify site loads** correctly
- ✅ **Check all languages** work
- ✅ **Test download links** and PDFs
- ✅ **Monitor performance** metrics
- ✅ **Check analytics** tracking
- ✅ **Validate SEO** elements

### Maintenance Schedule

- **Weekly**: Review deployment logs and metrics
- **Monthly**: Update dependencies and Hugo version
- **Quarterly**: Security audit and performance review
- **Annually**: SSL certificate and domain renewal check

---

🔙 **Back to**: [Documentation Home](./README.md)  
➡️ **Next**: [Content Management](./content-management.md)
