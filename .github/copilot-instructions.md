# GitHub Copilot Instructions for Scrum Guide Expansion Pack

## Project Overview

This is a **Hugo-based static website** for the Scrum Guide Expansion Pack, hosted on **Azure Static Web Apps**. The site provides modern guidance for applying Scrum to complex work, AI, and adaptive strategy.

## Technology Stack

### Core Technologies

- **Hugo** - Static site generator (Extended v0.146.0+ required for new template system)
- **Go Templates** - Hugo templating engine
- **Markdown** - Content authoring
- **YAML** - Configuration and front matter
- **HTML5** - Layout templates
- **CSS3** - Custom styling
- **JavaScript** - Client-side functionality
- **PowerShell** - Automation scripts

### Hosting & Deployment

- **Azure Static Web Apps** - Primary hosting platform
- **GitHub Actions** - CI/CD pipeline
- **GitVersion** - Semantic versioning
- **Azure DevOps** - Additional pipeline support

### Testing & Quality Assurance

- **Playwright MCP Server** - Docker-based UX validation and testing
- Automated browser testing for responsive design
- Cross-browser compatibility validation

### Configuration Files

- `hugo.yaml` - Main Hugo configuration
- `staticwebapp.config.json` - Azure Static Web Apps configuration
- Environment-specific configs: `hugo.local.yaml`, `hugo.preview.yaml`, `hugo.production.yaml`, `hugo.canary.yaml`

## Project Structure

```
├── .github/                    # GitHub workflows and configurations
├── docs/                       # Project documentation
├── public/                     # Generated static site output
├── scripts/                    # PowerShell automation scripts
├── site/                       # Hugo source files
│   ├── content/               # Markdown content files
│   │   ├── scrum-guide-expanded/     # CORE GUIDE (featured on homepage)
│   │   ├── adaptive-enterprise/      # Extension Guide
│   │   ├── ai-and-scrum/             # Extension Guide
│   │   ├── complexity/               # Extension Guide
│   │   ├── multi-team-scrum/         # Extension Guide
│   │   └── ...                       # Other Extension Guides
│   ├── data/                  # Data files
│   ├── i18n/                  # Internationalization files
│   ├── layouts/               # Hugo templates (v0.146.0+ structure)
│   │   ├── index.html        # Homepage template
│   │   ├── baseof.html       # Base template (moved from _default/)
│   │   ├── single.html       # Single pages (moved from _default/)
│   │   ├── list.html         # List pages (moved from _default/)
│   │   ├── _partials/        # Reusable components (renamed from partials/)
│   │   │   ├── components/   # UI components
│   │   │   │   ├── home-hero.html              # Hero section
│   │   │   │   ├── core-guide-list.html        # Core guide display
│   │   │   │   ├── extensions-guide-list.html  # Extensions grid
│   │   │   │   └── category-list.html          # Category filters
│   │   │   └── functions/    # Helper functions
│   │   │       └── is-expansion.html           # Guide type checker
│   │   ├── _shortcodes/      # Custom shortcodes (renamed from shortcodes/)
│   │   └── _markup/          # Render hooks for markdown elements
│   ├── static/                # Static assets (CSS, images, etc.)
│   └── hugo.yaml             # Hugo configuration
└── staticwebapp.config.*.json # Azure Static Web Apps configs
```

## Development Guidelines

### Hugo-Specific Instructions

#### Content Management

- All content is written in **Markdown** with YAML front matter
- Content files are located in `site/content/`
- Use Hugo's built-in shortcodes when possible
- Follow the established content structure for consistency

#### Homepage Structure & Guide Organization

The site uses a **Core + Extensions** model:

**Homepage Sections:**

1. **Hero Section** - Welcome message and CTAs
2. **Category List** - Quick topic filters
3. **Core Guide Section** - Featured display of `scrum-guide-expanded`
4. **Extensions Section** - Grid of specialized guides
5. **Community Section** - Contribution info

**Guide Types:**

- **Core Guide** (`scrum-guide-expanded`): The foundational comprehensive companion to the 2020 Scrum Guide
  - Featured prominently with enhanced styling (primary border, "Core Document" badge)
  - Displayed in dedicated section with full-width card
  - Location: `site/content/scrum-guide-expanded/`

- **Extension Guides**: Specialized guides covering specific topics
  - Displayed in responsive grid (1-3 columns based on screen size)
  - Categories and tags for filtering
  - Examples: AI and Scrum, Complexity, Multi-Team Scrum, Product Thinking
  - Location: Various directories like `site/content/ai-and-scrum/`

**Guide Structure:**

```
guide-name/
├── _index.md          # Guide metadata with Type: "guide"
├── 2025.9/            # Latest version
│   └── index.md       # Main content
└── history/           # Version history
```

**Required Front Matter:**

```yaml
---
title: Guide Title
short_title: Short Title # Used in cards
description: Brief description
Type: "guide" # REQUIRED for homepage display
Layout: "root"
weight: 10 # For sorting (lower = higher priority)
categories:
  - Strategy # For filtering
---
```

#### Templating

- Templates are located in `site/layouts/`
- Use Hugo's Go template syntax
- **New Template System (v0.146.0+)**: Updated structure and lookup order
- Follow the current template hierarchy:
  - `baseof.html` - Base template (moved from `_default/`)
  - `home.html` - Homepage template (renamed from `index.html`)
  - `single.html` - Single pages (moved from `_default/`)
  - `list.html` - List pages (moved from `_default/`)
  - `_partials/` - Reusable components (renamed from `partials/`)
  - `_shortcodes/` - Custom shortcodes (renamed from `shortcodes/`)
  - `_markup/` - Render hooks for markdown elements (new)
  - Content-specific templates in subdirectories (enhanced path-based lookup)

#### Configuration

- Main config: `site/hugo.yaml`
- Environment-specific configs override main config
- Support for multiple output formats: HTML, JSON, RSS
- Internationalization enabled (English and Klingon)

#### Static Assets

- CSS files in `site/static/css/`
- Images and other assets in `site/static/`
- Use Hugo's asset pipeline when needed

### Styling & UI

- **Bootstrap 5** responsive design framework
- Custom CSS in `site/static/css/style.css`
- Dark theme with primary colors:
  - Primary blue: `#135289`
  - Dark cards: `#353535`
- **Font Awesome** icons used throughout
- Mobile-first responsive design
- Use Bootstrap 5 classes and components for consistency

### Content Guidelines

- Write for Scrum practitioners and leaders
- Focus on practical, actionable guidance
- Maintain consistency with Scrum Guide terminology
- **Multilingual support**: Site supports multiple languages:
  - English (en) - Default
  - German (de) - Deutsch
  - Spanish (es) - Español
  - Italian (it) - Italiano
  - Japanese (ja) - 日本語
  - Portuguese (pt) - Português
  - Polish (pl) - Polski
  - Dutch (nl) - Nederlands
  - Romanian (ro) - Română
  - Farsi (fa) - فارسی
  - Klingon (tlh) - Reference language
- Use `scripts\Create-TranslationTemplate.ps1` for adding new language support
- Ensure all content changes are reflected across all language versions
- Test content rendering in all supported languages

### UX Validation & Testing

- **Playwright MCP Server** - Use Docker-based Playwright for automated UX validation
- Test responsive design across different viewport sizes
- Validate accessibility standards compliance
- Cross-browser compatibility testing (Chrome, Firefox, Safari, Edge)
- Multilingual UX testing to ensure consistent experience across languages
- Performance testing for page load times and user interactions

### Build & Deployment

- Hugo builds to `public/` directory
- GitHub Actions workflow in `.github/workflows/main.yaml`
- Supports multiple deployment rings: local, preview, canary, production
- Azure Static Web Apps configuration handles routing and auth

## Coding Standards

### File Naming

- Use kebab-case for files and directories
- Markdown files: lowercase with hyphens
- Template files: descriptive names with `.html` extension
- Config files: environment-specific suffixes

### Hugo Best Practices

- Use Hugo's built-in functions when available
- Leverage partials for reusable components (now in `_partials/`)
- **Template System**: Follow Hugo v0.146.0+ new template structure and lookup order
- **Internal Templates**: Replace `{{ template "_internal/..." }}` with `{{ partial "..." }}`
- Implement proper SEO with meta tags and structured data
- Use Hugo's image processing for optimization
- Implement proper caching strategies

### Content Structure

- Consistent front matter across all content
- Proper heading hierarchy (H1 for titles, H2+ for sections)
- Use Hugo's taxonomy system for categorization
- Implement proper internal linking

**Guide Versioning:**

- Each guide has versioned content in dated directories (e.g., `2025.9/`, `2025.6/`)
- Guide metadata in `_index.md` at guide root
- Actual content in version subdirectories
- Latest version is automatically detected and displayed

**Homepage Display Logic:**

- Core guide (`scrum-guide-expanded`) is hard-coded in `core-guide-list.html`
- Extensions are automatically collected from all sections with `Type: "guide"`
- `is-expansion.html` helper function filters out the core guide
- Sorting by `weight` (lower numbers appear first)

### Performance

- Optimize images using Hugo's image processing
- Minimize CSS and JavaScript
- Use Hugo's minification features
- Implement proper caching headers

## Development Workflow

### Local Development

1. **Development server** (from project root):
   ```bash
   hugo serve --source site --config hugo.yaml,hugo.local.yaml
   ```
2. **Build only** (from project root):
   ```bash
   hugo --source site --config hugo.yaml,hugo.local.yaml
   ```
3. Use `hugo.local.yaml` for local configuration overrides
4. Test responsive Bootstrap 5 design across devices
5. Test content in all supported languages
6. **UX Validation** - Use Playwright MCP server for automated testing and validation

### Content Creation

1. Create new content using Hugo archetypes
2. Follow established front matter structure
3. Use markdown best practices
4. Test content in all supported languages

### Deployment

1. Changes to `main` branch trigger automatic deployment
2. Pull requests create preview deployments
3. Use environment-specific configurations
4. Monitor Azure Static Web Apps deployment status

## Integration Points

### Azure Static Web Apps Features

- Authentication with GitHub providers
- Custom routing rules
- Environment-specific configurations
- Global CDN distribution

### GitHub Integration

- Actions for CI/CD
- Branch protection rules
- Issue and PR templates
- Community contribution guidelines

### Adding New Language Translations

Use the PowerShell script to create complete translation templates:

```powershell
# Create a new language translation (from project root)
.\scripts\Create-TranslationTemplate.ps1 -LanguageCode "de" -LanguageName "German" -Title "Scrum Guide Erweiterungspaket"

# Create translation with all optional parameters
.\scripts\Create-TranslationTemplate.ps1 -LanguageCode "es" -LanguageName "Spanish" -Weight 3 -Description "Guía de expansión Scrum" -Keywords "Scrum, guía" -Force
```

This script automatically:

- Adds language configuration to `hugo.yaml`
- Creates i18n translation files in `site/i18n/`
- Creates translated content files based on English defaults
- Validates the translation setup

### Updating Styles

- Modify `site/static/css/style.css`
- Follow existing CSS patterns
- Test across browsers and devices

### Configuration Changes

- Update appropriate `hugo.*.yaml` file
- Test with Hugo server before deployment
- Consider impact on all environments

## Troubleshooting

### Common Issues

- **Build failures**: Check Hugo version compatibility (v0.146.0+ required)
- **Template errors**: Verify new template system structure (\_partials/, \_shortcodes/, \_markup/)
- **Missing assets**: Verify file paths and Hugo's asset pipeline
- **Internationalization**: Ensure all translation keys exist
- **Deployment issues**: Check Azure Static Web Apps logs

### Debug Commands

```bash
# Hugo version and environment info
hugo version
hugo env

# Build with verbose output
hugo --verbose

# Check configuration
hugo config
```

## Hugo Template System (v0.146.0+)

This project uses Hugo's new template system introduced in v0.146.0. Key changes to be aware of:

### Template Structure Changes

- **No `_default/` folder**: All default templates are now in the root `layouts/` directory
- **Renamed folders**: `partials/` → `_partials/`, `shortcodes/` → `_shortcodes/`
- **New `_markup/` folder**: For render hooks (links, images, code blocks, etc.)
- **Homepage template**: `index.html` → `home.html`

### Template Lookup Order

The new system considers these identifiers in order of importance:

1. **Custom Layout** - Set in front matter (`layout: myCustomLayout`)
2. **Page Kinds** - `home`, `section`, `taxonomy`, `term`, `page`
3. **Standard Layouts** - `list`, `single`, `all`
4. **Output Format** - `html`, `rss`, `json`
5. **Language** - `en`, `de`, `es`, etc.
6. **Page Path** - Content-specific paths for targeted templates

### Path-Based Templates

You can organize templates by content structure:

```text
layouts/
├── baseof.html              # Global base template
├── index.html              # Homepage (main entry point)
├── single.html             # Default single page
├── guide/                  # Guide-specific templates
│   ├── single.html        # Override for guide pages
│   └── list.html          # Override for guide lists
└── _partials/              # Reusable components
    ├── components/         # UI components
    │   ├── home-hero.html            # Hero section
    │   ├── core-guide-list.html      # Core guide display
    │   ├── extensions-guide-list.html # Extensions grid
    │   ├── category-list.html        # Category filters
    │   └── guide/                     # Guide-specific components
    └── functions/          # Helper functions
        └── is-expansion.html         # Determines if guide is extension
```

### Key Homepage Components

**`core-guide-list.html`**: Displays the `scrum-guide-expanded` guide

- Hard-coded to fetch `/scrum-guide-expanded` page
- Enhanced styling with primary border and "Core Document" badge
- Shows contributors, reading time, and description

**`extensions-guide-list.html`**: Displays all other guides

- Automatically collects all sections with `Type: "guide"`
- Filters out core guide using `is-expansion.html` helper
- Responsive grid layout (1-3 columns)
- Shows categories, reading time, and language indicators
- Supports category/tag filtering on taxonomy pages

**`is-expansion.html`**: Helper function

- Returns `true` for extension guides, `false` for core guide
- Checks section name and content base name
- Used to separate core from extensions

### Internal Template Migration

Replace old internal template calls:

```html
<!-- Old Way -->
{{ template "_internal/opengraph.html" . }}

<!-- New Way -->
{{ partial "opengraph.html" . }}
```

## Additional Resources

- [Hugo Documentation](https://gohugo.io/documentation/)
- [Azure Static Web Apps Documentation](https://docs.microsoft.com/en-us/azure/static-web-apps/)
- [Project Contributing Guidelines](../docs/contributing.md)
- [Homepage Structure Guide](../docs/homepage-structure.md) - **Detailed guide organization explanation**
- [Content Management Guide](../docs/content-management.md)
- [Architecture Overview](../docs/architecture.md)
- [Project README](../readme.md)

---

When working on this project, always consider the multilingual nature, responsive design requirements, and the professional Scrum community audience. Prioritize accessibility, performance, and maintainability in all contributions.
