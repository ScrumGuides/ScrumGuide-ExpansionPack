# 🛠️ Development Guide

This guide provides detailed information for developers working on the Scrum Guide Expansion Pack project.

## 🌐 Live Sites for Reference

- **Production**: [scrumexpansion.org](https://scrumexpansion.org) - **Live production site**
- **Preview**: [agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/) - **preview environment with latest changes in MAIN**
- **Canary**: [agreeable-island-0c966e810-{PR-NUMBER}.centralus.6.azurestaticapps.net](https://agreeable-island-0c966e810-{PR-NUMBER}.centralus.6.azurestaticapps.net/) - **Test environment with latest changes in the PR - Deleted after PR closed**

## Development Environment Setup

Use the [shared setup guide](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/setup.md) and [site context](getting-started.md). Root `build.ps1` is the supported build/serve/validation entry point; the [shared validation guide](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/validation.md) explains commands and evidence. Site-owned template overrides, Bootstrap styling, catalogues and delivery configuration remain local responsibilities.

On a new machine, ask an administrator to run `Install-Module powershell-yaml -MinimumVersion 0.4.12 -Scope AllUsers` in PowerShell 7. Once installed, open an ordinary PowerShell 7 window in your local copy of the repository. Run `./build.ps1 -Target preview` to build and check the site or `./build.ps1 -Stage Serve -Target local` to start the local preview.

## Code Standards and Guidelines

### File Organization

```text
site/
├── content/              # Content files (.md)
├── layouts/              # Templates (.html) - Local overrides only
│   ├── index.html       # Homepage template (local override)
│   ├── categories/      # Category templates (local)
│   ├── creators/        # Creator templates (legacy, local)
│   ├── _partials/       # Reusable template components (local overrides)
│   ├── _markup/         # Render hooks for markdown elements (local)
│   │
│   └── [FROM MODULE: baseof.html, home.html, single.html, list.html]
│       # Base templates provided by github.com/nkdAgility/OpenGuidePlatform/system/OpenGuidePlatform.Hugo.Guides
│       # See hugo.yaml module imports for details
├── static/               # Static assets
├── data/                 # Data files (.yaml/.json)
├── i18n/                 # Translations (.yaml)
└── hugo.yaml            # Configuration (includes module imports)
```

**Important**: This site uses [Hugo Modules](https://github.com/nkdAgility/OpenGuidePlatform/) for the majority of its template functionality. Base templates (`baseof.html`, `home.html`, `single.html`, `list.html`) are provided by the imported module and do not exist in the local `layouts/` directory.

### Naming Conventions

- **Files**: Use kebab-case (`my-file.md`)
- **Directories**: Use kebab-case (`my-directory/`)
- **Templates**: Use kebab-case (`my-template.html`)
- **CSS Classes**: Use Bootstrap conventions
- **Variables**: Use camelCase in templates

### Content Guidelines

- Use **front matter** for all content files
- Follow **Markdown** best practices
- Include **meta descriptions** for SEO
- Use **semantic HTML** in templates
- Ensure **accessibility** compliance

## Working with Content

### Content Structure

```yaml
---
title: "Page Title"
description: "Page description for SEO"
date: 2025-06-09
draft: false
weight: 10
language: "en"
---
# Page Content
Your markdown content here...
```

### Creating New Pages

Use the [shared content operations](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/content.md) and obtain the relevant guide owner's approval. Preserve bespoke wrapper layouts and catalogue relationships; a manually created file is not a substitute for discovery or supported edition operations.

### Content Best Practices

1. **Front Matter**

   - Always include `title`, `description`, `date`
   - Use `weight` for ordering
   - Set `draft: false` when ready to publish

2. **Markdown**

   - Use semantic heading hierarchy (H1 → H2 → H3)
   - Include alt text for images
   - Use relative links for internal pages

3. **Images**
   - Place in `/static/images/` directory
   - Use descriptive filenames
   - Optimize for web (WebP preferred)

## Working with Layouts

### Template Development (Hugo v0.146.0+ New Template System)

Hugo's new template system uses a simplified structure with enhanced template lookup. The key changes include:

#### Template Structure Changes

- **No more `_default/` folder**: All default templates are now in the root `layouts/` directory
- **Renamed folders**: `partials/` → `_partials/`, `shortcodes/` → `_shortcodes/`
- **New `_markup/` folder**: For render hooks (links, images, code blocks, etc.)
- **Simplified naming**: `index.html` → `home.html`, page-kind-specific templates

#### Template Development

Hugo uses Go templates with the following structure:

```html
{{ define "main" }}
<main class="container">
  <h1>{{ .Title }}</h1>
  <div class="content">{{ .Content }}</div>
</main>
{{ end }}
```

#### New Template Lookup Order

The new template lookup considers these identifiers in order of importance:

1. **Custom Layout** - Set in front matter (`layout: myCustomLayout`)
2. **Page Kinds** - `home`, `section`, `taxonomy`, `term`, `page`
3. **Standard Layouts** - `list`, `single`
4. **Output Format** - `html`, `rss`, `json`
5. **Language** - `en`, `de`, `es`, etc.
6. **Page Path** - Specific content paths

### Key Template Variables

- `{{ .Title }}` - Page title
- `{{ .Content }}` - Page content
- `{{ .Params }}` - Front matter parameters
- `{{ .Site }}` - Site configuration
- `{{ .Language }}` - Current language

### Partial Templates

Create reusable components in `/layouts/_partials/` (note the underscore prefix):

```html
<!-- layouts/_partials/components/my-component.html -->
<div class="my-component">
  <h2>{{ .title }}</h2>
  <p>{{ .content }}</p>
</div>
```

Use in templates:

```html
{{ partial "components/my-component.html" (dict "title" "My Title" "content" "My content") }}
```

### Content-Specific Templates

This site uses Hugo Modules for base templates. You can create local overrides or content-specific templates:

```text
layouts/
├── index.html               # Local homepage override
├── categories/              # Category-specific templates (local)
│   └── list.html
├── creators/                # Creator profiles (legacy, local)
│   ├── single.html
│   └── list.html
├── _partials/               # Local partial overrides
│   ├── components/
│   │   ├── navigation.html
│   │   └── language-switcher.html
│   └── functions/
│       └── get-page-param.html
└── _markup/                 # Custom render hooks (local)
    ├── render-blockquote.html
    └── render-image.html

# Base templates from module (not in local layouts/):
# - baseof.html              # Module-provided base template
# - home.html                # Module-provided homepage
# - single.html              # Module-provided single page
# - list.html                # Module-provided list page
```

**Note**: To override a module template, create a file with the same name in your local `layouts/` directory.

## Internationalization (i18n)

Use the [shared site-language procedure](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/add-language.md) and [local translation policy](translations.md). Preserve i18n identifiers, placeholders, categories/tags and machine values in bespoke templates. Use OGP discovery for actual wrappers and editions; do not assume language subdirectories or a fixed guide inventory.

## Styling and CSS

### Bootstrap 5 Usage

The project uses Bootstrap 5 as the primary CSS framework:

```html
<!-- Use Bootstrap classes -->
<div class="container">
  <div class="row">
    <div class="col-md-8">
      <p class="lead">Content here</p>
    </div>
  </div>
</div>
```

### Custom CSS

Add custom styles to `/static/css/style.css`:

```css
/* Custom component styles */
.scrum-guide-content {
  font-family: "Inter", sans-serif;
  line-height: 1.6;
}

.creator-profile {
  border-radius: 0.5rem;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}
```

### CSS Best Practices

- Use Bootstrap classes first
- Create component-specific CSS classes
- Follow BEM methodology for custom classes
- Ensure responsive design
- Test across different screen sizes

## Testing and Quality Assurance

### Local Testing

Follow the [shared root-entry-point validation procedure](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/validation.md). Inspect site-owned templates, navigation, responsive layouts and the selected language before requesting review.

### Content Validation

- ✅ All links work correctly
- ✅ Images load and have alt text
- ✅ Meta descriptions are present
- ✅ Front matter is complete
- ✅ Markdown syntax is correct

### Cross-browser Testing

Test the site in:

- ✅ Chrome/Chromium
- ✅ Firefox
- ✅ Safari (if on macOS)
- ✅ Edge
- ✅ Mobile browsers

## Debugging and Troubleshooting

### Common Issues

#### Hugo Server Won't Start

```powershell
# Check Hugo version
hugo version

# Verify you're in the correct directory
cd site

# Check configuration
hugo config
```

#### Content Not Appearing

1. Check front matter has `draft: false`
2. Verify file is in correct location
3. Check template is rendering content
4. Review Hugo's content organization rules

#### Styling Issues

1. Check Bootstrap classes are correct
2. Verify custom CSS is loaded
3. Inspect browser developer tools
4. Clear browser cache

### Debug Mode

Retain root-entry-point logs and the prepared evidence directory when diagnosing a site defect. Report shared command/template defects to OGP; preserve the installed module pin while investigating.

## Performance Optimization

### Build Optimization

Use root-entry-point builds for acceptance. Changes to the site's delivery or shared build behavior need maintainer review and OGP validation; do not replace the pipeline with an ad hoc Hugo command.

### Asset Optimization

- **Images**: Use WebP format when possible
- **CSS**: Minimize custom CSS
- **JavaScript**: Only include necessary scripts
- **Fonts**: Use system fonts or optimize web fonts

## Git Workflow

### Branch Strategy

```powershell
# Create feature branch
git checkout -b feature/my-new-feature

# Make changes and commit
git add .
git commit -m "feat: add new feature description"

# Push and create pull request
git push origin feature/my-new-feature
```

### Commit Messages

Follow conventional commit format:

- `feat:` - New features
- `fix:` - Bug fixes
- `docs:` - Documentation changes
- `style:` - Code style changes
- `refactor:` - Code refactoring
- `test:` - Test additions/changes

## IDE Setup (VS Code)

### Recommended Extensions

- **Hugo Language and Syntax Support**
- **Markdown All in One**
- **YAML**
- **GitLens**
- **Prettier**
- **Bootstrap 5 Quick Snippets**

### VS Code Settings

```json
{
  "files.associations": {
    "*.html": "html"
  },
  "emmet.includeLanguages": {
    "html": "html"
  }
}
```

## Advanced Development

### Custom Shortcodes

Create reusable content components:

```html
<!-- layouts/shortcodes/alert.html -->
<div class="alert alert-{{ .Get 0 }}" role="alert">{{ .Inner }}</div>
```

Usage in content:

```markdown
{{< alert "info" >}}
This is an info alert.
{{< /alert >}}
```

### Data Files

Use data files for structured content:

```yaml
# data/guides.yaml
- name: "Scrum Guide Expanded"
  slug: "scrum-guide-expanded"
  type: "core"
  current_version: "2026.1"

- name: "Complexity"
  slug: "complexity"
  type: "extension"
  current_version: "2026.1"
```

Access in templates:

```html
{{ range .Site.Data.guides }}
<div class="guide">
  <h3>{{ .name }}</h3>
  <p>Version: {{ .current_version }}</p>
</div>
{{ end }}
```

## Hugo Template System Migration (v0.146.0+)

> **Note for This Project**: This site uses [Hugo Modules](https://github.com/nkdAgility/OpenGuidePlatform/) for template management. Base templates (`baseof.html`, `home.html`, `single.html`, `list.html`) come from the imported module, **not from the local `layouts/` directory**. The migration notes below apply to Hugo v0.146.0+ in general but are less relevant to this project since most templates are module-provided.

This project uses Hugo's new template system introduced in v0.146.0. Here's what you need to know:

### Key Changes Summary

| **Old System**        | **New System**         | **Action Required**                   |
| --------------------- | ---------------------- | ------------------------------------- |
| `layouts/_default/`   | `layouts/` (root)      | Move all `_default` templates to root |
| `layouts/partials/`   | `layouts/_partials/`   | Rename folder with underscore prefix  |
| `layouts/shortcodes/` | `layouts/_shortcodes/` | Rename folder with underscore prefix  |
| `layouts/index.html`  | `layouts/home.html`    | Rename homepage template              |
| `list-baseof.html`    | `baseof.list.html`     | Move identifier after first dot       |

### Migration Examples

#### Before (Old Template System)

```text
layouts/
├── _default/
│   ├── baseof.html
│   ├── single.html
│   ├── list.html
│   └── index.html
├── partials/
│   └── header.html
└── shortcodes/
    └── button.html
```

#### After (New Template System)

```text
layouts/
├── baseof.html          # Moved from _default/
├── single.html          # Moved from _default/
├── list.html           # Moved from _default/
├── home.html           # Renamed from index.html
├── _partials/          # Renamed from partials/
│   └── header.html
└── _shortcodes/        # Renamed from shortcodes/
    └── button.html
```

### Template Lookup Changes

The new system uses a more intuitive lookup order:

1. **Custom Layout** - Set in front matter (`layout: custom`)
2. **Page Kind** - `home`, `section`, `taxonomy`, `term`, `page`
3. **Standard Layout** - `list`, `single`, `all`
4. **Output Format** - `html`, `rss`, `json`
5. **Language** - `en`, `de`, `es`
6. **Page Path** - Content-specific paths

### Path-Based Templates

You can now organize templates by content structure:

```text
layouts/
├── baseof.html              # Global base template
├── home.html               # Homepage
├── single.html             # Default single page
├── guide/                  # Guide-specific templates
│   ├── single.html        # Override for guide pages
│   └── list.html          # Override for guide lists
└── creators/               # Creator-specific templates
    └── single.html        # Override for creator pages
```

### Internal Template Changes

Replace internal template calls with partials:

```html
<!-- Old Way -->
{{ template "_internal/opengraph.html" . }}

<!-- New Way -->
{{ partial "opengraph.html" . }}
```

### Upgrading Notes

1. **Minimum Version**: Hugo Extended v0.146.0 or higher
2. **Breaking Changes**: Some old template calls may not work
3. **Testing Required**: Verify all templates render correctly
4. **Documentation**: Update any custom documentation

For more details, see the [official Hugo template system overview](https://gohugo.io/templates/new-templatesystem-overview/).

## CI/CD Integration

The project uses GitHub Actions for automated builds and deployments. See deployment configuration in `.github/workflows/`.

### Local Build Testing

Use the [shared validation guide](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/validation.md) and root entry point. Test the bespoke wrapper, core/extension catalogues, creator profiles and production exclusions. Local production validation does not deploy.

---

🔙 **Back to**: [Documentation Home](./README.md)  
➡️ **Next**: [Deployment Guide](./deployment.md)
