# GitHub Copilot Instructions for Scrum Guide Expansion Pack

## Project Overview

This is a **Hugo-based static website** for the Scrum Guide Expansion Pack, hosted on **Azure Static Web Apps**. The site provides modern guidance for applying Scrum to complex work, AI, and adaptive strategy.

## Technology Stack

### Core Technologies
- **Hugo** - Static site generator
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
│   ├── data/                  # Data files
│   ├── i18n/                  # Internationalization files
│   ├── layouts/               # Hugo templates
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

#### Templating
- Templates are located in `site/layouts/`
- Use Hugo's Go template syntax
- Follow the existing template hierarchy:
  - `baseof.html` - Base template
  - `list.html` - List pages
  - `single.html` - Single pages
  - Custom section templates in subdirectories

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
- **Bootstrap-based** responsive design
- Custom CSS in `site/static/css/style.css`
- Dark theme with primary colors:
  - Primary blue: `#135289`
  - Dark cards: `#353535`
- **Font Awesome** icons used throughout
- Mobile-first responsive design

### Content Guidelines
- Write for Scrum practitioners and leaders
- Focus on practical, actionable guidance
- Maintain consistency with Scrum Guide terminology
- Support multiple languages (currently English and Klingon)
- Use `scripts\Create-TranslationTemplate.ps1` for adding new language support

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
- Leverage partials for reusable components
- Implement proper SEO with meta tags and structured data
- Use Hugo's image processing for optimization
- Implement proper caching strategies

### Content Structure
- Consistent front matter across all content
- Proper heading hierarchy (H1 for titles, H2+ for sections)
- Use Hugo's taxonomy system if categorization is needed
- Implement proper internal linking

### Performance
- Optimize images using Hugo's image processing
- Minimize CSS and JavaScript
- Use Hugo's minification features
- Implement proper caching headers

## Development Workflow

### Local Development
1. Navigate to `site/` directory
2. Run `hugo server` for development
3. Use `hugo.local.yaml` for local configuration overrides
4. Test responsive design across devices

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

## Common Tasks

### Adding New Content
```bash
# Create new content file
hugo new content/path/to/new-content.md

# Add translations for existing content
hugo new content/path/to/new-content.tlh.md
```

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
- **Build failures**: Check Hugo version compatibility
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

## Additional Resources

- [Hugo Documentation](https://gohugo.io/documentation/)
- [Azure Static Web Apps Documentation](https://docs.microsoft.com/en-us/azure/static-web-apps/)
- [Project Contributing Guidelines](../docs/contributing.md)
- [Project README](../readme.md)

---

When working on this project, always consider the multilingual nature, responsive design requirements, and the professional Scrum community audience. Prioritize accessibility, performance, and maintainability in all contributions.
