# 🚀 Getting Started

This guide will help you set up your development environment and get the Scrum Guide Expansion Pack project running locally.

## Prerequisites

Before you begin, ensure you have the following installed on your system:

### Required Software

1. **Git** - Version control system

   - [Download Git](https://git-scm.com/downloads)
   - Verify installation: `git --version`

2. **Hugo Extended** - Static site generator

   - **Windows**: `choco install hugo-extended` (using Chocolatey)
   - **macOS**: `brew install hugo` (using Homebrew)
   - **Linux**: `snap install hugo` (using Snap)
   - Verify installation: `hugo version`
   - **Required version**: Hugo v0.118.0 or higher (Extended version)

3. **Text Editor** (recommended)
   - [Visual Studio Code](https://code.visualstudio.com/) with Hugo extensions
   - [IntelliJ IDEA](https://www.jetbrains.com/idea/)
   - Any text editor of your choice

### Optional Software

1. **Node.js and npm** - For additional tooling and dependencies

   - [Download Node.js](https://nodejs.org/)
   - Used for Prettier formatting and additional build tools

2. **PowerShell 7** - Enhanced shell experience (Windows)
   - [Download PowerShell](https://github.com/PowerShell/PowerShell)

## Installation Steps

### 1. Clone the Repository

```bash
# Clone the repository
git clone https://github.com/ScrumGuides/ScrumGuide-ExpansionPack.git

# Navigate to the project directory
cd ScrumGuide-ExpansionPack
```

### 2. Verify Hugo Installation

```bash
# Check Hugo version (should be Extended version)
hugo version

# Expected output should include "extended"
# Example: hugo v0.118.2+extended windows/amd64
```

### 3. Install Dependencies (Optional)

If you plan to use additional tooling:

```bash
# Install Node.js dependencies for formatting and linting
npm install
```

### 4. Run the Development Server

```bash
# Navigate to the Hugo site directory
cd site

# Start the development server
hugo server -D --bind 0.0.0.0

# Alternative with live reload and drafts
hugo server --buildDrafts --buildFuture --bind 0.0.0.0
```

### 5. Open Your Browser

Navigate to `http://localhost:1313` to view the site locally.

### 6. Compare with Live Sites

To see how your local changes compare with the live sites:

- **Production**: [scrumexpansion.org](https://scrumexpansion.org) - The live production site
- **Preview**: [agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/) - Test environment with latest changes

## Development Server Options

| Command                      | Description                               |
| ---------------------------- | ----------------------------------------- |
| `hugo server`                | Basic development server                  |
| `hugo server -D`             | Include draft content                     |
| `hugo server --buildFuture`  | Include future-dated content              |
| `hugo server --bind 0.0.0.0` | Make server accessible from other devices |
| `hugo server --port 8080`    | Use custom port                           |

## Environment Configurations

The project supports multiple environment configurations:

### Local Development

- Configuration: `site/hugo.local.yaml`
- Features: Debug information, draft content, extended logging

### Production

- Configuration: `site/hugo.yaml`
- Features: Optimized build, analytics, production URLs

### Preview/Staging

- Configuration: `site/hugo.preview.yaml`
- Features: Preview-specific settings

## Troubleshooting Common Issues

### Hugo Not Found

```bash
# Add Hugo to your PATH or install using package manager
# Windows (Chocolatey)
choco install hugo-extended

# macOS (Homebrew)
brew install hugo

# Linux (Snap)
snap install hugo
```

### Port Already in Use

```bash
# Use a different port
hugo server --port 8080

# Or find and kill the process using port 1313
# Windows
netstat -ano | findstr :1313
taskkill /PID <PID> /F

# macOS/Linux
lsof -ti:1313 | xargs kill
```

### Module Not Found Errors

```bash
# Clear Hugo cache
hugo mod clean

# Update modules
hugo mod get -u
```

### Content Not Updating

```bash
# Clear Hugo cache and restart
hugo mod clean
hugo server -D
```

## Project Structure Overview

```
ScrumGuide-ExpansionPack/
├── site/                    # Hugo site source
│   ├── content/            # Markdown content files
│   │   ├── _index.md      # Homepage content
│   │   ├── guide/         # Main guide content
│   │   ├── creators/      # Creator profiles
│   │   └── download/      # Download page
│   ├── layouts/           # HTML templates
│   │   ├── _default/      # Default layouts
│   │   ├── guide/         # Guide-specific layouts
│   │   └── partials/      # Reusable components
│   ├── static/            # Static assets (CSS, images, PDFs)
│   ├── data/              # Data files (YAML/JSON)
│   ├── i18n/              # Translation files
│   └── hugo.yaml          # Hugo configuration
├── public/                # Generated site (git-ignored)
├── docs/                  # Project documentation
└── .github/               # GitHub Actions workflows
```

## Next Steps

Now that you have the project running locally, you can:

1. **📝 Learn about [Content Management](./content-management.md)** - How to edit and create content
2. **🏗️ Understand the [Architecture](./architecture.md)** - Project structure and design patterns
3. **🤝 Read [Contributing Guidelines](./contributing.md)** - How to contribute to the project
4. **🛠️ Explore [Development Guide](./development.md)** - Advanced development topics

## Getting Help

If you encounter issues during setup:

1. Check the [Troubleshooting Guide](./troubleshooting.md)
2. Search existing [GitHub Issues](https://github.com/ScrumGuides/ScrumGuide-ExpansionPack/issues)
3. Create a new issue with detailed information about your environment and the problem
4. Join the [GitHub Discussions](https://github.com/ScrumGuides/ScrumGuide-ExpansionPack/discussions)

---

🎉 **Congratulations!** You now have the Scrum Guide Expansion Pack running locally. Ready to start contributing?
