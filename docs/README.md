# Scrum Guide Expansion Pack Documentation

Welcome to the documentation for the **Scrum Guide Expansion Pack** project. This documentation provides comprehensive information about the project structure, development workflow, and contribution guidelines.

## 🌐 Live Sites

- **Production**: [scrumexpansion.org](https://scrumexpansion.org) - **Live production site**
- **Preview**: [agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/) - **Test your contributions here before they go live**

## Quick Navigation

- [Getting Started](getting-started.md)
- [Contributing Guidelines](contributing.md)
- [Content Management](content-management.md)
- [Homepage Structure](homepage-structure.md) ⭐ **New!**

### Technical Documentation

- [Architecture Overview](architecture.md)
- [Development Guide](development.md)
- [Deployment Guide](deployment.md)
- [Configuration Reference](configuration.md)
- [Maintainer Guide](maintainer-guide.md)
- [Translation Guide](translations.md)
- [Troubleshooting](troubleshooting.md)

> **🚨 Important**: This project uses Hugo's new template system (v0.146.0+). See the [Development Guide](development.md) for details about template structure and migration.

## Project Overview

The Scrum Guide Expansion Pack is a multilingual static website built with Hugo that provides an expanded interpretation of the official 2020 Scrum Guide. The project includes:

- **Multi-language support** (English, German, Spanish, French, and more)
- **Modern responsive design** with Bootstrap 5
- **Static site generation** with Hugo
- **Automated deployment** via Azure Static Web Apps
- **PDF generation** capabilities
- **Community contribution features**

### Guide Organization

The site organizes content into two main categories:

- **Core Guide**: The foundational **Scrum Guide Expanded** document that serves as the comprehensive companion to the 2020 Scrum Guide
- **Extensions**: Additional specialized guides covering specific topics such as:
  - Adaptive Enterprise
  - Adaptive Executive Leadership
  - AI and Scrum
  - Complexity
  - Emergent Strategy and Deployment
  - Multi-Team Scrum
  - Product Thinking
  - Software Engineering Practices
  - And more...

This structure allows users to start with the core expanded guide and then explore specialized extensions based on their needs.

## Key Features

### 📚 Content Features

- Comprehensive expansion of the Scrum Guide
- Multi-language translations
- Downloadable PDF versions
- Creator profiles and attribution
- Structured navigation and table of contents

### 🔧 Technical Features

- Hugo static site generator
- Bootstrap 5 responsive design
- Font Awesome icons
- Google Analytics integration
- Azure Static Web Apps hosting
- GitHub Actions for CI/CD
- Environment-specific configurations

### 🌍 Internationalization

- English (default)
- German (Deutsch)
- Spanish (Español)
- French (Français)

## Project Structure

```text
ScrumGuide-ExpansionPack/
├── docs/                           # 📚 Documentation
├── site/                           # 🏗️ Hugo site source
│   ├── content/                    # 📝 Content files
│   │   ├── scrum-guide-expanded/  # 🎯 Core Guide
│   │   ├── adaptive-enterprise/   # 📦 Extension Guide
│   │   ├── ai-and-scrum/         # 📦 Extension Guide
│   │   ├── complexity/           # 📦 Extension Guide
│   │   └── ...                    # 📦 Other Extensions
│   ├── layouts/                    # 🎨 HTML templates
│   │   ├── index.html             # 🏠 Homepage with guide lists
│   │   ├── _partials/             # 🧩 Reusable components
│   │   │   └── components/
│   │   │       ├── core-guide-list.html       # Core guide display
│   │   │       └── extensions-guide-list.html # Extensions display
│   ├── static/                     # 📁 Static assets
│   ├── data/                       # 🗃️ Data files
│   ├── i18n/                       # 🌐 Translations
│   └── hugo.yaml                   # ⚙️ Hugo configuration
├── public/                         # 🚀 Generated site output
├── .github/                        # 🔄 GitHub Actions workflows
├── staticwebapp.config.*.json      # ⚙️ Azure SWA configs
└── readme.md                       # 📖 Project README
```

## Quick Start

1. **Clone the repository**

   ```bash
   git clone https://github.com/ScrumGuides/ScrumGuide-ExpansionPack.git
   cd ScrumGuide-ExpansionPack
   ```

2. **Install Hugo**

   ```bash
   # Using package managers
   choco install hugo-extended  # Windows (Chocolatey)
   brew install hugo            # macOS (Homebrew)
   snap install hugo           # Linux (Snap)
   ```

3. **Run the development server**

   ```bash
   cd site
   hugo server -D --bind 0.0.0.0
   ```

4. **Open your browser**
   Navigate to `http://localhost:1313`

## Contributing

We welcome contributions from the community! Please see our [Contributing Guidelines](contributing.md) for detailed information on:

- Setting up your development environment
- Content contribution process
- Translation guidelines
- Code contribution standards
- Pull request process

## Support and Community

- **GitHub Discussions**: Join conversations about the project
- **Issues**: Report bugs or suggest features
- **Pull Requests**: Contribute improvements

## License

This project is licensed under the Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) license. See the [LICENSE](.LICENSE) file for details.

## Authors and Attribution

The Scrum Guide Expansion Pack is created by:

- **Ralph Jocham**
- **John Coleman**
- **Jeff Sutherland**

Based on the original [2020 Scrum Guide](https://scrumguides.org/) by Ken Schwaber and Jeff Sutherland.

---

📚 **Next Steps**: Start with the [Getting Started Guide](getting-started.md) to set up your development environment.
