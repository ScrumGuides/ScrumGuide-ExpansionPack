# 🌐 Deployment Guide

This guide covers the deployment process for the Scrum Guide Expansion Pack using Azure Static Web Apps and GitHub Actions.

## 🌐 Live Sites

- **Production**: [scrumexpansion.org](https://scrumexpansion.org) - **Live production site**
- **Preview**: [agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/) - **Test environment for pre-production changes**

## Deployment Overview

The project uses **Azure Static Web Apps** for hosting with automated deployments triggered by GitHub Actions. The deployment pipeline follows a structured workflow through multiple environments.

### Deployment Workflow

```
Fork/Branch → PR (Test Site) → Merge to Main (Preview) → GitHub Release (Production)
```

**Step-by-Step Process:**

1. **Development**: Create feature branch or fork and make changes
2. **Pull Request**: PR creates automatic deployment to test site with unique URL
3. **Preview**: Merge to `main` branch automatically deploys to Preview environment
4. **Production**: Create GitHub Release with version tag to deploy to Production

## Deployment Environments

### 🚀 Production Environment

- **URL**: [scrumexpansion.org](https://scrumexpansion.org) - **Live production site**
- **Trigger**: GitHub Release with version tag (e.g., `v1.2.0`)
- **Configuration**: `staticwebapp.config.production.json`
- **Hugo Config**: `hugo.yaml`
- **Deployment Method**: Semantic versioning through GitHub Releases

### 🔄 Preview Environment

- **URL**: [agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/) - **Test environment for pre-production changes**
- **Trigger**: Automatic deployment when PR is merged to `main` branch
- **Configuration**: `staticwebapp.config.preview.json`
- **Hugo Config**: `hugo.preview.yaml`
- **Purpose**: Pre-production validation before creating production release

### 🐤 Canary Environment

- **URL**: [https://agreeable-island-0c966e810-{PullRequestId}.centralus.6.azurestaticapps.net](https://agreeable-island-0c966e810-{PullRequestId}.centralus.6.azurestaticapps.net)
- **Trigger**: Automatic deployment when Pull Request is created
- **Configuration**: `staticwebapp.config.canary.json`
- **Hugo Config**: `hugo.canary.yaml`
- **Purpose**: Test changes in isolation before merging
- **Note**: Only PRs to main repository get deployed (not from forks)

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

### Environment-Specific Configurations

Each environment has its own configuration file:

| Environment | Config File | Hugo Config | Trigger |
|-------------|-------------|-------------|----------|
| **PR/Test** | `staticwebapp.config.canary.json` | `hugo.canary.yaml` | Pull Request created |
| **Preview** | `staticwebapp.config.preview.json` | `hugo.preview.yaml` | Merge to `main` |
| **Production** | `staticwebapp.config.production.json` | `hugo.yaml` | GitHub Release created |

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

1. **Pull Request Created** → Deploys to PR-specific test site (e.g., `agreeable-island-0c966e810-42.centralus.6.azurestaticapps.net`)
2. **PR Merged to Main** → Deploys to Preview environment (`agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net`)
3. **GitHub Release Created** → Deploys to Production with version tag (`scrumexpansion.org`)

### Semantic Versioning for Production

**Production deployments use semantic versioning through GitHub Releases:**

| Version Type | Format | Use Case | Example |
|--------------|--------|----------|----------|
| **Patch** | `v1.0.1` | Typo fixes, small corrections, tiny changes | `v1.0.1` → Fix typo in guide |
| **Minor** | `v1.1.0` | New section, content additions, feature additions | `v1.1.0` → Add new guide section |
| **Major** | `v2.0.0` | Complete document revamp, breaking changes, restructure | `v2.0.0` → Complete guide overhaul |

### Creating a Production Release

**Steps to deploy to production:**

1. Ensure all changes are merged to `main` branch
2. Verify Preview site is working correctly
3. Navigate to GitHub → Releases → **Draft a new release**
4. Create or select a **version tag** following semantic versioning (e.g., `v1.2.0`)
5. Set **target branch** to `main`
6. Add **release title** and **description** with changelog
7. Click **Publish release**
8. GitHub Actions automatically deploys to production

**Example Release Notes:**

```markdown
## v1.2.0 - New Psychological Safety Guide

### Added
- New guide: Psychological Safety in Scrum Teams
- Translation support for German (DE)

### Changed
- Updated homepage layout
- Improved mobile navigation

### Fixed
- Corrected references in Complexity guide
```

### Azure Static Web Apps Features

- **Automatic PR Environments**: Each pull request gets a unique URL
- **Preview Environment**: Dedicated preview environment for testing
- **Production Deployment**: Custom domain deployment
- **Automatic SSL**: Managed SSL certificates
- **Global CDN**: Worldwide content distribution

### Automated Workflows

The repository uses several GitHub Actions workflows:

| Workflow | File | Purpose | Trigger |
|----------|------|---------|---------|
| **Build & Release** | `main.yaml` | Builds and deploys to all environments (PR test sites, Preview, Production) | Push to main, PR creation, Release creation |
| **PR Cleanup** | `close-pr.yaml` | Cleans up PR-specific test environments | PR closed |
| **Docs to Wiki** | `docs-to-wiki.yml` | Syncs documentation from `/docs` to GitHub Wiki | Push to main (docs changes) |
| **Copilot Setup** | `copilot-setup-steps.yml` | Development environment setup helper | Manual dispatch only |
| **Tag External Edits** | `discussion-tag-external-edits.yml` | Tags discussions from external contributors | Discussion created/edited |
| **Stale Issues** | `stale-issues.yml` | Automatically closes stale duplicate issues | Daily at 2:00 UTC |
| **LEGACY** | `azure-static-web-apps-*.yml` | ⛔ **DO NOT USE** - Disabled legacy workflow | Disabled |

**Primary Deployment Workflow (`main.yaml`):**
- Builds Hugo site with environment-specific configuration
- Deploys to Azure Static Web Apps
- Supports all three environments: PR test sites, Preview, and Production
- Handles version tagging and release management

**Environment Cleanup (`close-pr.yaml`):**
- Automatically removes PR-specific test environments from Azure
- Runs when a pull request is closed
- Prevents accumulation of unused test environments

**Documentation Sync (`docs-to-wiki.yml`):**
- Keeps GitHub Wiki synchronized with `/docs` folder
- Runs automatically on documentation changes
- Can be manually triggered for full sync

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

1. **Create new patch release** with reverted changes
2. **Create new release** from previous commit
3. **Revert commit** on main, let Preview validate, then create new release
4. **Re-publish previous GitHub Release** (if supported)

### Emergency Procedures

```powershell
# Revert to last known good commit
git revert HEAD --no-edit
git push origin main

# Verify in Preview environment first
# Then create new patch release (e.g., v1.2.1) to deploy to production

# Or reset to specific commit (use with caution)
git reset --hard <commit-hash>
git push --force-with-lease origin main
# Then create new release
```

**Important**: Always validate changes in the Preview environment before creating a production release.

## Best Practices

### Pre-deployment Checklist

- ✅ **Test build locally** with production settings
- ✅ **Run content validation** checks
- ✅ **Review configuration** changes
- ✅ **Check for broken links**
- ✅ **Verify translations** are complete
- ✅ **Test on multiple devices/browsers**
- ✅ **Validate changes in Preview** environment after merge to main

### Post-deployment Checklist

- ✅ **Verify site loads** correctly
- ✅ **Check all languages** work
- ✅ **Test download links** and PDFs
- ✅ **Monitor performance** metrics
- ✅ **Check analytics** tracking
- ✅ **Validate SEO** elements

### Deployment Decision Guide

**When to deploy to each environment:**

| Scenario | Action | Environment |
|----------|--------|-------------|
| Testing new feature | Create Pull Request | PR Test Site |
| Ready for team review | Merge to main | Preview |
| Ready for public release | Create GitHub Release | Production |
| Small typo fix | Create PR → Merge → Patch Release (v1.0.x) | All three |
| New content section | Create PR → Merge → Minor Release (v1.x.0) | All three |
| Major overhaul | Create PR → Merge → Major Release (vx.0.0) | All three |

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
