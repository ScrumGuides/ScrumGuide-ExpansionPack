# Scrum Guide Expansion Pack

**Want to translate a guide? [Start here](docs/translations.md#start-here)** for the team contact, agent setup, shared instructions and submission handoff. No tool installation is needed to ask for help.

## Build and validate with OpenGuidePlatform

Use the [shared OGP contributor guide](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/README.md) for plain-English explanations, diagrams, setup and supported commands. This site selects OGP `v1.1.7`. The package selection and delivery destinations live in [.OpenGuidePlatform/settings.yaml](.OpenGuidePlatform/settings.yaml). See [adoption evidence](docs/ogp-adoption.md) for actual validation status.

Local policy lives in [contributing](docs/contributing.md), [translations](docs/translations.md) and [site instructions](site/AGENTS.md). Production approval is separate from local or preview validation.

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

Use the shared task instructions to discover the supported changes; adding a site language also includes the surrounding website.

**Content Structure:**

- **Versioned Guides**: `site/content/{guide-name}/2026.1/index.md` (English)
- **Translations**: `site/content/{guide-name}/2026.1/index.{lang}.md` (e.g., index.de.md)
- **Homepage**: `site/content/_index.md` (English) and `_index.{lang}.md`

**Available Guides:**

- `scrum-guide-expanded/` - Core comprehensive guide
- `complexity/`, `psychological-safety-in-scrum-teams/`, `ai-and-scrum/`, and other extension guides (discover the current inventory)

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

- **Hugo templates** - `site/layouts/` (uses [OpenGuidePlatform module](https://github.com/nkdAgility/OpenGuidePlatform/))
- **Styling** - `site/static/css/`
- **Infrastructure** - `.github/workflows/`, Azure configuration
- **Build entry point** - root `build.ps1`; retained `scripts/` tools are not the shared contributor workflow

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

| Task | Shared instructions | ScrumExpansion decisions |
|---|---|---|
| Review wording without developer tools | [Reviewer handoff](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/review-wording.md) | Guide owner and translation guardian review |
| First translation | [Walkthrough with diagrams](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/first-translation.md) | [Translation policy](docs/translations.md) |
| Inspect readiness | [Status and discovery](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/status.md) | Core and independently versioned extensions |
| Add a language or translate selected bodies | [Translation tasks](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/translation.md) | Keep production exclusions and approved scope |
| Add/edit a guide or edition | [Content operations](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/content.md) | Formal academic style, citations and owner approval |
| Credits and PDFs | [Credits and PDF procedure](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/credits-pdfs.md) | Existing attribution and supplied PDFs need separate owner review |
| Validate and submit | [Validation and handoffs](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/validation.md) | Site caller, review environments and publication approval |

### Translation Guidelines

**All translations must follow:**

- [Translation policy](./docs/translations.md) - Site decisions and shared workflow links
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
