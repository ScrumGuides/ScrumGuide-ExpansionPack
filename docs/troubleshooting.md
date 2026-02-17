# ❓ Troubleshooting Guide

This guide helps you diagnose and resolve common issues when working with the Scrum Guide Expansion Pack project.

## Common Issues and Solutions

### 🔧 Hugo Setup Issues

#### Hugo Not Found

**Problem**: Command `hugo` not found after installation.

**Solutions**:

```powershell
# Check if Hugo is installed
hugo version

# If not found, install Hugo Extended
# Windows (Chocolatey)
choco install hugo-extended

# Windows (Scoop)
scoop install hugo-extended

# Verify installation
hugo env
```

#### Wrong Hugo Version

**Problem**: Site doesn't build due to Hugo version mismatch.

**Check Requirements**:

```powershell
# Check current Hugo version
hugo version

# Required: Hugo Extended v0.146.0 or higher (for new template system)
# Upgrade if necessary
choco upgrade hugo-extended
```

#### Hugo Extended Missing

**Problem**: Error about missing Hugo Extended features.

**Solution**:

```powershell
# Verify you have Hugo Extended
hugo env | Select-String "extended"

# Should show: extended: true
# If false, reinstall Hugo Extended
```

### 🚀 Development Server Issues

#### Server Won't Start

**Problem**: `hugo server` fails to start.

**Diagnostic Steps**:

```powershell
# Navigate to correct directory
cd site

# Check Hugo configuration
hugo config

# Try with verbose output
hugo server -D --verbose --debug

# Check for port conflicts
netstat -an | Select-String ":1313"
```

**Common Solutions**:

- Ensure you're in the `/site` directory
- Check that port 1313 isn't already in use
- Verify `hugo.yaml` syntax is correct
- Clear Hugo cache: `hugo --gc`

#### Content Not Appearing

**Problem**: New content doesn't show on the site.

**Checklist**:

- [ ] File is in correct location (`/content/`)
- [ ] Front matter includes `draft: false`
- [ ] File has `.md` extension
- [ ] Content follows proper Markdown syntax
- [ ] Hugo server was restarted after adding content

**Debug Commands**:

```powershell
# List all content Hugo recognizes
hugo list all

# Check specific content
hugo list drafts
hugo list future
hugo list expired
```

#### Live Reload Not Working

**Problem**: Changes don't automatically refresh the browser.

**Solutions**:

```powershell
# Start server with explicit live reload
hugo server -D --liveReload --watch

# Try binding to all interfaces
hugo server -D --bind 0.0.0.0 --liveReload

# Clear browser cache (Ctrl+F5)
```

### 🌐 Multi-language Issues

#### Language Switching Not Working

**Problem**: Language switcher doesn't work properly.

**Check Configuration**:

```yaml
# Verify in hugo.yaml
languages:
  en:
    languageName: "English"
    weight: 1
  de:
    languageName: "Deutsch"
    weight: 2
```

**Verify Content Structure**:

```
content/
├── en/
│   └── guide/
│       └── index.md
└── de/
    └── guide/
        └── index.md
```

#### Missing Translations

**Problem**: Some text appears in wrong language.

**Solutions**:

1. **Check i18n files**:

   ```yaml
   # i18n/en.yaml
   - id: "nav_home"
     translation: "Home"

   # i18n/de.yaml
   - id: "nav_home"
     translation: "Start"
   ```

2. **Verify template usage**:

   ```html
   {{ i18n "nav_home" }}
   ```

3. **Check for missing translations**:

   ```powershell
   # Search for untranslated strings
   Select-String -Path "layouts/**/*.html" -Pattern "{{ i18n" | Where-Object { $_.Line -notmatch "translation" }
   ```

### 📝 Content Issues

#### Markdown Not Rendering

**Problem**: Markdown content appears as plain text.

**Common Causes**:

- Incorrect file extension (should be `.md`)
- Missing or malformed front matter
- Hugo goldmark configuration issues

**Solutions**:

```powershell
# Test markdown processing
hugo server -D --verbose

# Check goldmark configuration in hugo.yaml
markup:
  goldmark:
    renderer:
      unsafe: true
```

#### Images Not Loading

**Problem**: Images don't display on the site.

**Diagnostic Steps**:

1. **Check file location**:

   ```
   static/images/your-image.jpg  # ✅ Correct
   content/images/your-image.jpg # ❌ Wrong
   ```

2. **Verify image path in markdown**:

   ```markdown
   ![Alt text](/images/your-image.jpg) # ✅ Correct
   ![Alt text](images/your-image.jpg) # ❌ Wrong
   ```

3. **Check file permissions**:

   ```powershell
   # Verify file exists and is readable
   Test-Path "static/images/your-image.jpg"
   ```

#### Front Matter Errors

**Problem**: Content doesn't appear due to front matter issues.

**Valid Front Matter Example**:

```yaml
---
title: "Page Title"
description: "Page description"
date: 2025-06-09
draft: false
weight: 10
---
```

**Common Issues**:

- Missing closing `---`
- Invalid YAML syntax (tabs instead of spaces)
- Missing required fields

### 🔨 Build Issues

#### Build Fails

**Problem**: `hugo` command fails to build the site.

**Diagnostic Steps**:

```powershell
# Build with verbose output
hugo --verbose --debug

# Check for template errors
hugo --templateMetrics

# Validate configuration
hugo config
```

**Common Solutions**:

- Fix template syntax errors
- Resolve missing partials or layouts
- Check for circular references
- Verify all required assets exist

#### Slow Build Times

**Problem**: Hugo takes too long to build.

**Performance Analysis**:

```powershell
# Analyze build performance
hugo --templateMetrics --templateMetricsHints

# Check what's being processed
hugo --verbose | Select-String "processing"
```

**Optimization Tips**:

- Use `hugo --gc` to clean up
- Optimize large images
- Review template complexity
- Enable caching for development

### 🚀 Deployment Issues

#### GitHub Actions Failing

**Problem**: Deployment workflow fails.

**Check Workflow Status**:

```powershell
# Using GitHub CLI
gh run list --workflow=deploy.yml
gh run view --log <run-id>
```

**Common Issues**:

- Missing secrets in repository settings
- Incorrect Azure Static Web Apps token
- Hugo version mismatch in workflow
- Build errors not caught locally

#### Azure Static Web Apps Issues

**Problem**: Site doesn't deploy or load correctly.

**Configuration Checklist**:

- [ ] `staticwebapp.config.json` is valid JSON
- [ ] Routes are configured correctly
- [ ] Build output is in correct directory
- [ ] Custom domain is configured properly

**Debug Steps**:

1. **Check Azure portal** for deployment logs
2. **Verify build output** in GitHub Actions
3. **Test routes** manually
4. **Check browser console** for errors

### 🎨 Styling Issues

#### Bootstrap Not Loading

**Problem**: Bootstrap styles not applied.

**Solutions**:

```html
<!-- Check that Bootstrap is included in the base template -->
<!-- Note: Base templates (baseof.html, home.html, etc.) come from the -->
<!-- Hugo module: github.com/nkdAgility/HugoGuides/module -->
<!-- To override, create baseof.html in local layouts/ directory -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
```

#### Custom CSS Not Applied

**Problem**: Custom styles don't appear.

**Checklist**:

- [ ] CSS file is in `/static/css/` directory
- [ ] CSS is linked in template
- [ ] Browser cache is cleared
- [ ] CSS syntax is correct

**Debug Steps**:

```powershell
# Check CSS file exists
Test-Path "static/css/style.css"

# Verify CSS is served
# Visit: http://localhost:1313/css/style.css
```

### 🔍 SEO and Analytics Issues

#### Google Analytics Not Working

**Problem**: Analytics not tracking visits.

**Check Configuration**:

```yaml
# In hugo.yaml
params:
  googleAnalytics: "G-XXXXXXXXXX"
```

**Verify Implementation**:

```html
<!-- Should be in <head> section -->
{{ if .Site.Params.googleAnalytics }}
<!-- Google Analytics code -->
{{ end }}
```

#### Meta Tags Missing

**Problem**: SEO meta tags not appearing.

**Check Template**:

```html
<!-- In baseof.html <head> section -->
<meta name="description" content="{{ .Description }}" />
<meta property="og:title" content="{{ .Title }}" />
<meta property="og:description" content="{{ .Description }}" />
```

### 🔧 Performance Issues

#### Slow Page Load

**Problem**: Pages load slowly.

**Optimization Checklist**:

- [ ] **Images optimized** (WebP format, appropriate sizes)
- [ ] **Minification enabled** (`hugo --minify`)
- [ ] **CDN caching** configured
- [ ] **Unused assets removed**

**Performance Testing**:

```powershell
# Test with Hugo's built-in server
hugo server --minify

# Use browser dev tools to analyze performance
# Check Network tab for slow resources
```

#### Large Bundle Size

**Problem**: Generated site is too large.

**Analysis**:

```powershell
# Check generated site size
cd public
Get-ChildItem -Recurse | Measure-Object -Property Length -Sum
```

**Optimization**:

- Compress images before adding to `/static/`
- Remove unused CSS and JavaScript
- Use Hugo's image processing for responsive images
- Enable minification and compression

## Environment-Specific Issues

### 🏠 Local Development

**Common Issues**:

- Port 1313 already in use
- File path issues on Windows
- Hugo cache corruption

**Solutions**:

```powershell
# Use different port
hugo server -D --port 1314

# Clear Hugo cache
hugo --gc

# Reset development environment
Remove-Item -Recurse -Force public/, resources/
```

### 🔄 Preview Environment

**Common Issues**:

- Robots.txt blocking indexing
- Different configuration not loading
- Analytics not working in preview

**Check Configuration**:

```yaml
# hugo.preview.yaml should have:
enableRobotsTXT: false
params:
  googleAnalytics: "" # Disabled for preview
```

### 🚀 Production Environment

**Common Issues**:

- SSL certificate problems
- Custom domain not working
- Caching issues

**Solutions**:

1. **SSL Issues**: Wait for certificate provisioning (up to 24 hours)
2. **Domain Issues**: Check DNS configuration
3. **Caching**: Clear CDN cache in Azure portal

## Getting Help

### 🔍 Self-Diagnosis Steps

1. **Check Hugo version** and ensure it's Extended
2. **Verify you're in correct directory** (`/site` for Hugo commands)
3. **Test with minimal configuration** to isolate issues
4. **Check browser console** for JavaScript errors
5. **Review recent changes** that might have caused issues

### 📝 Logging and Debug Information

```powershell
# Enable verbose logging
hugo server -D --verbose --debug --log

# Generate configuration info
hugo config > hugo-config-dump.txt

# List all content
hugo list all > content-list.txt
```

### 🆘 When to Seek Help

Create a GitHub issue when you:

- ✅ **Followed troubleshooting steps** above
- ✅ **Provided detailed error messages**
- ✅ **Included system information** (Hugo version, OS, etc.)
- ✅ **Described steps to reproduce** the issue

### 📋 Issue Template

When reporting issues, include:

```
## Problem Description
Brief description of the issue

## Environment
- OS: Windows/macOS/Linux
- Hugo Version: (from `hugo version`)
- Browser: Chrome/Firefox/Safari
- Environment: Local/Preview/Production

## Steps to Reproduce
1. Step one
2. Step two
3. Expected vs actual result

## Error Messages
```

Paste any error messages here

```

## Additional Context
Any other relevant information
```

### 🔗 Useful Resources

- **Hugo Documentation**: [https://gohugo.io/documentation/](https://gohugo.io/documentation/)
- **Azure Static Web Apps Docs**: [https://docs.microsoft.com/azure/static-web-apps/](https://docs.microsoft.com/azure/static-web-apps/)
- **Bootstrap Documentation**: [https://getbootstrap.com/docs/](https://getbootstrap.com/docs/)
- **GitHub Actions Docs**: [https://docs.github.com/actions](https://docs.github.com/actions)

---

🔙 **Back to**: [Documentation Home](./README.md)  
🏠 **Return to**: [Project Root](../README.md)
