# Scrum Guide Expansion Pack

## Visit the Guide

### 🌐 Live Sites

- **Production**: [scrumexpansion.org](https://scrumexpansion.org) - **Start reading now!**
- **Preview**: [agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/) - **Test latest changes before production**

## What is This?

The Scrum Guide Expansion Pack was created because the world in which we build products has changed—and continues to change rapidly.

Scrum, as defined in the [2020 Scrum Guide](https://scrumguides.org/), is still solid and useful. But many practitioners, leaders, and teams found themselves asking deeper questions:
– How do we stay focused on real outcomes, not just shipping features?
– How do we work when AI becomes part of the team?
– How do we apply Scrum in fast-moving environments without losing its simplicity?

The Expansion Pack is a response to those questions. It’s not a replacement of the Scrum Guide. It’s an optional companion—a way to support people who already use Scrum but feel they need more guidance to navigate today’s realities.

The motivation wasn’t to add more rules or make Scrum heavier. Quite the opposite: it was to clarify the spirit of Scrum, especially around product thinking, emergence, and strategic focus. Scrum has always been about enabling teams to learn fast, adapt, and deliver value. The Expansion Pack helps modern teams keep that spirit alive—especially in environments shaped by uncertainty, acceleration, and new technology.

## Encouraged Contribution Workflow

Changes to content can often be contentious, culturally sensitive, and difficult to manage effectively. To navigate these complexities, we encourage the following collaborative workflow for contributors to the Scrum Guide Expansion Pack:

1. **Create a Discussion** – Engage peers in a conversation about the proposed change, aiming for consensus. Include all perspectives that could provide valuable insights.
2. **Create an Issue** – Once consensus is reached, \[create an issue] clearly documenting the change and attributing all participants.
3. **Submit a Pull Request** – Follow standard GitHub procedures: fork the repository, implement the change, and submit a Pull Request.
4. **Review the Pull Request** – The original creators (Jeff, John, Ralph) or their delegates will review your submission, and may approve, comment, or reject the proposed change.

## Join Our Community

The Scrum community thrives on shared knowledge and collaborative improvement.

### Contributing to Discussions

- **Share practical insights** - [Start a new discussion](https://github.com/ScrumGuides/ScrumGuide-ExpansionPack/discussions).
- **Address implementation challenges** - Help others overcome obstacles.
- **Propose refinements** - Suggest improvements.
- **Document lessons learned** - Share your discoveries.

### Language and Accessibility

Making Scrum knowledge accessible globally is essential.

- **Expand language support**
- **Refine translations**
- **Review content**

[Open a discussion](https://github.com/ScrumGuides/ScrumGuide-ExpansionPack/discussions) to connect with the community.

## Access the Guide

### 📖 Read Online

- **Production**: [scrumexpansion.org](https://scrumexpansion.org)
- **Preview**: [agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/)

### 📄 Download Options

- **Download PDF**: [Available languages](https://scrumexpansion.org/download)

## How to Contribute

### 📝 Content Contributors (Most Contributors)

**⚠️ Important: For most contributions, you only need to edit files in `site/content/`**

**Content Structure:**
- **Versioned Guides**: `site/content/{guide-name}/2026.1/index.md` (English)
- **Translations**: `site/content/{guide-name}/2026.1/index.{lang}.md` (e.g., index.de.md)
- **Homepage**: `site/content/_index.md` (English) and `_index.{lang}.md`

**Available Guides:**
- `scrum-guide-expanded/` - Core comprehensive guide
- `complexity/`, `psychological-safety-in-scrum-teams/`, `ai-and-scrum/`, and 12 more extension guides

**Content Contributions Include:**
- **Enhance content** - Improve clarity and depth
- **Clarify concepts** - Make explanations more accessible
- **Suggest new sections** - Propose additions
- **Review and edit** - Fix typos, improve grammar
- **Add translations** - Expand language support

**📖 Read First:**
- [Content Management Guide](./docs/content-management.md) - Structure, versioning, academic references
- [Contributing Guidelines](./docs/contributing.md) - PR process, standards

### 🔧 Technical Contributors (Advanced)

**⚠️ Caution: Only edit files outside `site/content/` if you understand Hugo, Azure Static Web Apps, and the deployment pipeline.**

**Technical areas:**
- **Hugo templates** - `site/layouts/` (uses [HugoGuides module](https://github.com/nkdAgility/HugoGuides/))
- **Styling** - `site/static/css/`
- **Infrastructure** - `.github/workflows/`, Azure configuration
- **Build scripts** - `scripts/` (PowerShell automation)

**📖 Technical Documentation:**
- [Documentation Overview](./docs/README.md)
- [Getting Started Guide](./docs/getting-started.md)
- [Development Guide](./docs/development.md)
- [Architecture Overview](./docs/architecture.md)

## About the Authors

Developed by Scrum and agile product development experts:

- **Ralph Jocham**
- **John Coleman**
- **Jeff Sutherland**

Built upon the official [2020 Scrum Guide](https://scrumguides.org/) by **Ken Schwaber** and **Jeff Sutherland**.

## License & Usage

Freely available under an open license:

- **Read and distribute**
- **Use for training and education**
- **Translate**
- **Adapt and build upon**

Attribution is requested.

See [LICENSE](./LICENSE) for complete terms.

## Getting Started

### Common Tasks for Anyone

These tasks can be performed by any contributor. All changes follow the standard workflow: **Fork → Make Changes → Test Locally → Create PR → Preview → Review → Merge**

#### 1. Add a New Extension (Guide)

Create a new guide to extend the core Scrum Guide.

**Steps:**
1. Read [Content Management Guide](./docs/content-management.md) for structure
2. Create directory: `site/content/{new-guide-name}/`
3. Create version folder: `site/content/{new-guide-name}/2026.1/`
4. Add content: `index.md` (English), `index.{lang}.md` (other languages)
5. Create `_index.md` for guide landing page
6. Add history folder: `site/content/{new-guide-name}/history/`
7. Test locally: `hugo server -D --source site`
8. Submit PR for review

#### 2. Add a New Document Version to an Existing Extension

Create a new version of an existing guide.

**Steps:**
1. Create new version folder: `site/content/{guide-name}/2026.2/`
2. Copy content from previous version: `site/content/{guide-name}/2026.1/`
3. Update content in new version folder
4. Update version history in `site/content/{guide-name}/history/`
5. Test locally: `hugo server -D --source site`
6. Submit PR for review

#### 3. Add a New Site Language (Translation Wrapper)

Add support for a new language across the entire site.

**Steps:**
1. Read [Translations Guide](./docs/translations.md)
2. Read [Translation Code of Conduct](./docs/translations-code-of-conduct.md)
3. Run PowerShell script: `.\scripts\Create-TranslationTemplate.ps1 -LanguageCode "xx" -LanguageName "Language Name"`
4. Update `site/i18n/{lang}.yaml` with translated UI strings
5. Test language switcher: `hugo server -D --source site`
6. Submit PR for review

#### 4. Translate a Guide or Extension

Translate content of a core guide or extension.

**Important:** All translation PRs must be approved by the guide owner.

**Steps:**
1. Read [Translations Guide](./docs/translations.md)
2. Read [Translation Code of Conduct](./docs/translations-code-of-conduct.md)
3. Fork the repository
4. Create translation file: `site/content/{guide-name}/2026.1/index.{lang}.md`
5. Translate content following academic reference format
6. Test locally: `hugo server -D --source site`
7. Submit PR for review
8. **Preview site** will be automatically created for your PR
9. Guide owner reviews and approves

#### 5. Translate a Specific Version of a Guide

Translate a specific version of a guide or extension.

**Steps:**
1. Follow steps from "Translate a Guide or Extension" above
2. Target specific version folder: `site/content/{guide-name}/{version}/index.{lang}.md`
3. Ensure consistency with original version content
4. Submit PR for review by guide owner

#### 6. Generate New PDFs

Generate PDF versions of guides for all languages.

**Requirements:**
- PowerShell 7+
- Pandoc
- LaTeX (XeLaTeX)

**Steps:**
1. Install prerequisites (see [PDF Generation Guide](./docs/simple-pdf-generation.md))
2. Run script: `.\scripts\Create-GuidePDFs.ps1`
3. Or for specific guide: `.\scripts\Create-GuidePDFs.ps1 -GuideName "complexity"`
4. Or for specific language: `.\scripts\Create-GuidePDFs.ps1 -Language "de"`
5. PDFs generated in: `site/content/{guide-name}/{version}/pdf/`
6. Commit PDFs and submit PR

### Translation Guidelines

**All translations must follow:**
- [Translation Guide](./docs/translations.md) - Technical process
- [Translation Code of Conduct](./docs/translations-code-of-conduct.md) - Standards and expectations

**Key Points:**
- Maintain academic reference format
- Preserve meaning, emphasis, and nuance
- All PRs require guide owner approval
- Use fork-PR-preview-review workflow

### Admin Tasks

These tasks require repository admin permissions.

#### Release a New Version (Production Deployment)

Deploy to production at [scrumexpansion.org](https://scrumexpansion.org).

**Steps:**
1. Ensure all changes are merged to `main` branch
2. Verify [Preview site](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/) looks correct
3. Navigate to **GitHub → Releases → Draft a new release**
4. Create a tag with higher version number:
   - **Patch** (v1.0.1): Typo fixes, small corrections
   - **Minor** (v1.1.0): New sections, content additions
   - **Major** (v2.0.0): Complete revamp, breaking changes
5. Add release title and description
6. Click **Publish release**
7. Automatic deployment to production begins

**More Details:** See [Deployment Guide](./docs/deployment.md)

---

### Quick Links

1. **[Read the expansion](https://scrumexpansion.org)** - Production site
2. **[Test latest changes](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/)** - Preview site  
3. **[Engage with the community](https://github.com/ScrumGuides/ScrumGuide-ExpansionPack/discussions)**
4. **[Support translations](https://github.com/ScrumGuides/ScrumGuide-ExpansionPack/discussions)**
5. **[Review contribution guidelines](./docs/contributing.md)**

**Together, we're advancing Scrum practice for modern product development challenges.**
