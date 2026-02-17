# 🤖 AI Agent Guide

This guide provides instructions for AI assistants (like GitHub Copilot) working with the Scrum Guide Expansion Pack codebase. It outlines the project structure, deployment model, and best practices for assisting developers.

## Project Overview

The **Scrum Guide Expansion Pack** is a Hugo-based static website hosted on Azure Static Web Apps. It provides modern guidance for applying Scrum to complex work, AI, and adaptive strategy.

**Live Sites:**

- **Production**: [scrumexpansion.org](https://scrumexpansion.org)
- **Preview**: [agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/)

## 📚 Essential Documentation

Before assisting with any task, familiarize yourself with these key documents:

| Document | Purpose | Reference When |
|----------|---------|----------------|
| [Getting Started](./docs/getting-started.md) | Initial setup and installation | Setting up development environment |
| [Development Guide](./docs/development.md) | Development workflows and standards | Writing code, creating content, or templates |
| [Deployment Guide](./docs/deployment.md) | Deployment process and environments | Deployment questions or CI/CD issues |
| [Content Management](./docs/content-management.md) | Content creation and organization | Creating or editing content |
| [Contributing Guide](./docs/contributing.md) | Contribution guidelines | Pull request process or contribution questions |
| [Configuration](./docs/configuration.md) | Hugo and Azure configuration | Configuration changes needed |
| [Translations](./docs/translations.md) | Internationalization process | Adding or updating translations |
| [Troubleshooting](./docs/troubleshooting.md) | Common issues and solutions | Debugging problems |

## 🚀 Deployment Model

Understanding the deployment model is **critical** for proper development workflow:

### 1. Development Phase

**Workflow:**

```
Fork/Branch → Make Changes → Local Testing → Create Pull Request
```

**Key Points:**

- Developers work in **feature branches** or **forks**
- All changes must be **tested locally** before creating a PR
- Follow the branching strategy in [Contributing Guide](./docs/contributing.md)

### 2. Pull Request Testing

**What Happens:**

```
Pull Request Created → Automatic deployment to PR-specific test site
```

**PR Environment Details:**

- **URL Pattern**: `https://agreeable-island-0c966e810-{PullRequestId}.centralus.6.azurestaticapps.net`
- **Example**: PR #42 → `https://agreeable-island-0c966e810-42.centralus.6.azurestaticapps.net`
- **Purpose**: Test changes in isolation before merging
- **Lifecycle**: Automatically created when PR opens, removed when PR closes
- **Important**: Only PRs to the main repository get deployed (not from forks)

### 3. Preview Deployment

**What Happens:**

```
PR Merged to Main → Automatic deployment to Preview environment
```

**Preview Environment Details:**

- **URL**: [agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/)
- **Branch**: `main`
- **Purpose**: Pre-production testing and validation
- **Audience**: Internal team and stakeholders
- **Configuration**: `staticwebapp.config.preview.json` + `hugo.preview.yaml`

### 4. Production Deployment

**What Happens:**

```
Create GitHub Release → Tag with version → Automatic deployment to Production
```

**Production Deployment Details:**

- **URL**: [scrumexpansion.org](https://scrumexpansion.org)
- **Trigger**: Creating a **GitHub Release** with a **version tag**
- **Version Strategy**: Semantic versioning
- **Configuration**: `staticwebapp.config.production.json` + `hugo.yaml`

## 📋 Version Numbering Strategy

When deploying to production via GitHub releases, follow **semantic versioning** principles:

### Version Format: `vMAJOR.MINOR.PATCH`

| Type | When to Use | Example |
|------|-------------|---------|
| **Patch** (`v1.0.1`) | Tiny changes: typo fixes, small corrections, minor tweaks | `v1.0.1` → Fix typo in guide |
| **Minor** (`v1.1.0`) | Minor changes: new section, content additions, feature additions | `v1.1.0` → Add new guide section |
| **Major** (`v2.0.0`) | Major changes: complete document revamp, breaking changes, restructure | `v2.0.0` → Complete guide overhaul |

### Creating a Release

**Steps:**

1. Navigate to **GitHub → Releases → Draft a new release**
2. Choose or create a **tag** (e.g., `v1.2.0`)
3. Select **target branch** (usually `main`)
4. Add **release title** and **description**
5. Click **Publish release**
6. Automatic deployment to production begins

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

## 🛠️ Technology Stack

### Core Technologies

- **Hugo Extended** (v0.146.0+) - Static site generator
- **Go Templates** - Hugo templating engine
- **Markdown + YAML** - Content authoring
- **Bootstrap 5** - CSS framework
- **PowerShell** - Automation scripts

### Hosting & CI/CD

- **Azure Static Web Apps** - Hosting platform
- **GitHub Actions** - CI/CD pipeline
- **GitVersion** - Semantic versioning (if implemented)

## 🔄 GitHub Actions Workflows

The repository uses several automated workflows for different purposes:

| Workflow | File | Purpose | Trigger |
|----------|------|---------|---------|
| **Build & Release** | `main.yaml` | Builds and deploys to all environments (PR test sites, Preview, Production) | Push to main, PR creation, Release creation |
| **PR Cleanup** | `close-pr.yaml` | Cleans up PR-specific test environments | PR closed |
| **Docs to Wiki** | `docs-to-wiki.yml` | Syncs documentation from `/docs` to GitHub Wiki | Push to main (docs changes) |
| **Copilot Setup** | `copilot-setup-steps.yml` | Development environment setup helper | Manual dispatch only |
| **Tag External Edits** | `discussion-tag-external-edits.yml` | Tags discussions from external contributors | Discussion created/edited |
| **Stale Issues** | `stale-issues.yml` | Automatically closes stale duplicate issues | Daily at 2:00 UTC |
| **LEGACY** | `azure-static-web-apps-*.yml` | ⛔ **DO NOT USE** - Disabled legacy workflow | Disabled |

### Key Workflows Details

**main.yaml** - The primary deployment workflow:

- Triggered by pushes to main, PRs, and release creation
- Handles all environment deployments
- Runs Hugo builds with appropriate configurations
- Deploys to Azure Static Web Apps

**close-pr.yaml** - Environment cleanup:

- Automatically triggered when a PR is closed
- Removes the PR-specific test environment from Azure
- Prevents unused environments from accumulating

**docs-to-wiki.yml** - Documentation synchronization:

- Keeps GitHub Wiki in sync with `/docs` folder
- Runs on changes to documentation files
- Can be manually triggered to force full sync

## 🎯 Agent Responsibilities

### ⚠️ Primary Editing Location

**CRITICAL**: Most edits should be made to `site/content/` only. Other areas require deep knowledge of:

- Hugo static site generator and Hugo Modules
- Azure Static Web Apps deployment pipeline
- Bootstrap 5 and responsive design
- Multilingual i18n architecture

**Safe Editing Zones:**

- ✅ `site/content/` - Content files (Markdown)
- ✅ `site/i18n/` - Translation strings (with guidance)

**Restricted Zones (Advanced Knowledge Required):**

- ⚠️ `site/layouts/` - Hugo templates (requires Hugo module understanding)
- ⚠️ `site/static/` - Assets and CSS (requires Bootstrap 5 knowledge)
- ⚠️ `.github/workflows/` - GitHub Actions (requires CI/CD expertise)
- ⚠️ `scripts/` - Automation scripts (requires PowerShell expertise)
- ⚠️ `site/hugo.yaml` - Configuration (requires Hugo expertise)

### When Assisting with Content Changes

**Primary Task**: Edit files in `site/content/`

1. **Use the academic reference format** (see [Content Management](./docs/content-management.md))
2. **Create content for all supported languages** in version folders
3. **Follow the formal reference style** (not blog/article style)
4. **Include proper front matter** with title, description, date, weight
5. **Add in-text citations** with footnote references `[^1]`
6. **Format references** in the References section
7. **Test locally** before submitting: `hugo server -D --source site`

### When Assisting with Technical Changes

**⚠️ Only proceed if user explicitly requests technical changes AND provides context.**

1. **Read relevant documentation** before making changes
2. **Understand Hugo Modules** - Base templates come from [HugoGuides module](https://github.com/nkdAgility/HugoGuides/)
3. **Follow Hugo v0.146.0+ template system** conventions
4. **Test locally** before suggesting changes
5. **Use Bootstrap 5** classes for styling
6. **Maintain multilingual support** in all changes
7. **Follow the project's naming conventions** (kebab-case)

### When Assisting with Deployment

1. **Never manually trigger** production deployments without explicit user request
2. **Understand the environment** where changes will be deployed
3. **Recommend proper version increments** based on change scope
4. **Test in PR environment** before suggesting merge
5. **Follow the deployment checklist** in [Deployment Guide](./deployment.md)

### When Assisting with Translations

1. **Use the PowerShell script** for new language setup: `.\scripts\Create-TranslationTemplate.ps1`
2. **Ensure all translation keys exist** in i18n files
3. **Test content rendering** in all languages
4. **Maintain consistent structure** across languages

## ⚠️ Critical Warnings

### DO NOT

- ❌ **Edit files outside `site/content/`** unless the user explicitly understands the technical implications
- ❌ **Edit Hugo templates** without understanding the Hugo Modules architecture
- ❌ **Modify workflows** without CI/CD expertise
- ❌ **Edit or run** `.github/workflows/azure-static-web-apps-agreeable-island-0c966e810.yml` (legacy workflow)
- ❌ **Deploy to production** without proper version tagging
- ❌ **Make breaking changes** without major version bump
- ❌ **Skip testing** in PR or preview environments
- ❌ **Forget translations** when adding new content
- ❌ **Use Hugo versions** below v0.146.0

### ALWAYS

- ✅ **Reference documentation** before making changes
- ✅ **Test locally** with `hugo server -D`
- ✅ **Follow the PR process** outlined in [Contributing Guide](./docs/contributing.md)
- ✅ **Use semantic versioning** for releases
- ✅ **Validate HTML/CSS** before deployment
- ✅ **Check all languages** render correctly

## 🔍 Common Tasks and References

### For Anyone: Content Contribution Tasks

All tasks follow the workflow: **Fork → Make Changes → Test Locally → Create PR → Preview → Review → Merge**

#### Task 1: Add a New Extension (Guide)

**✅ Safe Task - Editing `site/content/` only**

Create a new guide to extend the core Scrum Guide.

**Steps:**

1. Read [Content Management Guide](./docs/content-management.md)
2. Create directory structure:

   ```
   site/content/{new-guide-name}/
   ├── _index.md              # Guide landing page
   ├── 2026.1/                # First version
   │   ├── index.md           # English content
   │   ├── index.de.md        # German (if available)
   │   └── pdf/               # Generated PDFs
   ├── history/               # Version history
   └── translations/          # Translation metadata
   ```

3. Follow academic reference format with footnotes
4. Test locally: `hugo server -D --source site`
5. Submit PR for review

#### Task 2: Add a New Document Version to an Existing Extension

**✅ Safe Task - Editing `site/content/` only**

Create a new version of an existing guide.

**Steps:**

1. Create new version folder: `site/content/{guide-name}/2026.2/`
2. Copy content from previous version as starting point
3. Update content in new version folder
4. Update version history: `site/content/{guide-name}/history/`
5. Test locally: `hugo server -D --source site`
6. Submit PR for review

#### Task 3: Add a New Site Language (Translation Wrapper)

**✅ Safe Task - Editing `site/content/` and `site/i18n/`**

Add support for a new language across the entire site.

**Required Reading:**

- [Translations Guide](./docs/translations.md)
- [Translation Code of Conduct](./docs/translations-code-of-conduct.md)

**Steps:**

1. Run PowerShell script: `.\scripts\Create-TranslationTemplate.ps1 -LanguageCode "xx" -LanguageName "Language Name"`
2. Update `site/i18n/{lang}.yaml` with translated UI strings
3. Add homepage translation: `site/content/_index.{lang}.md`
4. Test language switcher: `hugo server -D --source site`
5. Submit PR for review

#### Task 4: Translate a Guide or Extension

**✅ Safe Task - Editing `site/content/` only**

**⚠️ Important:** All translation PRs must be approved by the guide owner.

**Required Reading:**

- [Translations Guide](./docs/translations.md)
- [Translation Code of Conduct](./docs/translations-code-of-conduct.md)

**Steps:**

1. Fork the repository
2. Create translation file: `site/content/{guide-name}/2026.1/index.{lang}.md`
3. Translate content:
   - Maintain academic reference format
   - Preserve meaning, emphasis, and nuance
   - Keep citations and references intact
4. Test locally: `hugo server -D --source site`
5. Submit PR (automatic preview site will be created)
6. Guide owner reviews and approves

**Example:**

- Translate complexity guide to German: `site/content/complexity/2026.1/index.de.md`
- Translate core guide to Spanish: `site/content/scrum-guide-expanded/2026.1/index.es.md`

#### Task 5: Translate a Specific Version of a Guide

**✅ Safe Task - Editing `site/content/` only**

Translate a specific version of a guide or extension.

**Steps:**

1. Follow steps from "Task 4: Translate a Guide or Extension" above
2. Target specific version folder: `site/content/{guide-name}/{version}/index.{lang}.md`
3. Ensure consistency with original version content
4. Submit PR for review by guide owner

#### Task 6: Generate New PDFs

**✅ Safe Task - Running automation script**

Generate PDF versions of guides for all languages.

**Prerequisites:**

- PowerShell 7+
- Pandoc
- LaTeX (XeLaTeX)
- See [PDF Generation Guide](./docs/simple-pdf-generation.md)

**Steps:**

1. Generate all PDFs: `.\scripts\Create-GuidePDFs.ps1`
2. Generate specific guide: `.\scripts\Create-GuidePDFs.ps1 -GuideName "complexity"`
3. Generate specific language: `.\scripts\Create-GuidePDFs.ps1 -Language "de"`
4. Force regeneration: `.\scripts\Create-GuidePDFs.ps1 -Force`
5. PDFs saved to: `site/content/{guide-name}/{version}/pdf/`
6. Commit and submit PR

### For Admins: Management Tasks

#### Task: Release a New Version (Production Deployment)

**⚠️ Admin Only - Requires repository admin permissions**

Deploy to production at [scrumexpansion.org](https://scrumexpansion.org).

**Steps:**

1. Verify all changes are merged to `main` branch
2. Confirm [Preview site](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/) looks correct
3. Navigate to **GitHub → Releases → Draft a new release**
4. Create a tag with higher version number:
   - **Patch** (v1.0.1): Typo fixes, small corrections
   - **Minor** (v1.1.0): New sections, content additions
   - **Major** (v2.0.0): Complete revamp, breaking changes
5. Add release title and description
6. Click **Publish release**
7. Automatic deployment to production begins
8. Monitor deployment in GitHub Actions

**More Details:** See [Deployment Guide](./docs/deployment.md)

### Legacy Tasks (Advanced)

These tasks require advanced technical knowledge.

#### Task: Add New Content (Edit Existing)

**✅ Safe Task - Editing `site/content/` only**

Edit existing content in a guide version.

**Steps:**

1. Read [Content Management Guide](./docs/content-management.md)
2. Locate the guide version folder: `site/content/{guide-name}/2026.1/`
3. Edit the appropriate language file:
   - English: `index.md`
   - German: `index.de.md`
   - Spanish: `index.es.md`
   - etc.
4. Follow academic reference format with footnotes
5. Add translations for all languages (or note which languages updated)
6. Test locally: `hugo server -D --source site`
7. Create PR for review

**Content Examples:**

- Edit core guide: `site/content/scrum-guide-expanded/2026.1/index.md`
- Edit complexity guide: `site/content/complexity/2026.1/index.md`
- Edit German translation: `site/content/complexity/2026.1/index.de.md`

#### Task: Update Templates

**⚠️ Advanced Task - Requires Hugo module understanding**

**Steps:**

1. Read [Development Guide](./docs/development.md) - Hugo Template System section
2. **Understand Hugo Modules** - Base templates from [HugoGuides module](https://github.com/nkdAgility/HugoGuides/)
3. Edit templates in `site/layouts/` (note the v0.146.0+ structure)
4. Test rendering locally
5. Verify Bootstrap 5 compatibility
6. Create PR for review

## 📖 Hugo Template System & Module Architecture

**Critical:** This project uses [**Hugo Modules**](https://github.com/nkdAgility/HugoGuides/) for the majority of its functionality. Base templates (`baseof.html`, `home.html`, `single.html`, `list.html`) are provided by the imported module from `github.com/nkdAgility/HugoGuides/module` and **do not exist in the local** `layouts/` **directory**.

**Local `layouts/` contains only:**

- `index.html` - Homepage override
- `categories/` - Category templates
- `creators/` - Legacy creator templates
- `_partials/` - Local partial overrides
- `_markup/` - Render hooks

**Hugo v0.146.0+ Template System Changes** (general Hugo information):

| Old System | New System | Action |
|------------|------------|--------|
| `layouts/_default/` | `layouts/` (root) | Templates moved to root |
| `layouts/partials/` | `layouts/_partials/` | Note underscore prefix |
| `layouts/shortcodes/` | `layouts/_shortcodes/` | Note underscore prefix |
| `layouts/index.html` | `layouts/home.html` | Renamed homepage |

**For this project**: Most templates are module-provided. To override a module template, create a file with the same name in your local `layouts/` directory.

**More details**: See [Development Guide - Hugo Template System](./docs/development.md#hugo-template-system-migration-v01460)

## 🎨 Styling Guidelines

- **Primary Framework**: Bootstrap 5
- **Custom CSS**: `site/static/css/style.css`
- **Theme Colors**:
  - Primary blue: `#135289`
  - Dark cards: `#353535`
- **Icons**: Font Awesome
- **Design**: Mobile-first, responsive, dark theme

## 🌐 Internationalization

**Supported Languages:**

- English (en) - Primary
- German (de)
- Spanish (es)
- Klingon (tlh) - Example language
- And more...

**Key Points:**

- All content must be translated
- Use i18n keys in templates: `{{ i18n "key" }}`
- Follow the translation process in [Translations Guide](./docs/translations.md)

## 🔐 Security Considerations

- Static site generation (no server-side vulnerabilities)
- HTTPS enforced on all environments
- Secrets stored in GitHub repository secrets
- Branch protection rules enforced
- PR reviews required before merge

## 📞 Support and Resources

- **Documentation**: Start with [README](./docs/README.md)
- **Issues**: Report via GitHub Issues
- **Contributing**: See [Contributing Guide](./docs/contributing.md)
- **Hugo Docs**: [gohugo.io/documentation](https://gohugo.io/documentation/)
- **Azure Static Web Apps**: [Microsoft Learn](https://docs.microsoft.com/azure/static-web-apps/)

## 🎯 Quick Reference Checklist

Before making any changes, ask:

- [ ] Have I read the relevant documentation?
- [ ] Do I understand which environment this affects?
- [ ] Am I following Hugo v0.146.0+ conventions?
- [ ] Will this work in all supported languages?
- [ ] Have I tested locally?
- [ ] Is this a breaking change requiring major version bump?
- [ ] Should this be documented?

---

**Remember**: When in doubt, reference the documentation. Accuracy and consistency are more important than speed.

🔙 **Back to**: [Documentation Home](./docs/README.md)
