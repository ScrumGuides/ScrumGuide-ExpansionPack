# Scrum Guide Expansion Pack Documentation

Welcome to the documentation for the **Scrum Guide Expansion Pack** project. This documentation provides comprehensive information about the project structure, development workflow, and contribution guidelines.

## 🌐 Live Sites

- **Production**: [scrumexpansion.org](https://scrumexpansion.org) - **Live production site**
- **Preview**: [agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/) - **Test your contributions here before they go live**

## Quick Navigation

- [🚀 Getting Started](./getting-started.md)
- [🏗️ Architecture Overview](./architecture.md)
- [🛠️ Development Guide](./development.md)
- [🌐 Deployment Guide](./deployment.md)
- [🤝 Contributing Guidelines](./contributing.md)
- [📝 Content Management](./content-management.md)
- [🔧 Configuration Reference](./configuration.md)
- [❓ Troubleshooting](./troubleshooting.md)

## Project Overview

The Scrum Guide Expansion Pack is a multilingual static website built with Hugo that provides an expanded interpretation of the official 2020 Scrum Guide. The project includes:

- **Multi-language support** (English, German, Spanish, French)
- **Modern responsive design** with Bootstrap 5
- **Static site generation** with Hugo
- **Automated deployment** via Azure Static Web Apps
- **PDF generation** capabilities
- **Community contribution features**

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

```
ScrumGuide-ExpansionPack/
├── docs/                           # 📚 Documentation
├── site/                           # 🏗️ Hugo site source
│   ├── content/                    # 📝 Content files
│   ├── layouts/                    # 🎨 HTML templates
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

We welcome contributions from the community! Please see our [Contributing Guidelines](./contributing.md) for detailed information on:

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

This project is licensed under the Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) license. See the [LICENSE](../LICENSE) file for details.

## Authors and Attribution

The Scrum Guide Expansion Pack is created by:

- **Ralph Jocham**
- **John Coleman**
- **Jeff Sutherland**

Based on the original [2020 Scrum Guide](https://scrumguides.org/) by Ken Schwaber and Jeff Sutherland.

---

📚 **Next Steps**: Start with the [Getting Started Guide](./getting-started.md) to set up your development environment.
