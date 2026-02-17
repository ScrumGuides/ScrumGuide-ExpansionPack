# 🔧 Configuration Reference

This document provides a comprehensive reference for all configuration files and settings used in the Scrum Guide Expansion Pack project.

## Hugo Configuration Files

The project uses environment-specific Hugo configuration files to manage different deployment scenarios.

### Main Configuration (`hugo.yaml`)

```yaml
# Base URL for the production site
baseURL: 'https://scrumexpansion.org'

# Default language
languageCode: 'en-us'
defaultContentLanguage: 'en'

# Site title
title: 'Scrum Guide Expansion Pack'

# Theme (empty for custom theme)
theme: ''

# Hugo version compatibility
module:
  hugoVersion:
    extended: true
    min: "0.120.0"

# Language configuration
languages:
  en:
    languageName: 'English'
    weight: 1
    title: 'Scrum Guide Expansion Pack'
    description: 'An expanded interpretation of the 2020 Scrum Guide'
  de:
    languageName: 'Deutsch'
    weight: 2
    title: 'Scrum Guide Erweiterungspaket'
    description: 'Eine erweiterte Interpretation des 2020 Scrum Guide'
  es:
    languageName: 'Español'
    weight: 3
    title: 'Paquete de Expansión de la Guía Scrum'
    description: 'Una interpretación ampliada de la Guía Scrum 2020'
  fr:
    languageName: 'Français'
    weight: 4
    title: 'Pack d\'Extension du Guide Scrum'
    description: 'Une interprétation élargie du Guide Scrum 2020'

# Menu configuration
menu:
  main:
    - name: 'Guide'
      url: '/guide/'
      weight: 10
    - name: 'Creators'           # LEGACY - Kept for backward compatibility
      url: '/creators/'
      weight: 20
    - name: 'Download'
      url: '/download/'
      weight: 30

# Parameters for custom variables
params:
  # Site metadata
  description: 'An expanded interpretation of the 2020 Scrum Guide'
  author: 'Ralph Jocham, John Coleman, Jeff Sutherland'

  # Social media
  github: 'https://github.com/ScrumGuides/ScrumGuide-ExpansionPack'

  # Analytics
  googleAnalytics: 'G-XXXXXXXXXX'

  # Features
  enableSearch: true
  enableComments: false
  enableToc: true

  # PDF settings
  enablePdfDownload: true
  pdfPath: '/pdf/'

# Markup configuration
markup:
  goldmark:
    renderer:
      unsafe: true
      hardWraps: false
    parser:
      autoHeadingID: true
      autoHeadingIDType: 'github'
  highlight:
    style: 'github'
    noClasses: false
    codeFences: true
    guessSyntax: true
    lineNos: true

# Build configuration
build:
  writeStats: true
  noJSConfigInAssets: true

# Security configuration
security:
  enableInlineShortcodes: false
  exec:
    allow: ['^dart-sass-embedded$', '^go$', '^npx$', '^postcss$']

# Output formats
outputs:
  home: ['HTML', 'RSS', 'JSON']
  page: ['HTML']
  section: ['HTML', 'RSS']

# Minification (production only)
minify:
  disableXML: true
  minifyOutput: true

# SEO and performance
enableRobotsTXT: true
enableGitInfo: true
enableEmoji: true

# Related content
related:
  includeNewer: true
  indices:
    - name: 'keywords'
      weight: 100
    - name: 'tags'
      weight: 80
```

### Environment-Specific Configurations

#### Local Development (`hugo.local.yaml`)

```yaml
baseURL: "http://localhost:1313"
title: "Scrum Guide Expansion Pack - Local"

# Development settings
buildDrafts: true
buildFuture: true
buildExpired: true

# Disable external services in local
params:
  googleAnalytics: ""
  enableComments: false

# Fast rebuilds
enableGitInfo: false
minify:
  minifyOutput: false

# Debug settings
log: true
verbose: true
```

#### Preview Environment (`hugo.preview.yaml`)

```yaml
baseURL: "https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net"
title: "Scrum Guide Expansion Pack - Preview"

# Preview settings
buildDrafts: true
buildFuture: true

# Different analytics for preview
params:
  googleAnalytics: "G-PREVIEW-ID"

# Disable robots in preview
enableRobotsTXT: false
```

#### Canary Environment (`hugo.canary.yaml`)

```yaml
baseURL: 'https://agreeable-island-0c966e810-{PullRequestId}.centralus.6.azurestaticapps.net'
title: 'Scrum Guide Expansion Pack - Canary'

# Canary settings
buildDrafts: true
buildFuture: true

# Separate analytics for canary
params:
  googleAnalytics: 'G-CANARY-ID'

# Enable additional debugging
params:
  enableDebug: true
  showVersionInfo: true

# Disable robots in canary
enableRobotsTXT: false
```

## Azure Static Web Apps Configuration

### Production Configuration (`staticwebapp.config.json`)

```json
{
  "routes": [
    {
      "route": "/",
      "serve": "/index.html",
      "statusCode": 200
    },
    {
      "route": "/guide",
      "serve": "/guide/index.html",
      "statusCode": 200
    },
    {
      "route": "/creators",        // LEGACY - Kept for backward compatibility
      "serve": "/creators/index.html",
      "statusCode": 200
    },
    {
      "route": "/download",
      "serve": "/download/index.html",
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
    },
    "403": {
      "serve": "/403.html",
      "statusCode": 403
    }
  },
  "mimeTypes": {
    ".pdf": "application/pdf",
    ".json": "application/json",
    ".xml": "application/xml"
  },
  "globalHeaders": {
    "X-Frame-Options": "DENY",
    "X-Content-Type-Options": "nosniff",
    "Referrer-Policy": "strict-origin-when-cross-origin",
    "Cache-Control": "public, max-age=31536000, immutable"
  },
  "navigationFallback": {
    "rewrite": "/index.html",
    "exclude": ["/pdf/*", "/images/*", "/css/*", "/js/*", "*.{css,js,jpg,png,gif,svg,pdf,xml,json}"]
  },
  "trailingSlash": "auto"
}
```

### Preview Configuration (`staticwebapp.config.preview.json`)

```json
{
  "routes": [
    {
      "route": "/*",
      "headers": {
        "X-Robots-Tag": "noindex, nofollow"
      }
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
    "X-Frame-Options": "DENY",
    "X-Content-Type-Options": "nosniff",
    "Cache-Control": "no-cache, no-store, must-revalidate"
  }
}
```

### Canary Configuration (`staticwebapp.config.canary.json`)

```json
{
  "routes": [
    {
      "route": "/*",
      "headers": {
        "X-Robots-Tag": "noindex, nofollow",
        "X-Environment": "canary"
      }
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
    "X-Frame-Options": "DENY",
    "X-Content-Type-Options": "nosniff",
    "Cache-Control": "no-cache, no-store, must-revalidate"
  }
}
```

## Internationalization Configuration

### Translation Files

Translation files are stored in the `i18n/` directory:

#### English (`i18n/en.yaml`)

```yaml
# Navigation
- id: "nav_home"
  translation: "Home"
- id: "nav_guide"
  translation: "Guide"
- id: "nav_creators"         # LEGACY - Kept for backward compatibility
  translation: "Creators"
- id: "nav_download"
  translation: "Download"

# Common elements
- id: "read_more"
  translation: "Read More"
- id: "download_pdf"
  translation: "Download PDF"
- id: "share"
  translation: "Share"
- id: "print"
  translation: "Print"

# Guide sections
- id: "table_of_contents"
  translation: "Table of Contents"
- id: "previous_section"
  translation: "Previous Section"
- id: "next_section"
  translation: "Next Section"

# Footer
- id: "footer_copyright"
  translation: "© 2025 Scrum Guide Expansion Pack"
- id: "footer_license"
  translation: "Licensed under CC BY-SA 4.0"
```

#### German (`i18n/de.yaml`)

```yaml
# Navigation
- id: "nav_home"
  translation: "Start"
- id: "nav_guide"
  translation: "Leitfaden"
- id: "nav_creators"
  translation: "Autoren"
- id: "nav_download"
  translation: "Download"

# Common elements
- id: "read_more"
  translation: "Weiterlesen"
- id: "download_pdf"
  translation: "PDF herunterladen"
- id: "share"
  translation: "Teilen"
- id: "print"
  translation: "Drucken"

# Guide sections
- id: "table_of_contents"
  translation: "Inhaltsverzeichnis"
- id: "previous_section"
  translation: "Vorheriger Abschnitt"
- id: "next_section"
  translation: "Nächster Abschnitt"

# Footer
- id: "footer_copyright"
  translation: "© 2025 Scrum Guide Erweiterungspaket"
- id: "footer_license"
  translation: "Lizenziert unter CC BY-SA 4.0"
```

## Git Configuration

### `.gitignore`

```gitignore
# Hugo
/public/
/resources/_gen/
/site/.hugo_build.lock

# OS generated files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# IDE files
.vscode/
.idea/
*.swp
*.swo
*~

# Logs
*.log

# Temporary files
*.tmp
*.temp

# Node.js (if using)
node_modules/
npm-debug.log
yarn-error.log

# Environment files
.env
.env.local
.env.production
```

### `.gitattributes`

```gitattributes
# Handle line endings automatically
* text=auto

# Ensure shell scripts use LF
*.sh text eol=lf

# Ensure Windows scripts use CRLF
*.bat text eol=crlf
*.cmd text eol=crlf
*.ps1 text eol=crlf

# Binary files
*.png binary
*.jpg binary
*.jpeg binary
*.gif binary
*.pdf binary
*.woff binary
*.woff2 binary
*.ttf binary
*.eot binary

# Large files
*.pdf filter=lfs diff=lfs merge=lfs -text
```

## GitHub Actions Configuration

### Main Workflow (`.github/workflows/deploy.yml`)

```yaml
name: Deploy to Azure Static Web Apps

on:
  push:
    branches: [main, preview, canary]
  pull_request:
    branches: [main]
  workflow_dispatch:

env:
  HUGO_VERSION: "0.120.4"

jobs:
  build_and_deploy:
    if: github.event_name == 'push' || (github.event_name == 'pull_request' && github.event.action != 'closed')
    runs-on: ubuntu-latest
    name: Build and Deploy Job

    steps:
      - uses: actions/checkout@v4
        with:
          submodules: true
          lfs: false

      - name: Setup Hugo
        uses: peaceiris/actions-hugo@v2
        with:
          hugo-version: ${{ env.HUGO_VERSION }}
          extended: true

      - name: Determine Environment
        id: env
        run: |
          if [[ "${{ github.ref }}" == "refs/heads/main" ]]; then
            echo "config=hugo.yaml" >> $GITHUB_OUTPUT
            echo "environment=production" >> $GITHUB_OUTPUT
          elif [[ "${{ github.ref }}" == "refs/heads/preview" ]]; then
            echo "config=hugo.preview.yaml" >> $GITHUB_OUTPUT
            echo "environment=preview" >> $GITHUB_OUTPUT
          elif [[ "${{ github.ref }}" == "refs/heads/canary" ]]; then
            echo "config=hugo.canary.yaml" >> $GITHUB_OUTPUT
            echo "environment=canary" >> $GITHUB_OUTPUT
          else
            echo "config=hugo.yaml" >> $GITHUB_OUTPUT
            echo "environment=production" >> $GITHUB_OUTPUT
          fi

      - name: Build Hugo Site
        run: |
          cd site
          hugo --config ${{ steps.env.outputs.config }} --minify --environment ${{ steps.env.outputs.environment }}

      - name: Deploy to Azure Static Web Apps
        id: builddeploy
        uses: Azure/static-web-apps-deploy@v1
        with:
          azure_static_web_apps_api_token: ${{ secrets.AZURE_STATIC_WEB_APPS_API_TOKEN }}
          repo_token: ${{ secrets.GITHUB_TOKEN }}
          action: "upload"
          app_location: "public"
          api_location: ""
          output_location: ""
          config_file_location: "staticwebapp.config.${{ steps.env.outputs.environment }}.json"

  close_pull_request_job:
    if: github.event_name == 'pull_request' && github.event.action == 'closed'
    runs-on: ubuntu-latest
    name: Close Pull Request Job
    steps:
      - name: Close Pull Request
        id: closepullrequest
        uses: Azure/static-web-apps-deploy@v1
        with:
          azure_static_web_apps_api_token: ${{ secrets.AZURE_STATIC_WEB_APPS_API_TOKEN }}
          action: "close"
```

## Development Configuration

### VS Code Settings (`.vscode/settings.json`)

```json
{
  "files.associations": {
    "*.html": "html",
    "*.yaml": "yaml",
    "*.yml": "yaml"
  },
  "emmet.includeLanguages": {
    "html": "html"
  },
  "hugo.server.renderStaticToDisk": true,
  "markdown.preview.fontSize": 14,
  "markdown.preview.lineHeight": 1.6,
  "files.exclude": {
    "public/": true,
    "resources/": true,
    "site/.hugo_build.lock": true
  }
}
```

### VS Code Extensions (`.vscode/extensions.json`)

```json
{
  "recommendations": ["budparr.language-hugo-vscode", "yzhang.markdown-all-in-one", "redhat.vscode-yaml", "ms-vscode.vscode-json", "esbenp.prettier-vscode", "streetsidesoftware.code-spell-checker"]
}
```

## Configuration Best Practices

### Security Considerations

- **Never commit secrets** to version control
- **Use environment variables** for sensitive data
- **Enable security headers** in Static Web Apps config
- **Regular updates** of dependencies and Hugo version

### Performance Optimization

- **Enable minification** in production
- **Use CDN caching** through Azure Static Web Apps
- **Optimize images** before committing
- **Monitor bundle sizes** and build times

### Maintenance

- **Regular config reviews** for outdated settings
- **Test configurations** in different environments
- **Document changes** when updating configs
- **Backup configurations** before major changes

---

🔙 **Back to**: [Documentation Home](./README.md)  
➡️ **Next**: [Troubleshooting Guide](./troubleshooting.md)
