# Translation Guide

Help us make the Scrum Guide Expansion Pack accessible to everyone worldwide by contributing translations!

Please read the [Code of Conduct for Translation Contributors](translations-code-of-conduct.md) before starting.

## 🌍 Understanding Our Translation System

Our site uses a **two-layer translation system** that separates site structure from guide content:

### Layer 1: Wrapper (Site Structure)

**What it is:**

- Navigation menus, buttons, and UI labels
- Homepage text and section titles
- Category names and filter labels
- Footer and header elements

**Location:** `site/i18n/{LANG}.yaml`

**Key Point:** The wrapper can be fully translated without having any guide content translated. This means users can navigate the site in their language even if the guides are only in English.

### Layer 2: Content (Guide Documents)

**What it is:**

- The actual guide text in versioned directories
- Example: `site/content/scrum-guide-expanded/2025.9/index.md`
- Example: `site/content/ai-and-scrum/2025.9/index.md`

**Location:** `site/content/{guide-name}/{version}/index.{LANG}.md`

**Key Point:** Content can be translated for older versions (e.g., 2025.6) but not yet for newer versions (e.g., 2025.9). The site will automatically show the latest available translation.

### How Version Fallback Works

**Scenario 1:** German wrapper + German 2025.6 content (no 2025.9 German yet)

- ✅ Site appears in German
- ✅ Navigation is German
- ✅ User sees German content from version 2025.6
- ℹ️ Site automatically uses the latest translated version available

**Scenario 2:** Spanish wrapper + No Spanish content at all

- ✅ Site appears in Spanish
- ✅ Navigation is Spanish
- ⚠️ Content shows in English with "English Only" badge
- ℹ️ User can still navigate comfortably in their language

**Scenario 3:** French content for 2025.6 + New version 2025.9 released

- ✅ Site shows French
- ✅ Content shows French from 2025.6
- 🆕 When French 2025.9 is translated, it automatically becomes the displayed version

### Benefits of This System

1. **Incremental Translation**: Start with wrapper, add content later
2. **Version Independence**: Old translations remain useful when new versions release
3. **User Experience**: Consistent navigation even without full content translation
4. **Flexibility**: Translate high-priority guides first, others later

---

## 🎯 Quick Start - Choose Your Path

### Option 1: GitHub Collaboration (for contributors familiar with GitHub)

**Best for:** Translators familiar with Git, GitHub, and the [Pull Request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests) Workflow.

**Process:**

1. Fork the repository
2. Create translation files with our [Automated Setup](#option-a-automated-setup-powershell---recommended)
3. Collaborate with other translators
4. Submit Pull Request for review

[📖 Skip to GitHub Workflow](#github-workflow) →

### Option 2: Manual Submission (for contributors who don't understand GitHub)

**Best for:** Translators who are non-technical and dont want to [collaborating with pull requests](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests).

**Process:**

1. Download translation templates
2. Work independently or collaborate via email/messaging
3. Submit completed translations via GitHub Issues
4. We'll create the Pull Request for community review

[📖 Skip to Manual Workflow](#manual-workflow) →

---

## 📋 What Needs Translation

You can contribute at different levels depending on your time and expertise:

### Level 1: Wrapper Only (Quickest Impact) ⚡

**Time Required:** ~2-3 hours

**Files:**

- `site/i18n/{LANG}.yaml` - UI elements, navigation, buttons
- `site/hugo.yaml` - Language configuration entry

**Impact:** Users can navigate the site in their language, even if content is in English. This is a great starting point!

**Example:** Portuguese wrapper means Brazilian users see "Início", "Expansões", "Contribuir" instead of "Home", "Expansions", "Contribute".

### Level 2: Core Guide Content 📚

**Time Required:** ~40-60 hours (large document)

**Files:**

- Wrapper (from Level 1)
- `site/content/scrum-guide-expanded/{VERSION}/index.{LANG}.md`
  - Start with latest version (currently 2025.9)
  - Or translate previous version (2025.6) first

**Impact:** Users get the foundational Scrum Guide Expansion in their language.

**Note:** Each version is independent. If you translate 2025.6, it remains useful even when 2025.9 is released (fallback system).

### Level 3: Extension Guides 🎯

**Time Required:** ~5-15 hours per guide

**Files:**

- Wrapper (from Level 1)
- Individual extension guides:
  - `site/content/ai-and-scrum/{VERSION}/index.{LANG}.md`
  - `site/content/complexity/{VERSION}/index.{LANG}.md`
  - `site/content/multi-team-scrum/{VERSION}/index.{LANG}.md`
  - etc.

**Impact:** Users get specialized deep-dives in their language.

**Strategy:** Prioritize guides most relevant to your audience.

### Version-Specific Translation Strategy

**Option A: Latest Version First** (Recommended for new languages)

- Translate wrapper
- Translate latest content version (2025.9)
- Users get the most current information

**Option B: Stable Version First** (Recommended for major languages)

- Translate wrapper
- Translate previous stable version (2025.6)
- Provides proven, stable content
- Update to 2025.9 when ready

**Option C: Incremental** (Recommended for limited time)

- Translate wrapper only
- Add content translations gradually
- Each guide version becomes available as completed

---

## 🔧 GitHub Workflow

### Prerequisites

- GitHub account
- Basic understanding of Git/GitHub
- Markdown knowledge helpful but not required

### Step 1: Set Up Your Fork

1. **Fork the repository**
   - Go to [ScrumGuide-ExpansionPack](https://github.com/nkdAgility/ScrumGuide-ExpansionPack)
   - Click "Fork" button
   - Clone your fork locally

```bash
git clone https://github.com/YOUR-USERNAME/ScrumGuide-ExpansionPack.git
cd ScrumGuide-ExpansionPack
```

### Step 2: Create Translation Branch

```bash
git checkout -b translation/add-{LANG}-language
```

Replace `{LANG}` with your language code (e.g., `pt` for Portuguese, `ja` for Japanese).

### Step 3: Create Translation Files

#### Option A: Automated Setup (PowerShell - Recommended)

**Prerequisites:** [PowerShell 7+](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell) (Windows, macOS, or Linux)

Use our automated translation template script to set up all necessary files:

> ⚠️ **Note:** The script will automatically install the required `powershell-yaml` module if it's not already available.

```powershell
# Basic usage
.\scripts\Create-TranslationTemplate.ps1 -LanguageCode "de" -LanguageName "German"

# Advanced usage with custom settings
.\scripts\Create-TranslationTemplate.ps1 -LanguageCode "es" -LanguageName "Spanish" -Title "Guía Scrum Paquete de Expansión" -Weight 3 -Force
```

**What the script does:**

- ✅ Adds language configuration to `hugo.yaml`
- ✅ Creates `site/i18n/{LANG}.yaml` from English template
- ✅ Creates all translated content files (`*.{LANG}.md`)
- ✅ Sets up proper frontmatter with placeholders
- ✅ Validates the complete setup
- ✅ Provides next steps guidance

> 🕒 **Time savings:** The script reduces setup time from ~30 minutes manual work to ~2 minutes automated setup.

**Script Parameters:**

- `LanguageCode` - ISO language code (e.g., 'de', 'es', 'fr')
- `LanguageName` - Display name (e.g., 'German', 'Spanish')
- `Title` - Translated site title (optional)
- `Description` - Translated site description (optional)
- `Keywords` - Translated site keywords (optional)
- `Weight` - Language menu order (optional, auto-calculated)
- `Force` - Overwrite existing files

> 💡 **Don't have PowerShell?** Install it from [Microsoft's official guide](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell) - it's free and available for Windows, macOS, and Linux.

#### Option B: Manual Setup

If you prefer manual setup or don't have PowerShell:

**A. Wrapper Translation (Start Here)**

1. Copy the English wrapper:

```bash
cp site/i18n/en.yaml site/i18n/{LANG}.yaml
```

1. Translate each entry in `site/i18n/{LANG}.yaml`:

```yaml
# Example - keep the ID, translate the text
- id: read_online_title
  translation: "Your translated text here"
- id: core_section_title
  translation: "Your translated section title"
```

1. Add language to `site/hugo.yaml` in the `languages:` section:

```yaml
languages:
  # ... existing languages
  { LANG }:
    languageName: Your Language Name
    weight: 2 # Adjust as needed
    title: Your Translated Site Title
    params:
      description: "Your translated description"
      keywords: "Your translated keywords"
```

**B. Content Translation (Core Guide)**

1. Choose a version to translate:
   - Latest: `site/content/scrum-guide-expanded/2025.9/index.md`
   - Previous: `site/content/scrum-guide-expanded/2025.6/index.md`

2. Copy the English guide:

```bash
# For latest version
cp site/content/scrum-guide-expanded/2025.9/index.md \
   site/content/scrum-guide-expanded/2025.9/index.{LANG}.md

# OR for previous version
cp site/content/scrum-guide-expanded/2025.6/index.md \
   site/content/scrum-guide-expanded/2025.6/index.{LANG}.md
```

1. Edit the frontmatter:

```yaml
---
title: "Your Translated Title"
description: "Your translated description"
# ... translate other metadata
# Keep 'type', 'date', and technical fields unchanged
---
```

1. Translate the content while preserving:
   - Markdown formatting (`##`, `**bold**`, `[links](url)`)
   - Hugo shortcodes
   - Reference numbers (40), (58), etc.
   - HTML comments and IDs
   - **Categories and tags** - Keep identical to English

**C. Content Translation (Extension Guides)**

Follow the same pattern for each extension:

```bash
# Example: AI and Scrum guide
cp site/content/ai-and-scrum/2025.9/index.md \
   site/content/ai-and-scrum/2025.9/index.{LANG}.md
```

**Important File Structure:**

```
site/content/
├── scrum-guide-expanded/    # Core guide
│   ├── _index.md           # Guide metadata (translate title/description)
│   ├── 2025.9/             # Latest version
│   │   ├── index.md        # English content
│   │   └── index.{LANG}.md # Your translation
│   └── 2025.6/             # Previous version
│       ├── index.md
│       └── index.{LANG}.md # Can translate this instead/first
└── ai-and-scrum/           # Extension guide
    ├── _index.md
    └── 2025.9/
        ├── index.md
        └── index.{LANG}.md
```

1. Copy the English translations:

```bash
cp site/i18n/en.yaml site/i18n/{LANG}.yaml
```

1. Translate each entry in `site/i18n/{LANG}.yaml`:

```yaml
# Example - keep the ID, translate the text
- id: read_online_title
  translation: "Your translated text here"
```

**C. Add Language to Hugo Configuration**

Add your language to `site/hugo.yaml` in the `languages:` section:

```yaml
languages:
  # ... existing languages
  { LANG }:
    languageName: Your Language Name
    weight: 2 # Adjust as needed
    title: Your Translated Site Title
    params:
      description: "Your translated description"
      keywords: "Your translated keywords"
```

### Step 4: Test Your Translation

1. **Install Hugo** (see [Development Guide](development.md))
2. **Start the development server:**

```bash
cd site
hugo server --config hugo.yaml,hugo.local.yaml
```

1. **View your translation:**
   - Navigate to `http://localhost:1313/{LANG}/`
   - Check all pages and UI elements
   - Verify language switching works correctly

### Step 5: Submit for Review

1. **Commit your changes:**

```bash
git add .
git commit -m "Add {LANG} translation"
git push origin translation/add-{LANG}-language
```

1. **Create Pull Request:**
   - Go to your fork on GitHub
   - Click "New Pull Request"
   - Use title: "Add {Language Name} translation"
   - Include translation details in description

2. **Review Process:**
   - Creators and community will review
   - Native speakers may suggest improvements
   - Collaborate on refinements
   - Merge when approved

---

## 📝 Manual Workflow

> 💡 **Tip:** Even if you're using the manual workflow, you can still use our [PowerShell automation script](#option-a-automated-setup-powershell---recommended) to generate the template files - just fork the repo temporarily, run the script, then download the generated files to work with locally.

### Step 1: Get Translation Templates

1. **Download files to translate:**
   - [Main Guide Template](https://raw.githubusercontent.com/nkdAgility/ScrumGuide-ExpansionPack/main/site/content/guide/index.md)
   - [UI Translations Template](https://raw.githubusercontent.com/nkdAgility/ScrumGuide-ExpansionPack/main/site/i18n/en.yaml)

2. **Save locally** with your language code:
   - `index.{LANG}.md` (e.g., `index.pt.md`)
   - `{LANG}.yaml` (e.g., `pt.yaml`)

### Step 2: Translate Content

1. **Main Guide (`index.{LANG}.md`):**
   - Translate title and description in the frontmatter
   - **Keep categories and tags exactly the same as English** - Do not translate
   - Translate all body content
   - Keep all Markdown formatting intact
   - Preserve reference numbers and links

2. **UI File (`{LANG}.yaml`):**
   - Translate only the text after `translation:`
   - Keep the `id:` values unchanged
   - Maintain YAML formatting

### Step 3: Collaborate (Optional)

- Share files with other translators via email or messaging
- Use Google Docs or similar for collaborative editing
- Coordinate with existing translation communities

### Step 4: Submit Translation

1. **Create GitHub Issue:**
   - Go to [Issues page](https://github.com/nkdAgility/ScrumGuide-ExpansionPack/issues)
   - Click "New Issue"
   - Title: "Translation Submission: {Language Name}"

2. **Include in issue:**
   - Language name and code
   - Attach your translated files
   - List any collaborators to credit
   - Note any questions or concerns

3. **We'll handle the rest:**
   - Create proper Git commits
   - Set up Pull Request
   - Coordinate community review
   - Handle technical integration

---

## 🔄 How Version Fallback Works (Technical Details)

### For Technical Contributors

Understanding how Hugo handles our multi-version, multi-language system:

#### File Naming Pattern

```
index.md       # English (default)
index.de.md    # German
index.es.md    # Spanish
index.{LANG}.md # Your language
```

#### Hugo's Translation Resolution

1. **User visits German site (`/de/scrum-guide-expanded/`)**
2. **Hugo looks for translations in this order:**
   - German 2025.9: `2025.9/index.de.md` ✅ Use this if exists
   - German 2025.6: `2025.6/index.de.md` ✅ Use this if 2025.9 doesn't exist
   - English 2025.9: `2025.9/index.md` ⚠️ Fallback with "English Only" badge

3. **Wrapper is always available:**
   - `i18n/de.yaml` provides UI regardless of content availability

#### Translation Detection Logic

In our templates (`core-guide-list.html`, `extensions-guide-list.html`):

```html
{{- $defaultSite := index $.Site.Sites 0 }} {{- if ne $.Site.Language.Lang $defaultSite.Language.Lang }} {{- if not $guide.Translations }}
<!-- Show "English Only" badge -->
{{- else if eq (trim $guide.Content " \n\t") "" }}
<!-- Show "English Only" badge -->
{{- end }} {{- end }}
```

This checks:

1. Are we in a non-English language?
2. Does this guide have any translations?
3. Is the content empty (missing translation)?

### For Non-Technical Contributors

**Simple Rule:** Create files with your language code, and Hugo automatically uses them!

**Example:**

- You create `index.pt.md` (Portuguese)
- Portuguese users automatically see it
- No coding needed!

**Version Strategy:**

- Translate whatever version you can
- Site shows latest translated version
- Your work stays useful even when new versions release

---

## 🔄 How Version Fallback Works (Technical Details)

### For Technical Contributors

Understanding how Hugo handles our multi-version, multi-language system:

#### File Naming Pattern

```
index.md       # English (default)
index.de.md    # German
index.es.md    # Spanish
index.{LANG}.md # Your language
```

#### Hugo's Translation Resolution

1. **User visits German site (`/de/scrum-guide-expanded/`)**
2. **Hugo looks for translations in this order:**
   - German 2025.9: `2025.9/index.de.md` ✅ Use this if exists
   - German 2025.6: `2025.6/index.de.md` ✅ Use this if 2025.9 doesn't exist
   - English 2025.9: `2025.9/index.md` ⚠️ Fallback with "English Only" badge

3. **Wrapper is always available:**
   - `i18n/de.yaml` provides UI regardless of content availability

#### Translation Detection Logic

In our templates (`core-guide-list.html`, `extensions-guide-list.html`):

```html
{{- $defaultSite := index $.Site.Sites 0 }} {{- if ne $.Site.Language.Lang $defaultSite.Language.Lang }} {{- if not $guide.Translations }}
<!-- Show "English Only" badge -->
{{- else if eq (trim $guide.Content " \n\t") "" }}
<!-- Show "English Only" badge -->
{{- end }} {{- end }}
```

This checks:

1. Are we in a non-English language?
2. Does this guide have any translations?
3. Is the content empty (missing translation)?

#### Version Folder Structure

```
scrum-guide-expanded/
├── _index.md           # Section metadata (appears on homepage)
├── 2025.9/             # Latest version folder
│   ├── index.md        # English
│   ├── index.de.md     # German (if exists)
│   └── index.es.md     # Spanish (if exists)
└── 2025.6/             # Previous version folder
    ├── index.md        # English
    ├── index.de.md     # German (may exist even if 2025.9 doesn't)
    └── index.ro.md     # Romanian
```

**Key Insight:** Each version can have different languages translated. Hugo automatically uses the most recent translated version available for the user's language.

### For Non-Technical Contributors

**Simple Rule:** Create files with your language code, and Hugo automatically uses them!

**Example:**

- You create `index.pt.md` (Portuguese) in `2025.6/` folder
- Portuguese users automatically see it
- When `2025.9/` gets Portuguese, site updates automatically
- No coding needed!

**What This Means:**

1. Your translation of 2025.6 is valuable immediately
2. It stays useful until someone translates 2025.9
3. Users see content in their language (even if older version)
4. Better than seeing English content!

---

## 🌍 Translation Guidelines

### Language Codes

Use [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) two-letter codes when available, or [ISO 639-2](https://en.wikipedia.org/wiki/List_of_ISO_639-2_codes) three-letter codes for languages not covered:

**Two-letter codes:**

- `de` - German (Deutsch)
- `es` - Spanish (Español)
- `fr` - French (Français)
- `pt` - Portuguese
- `ja` - Japanese
- `zh` - Chinese

**Three-letter codes:**

- `tlh` - Klingon (example implementation available)

### Content Guidelines

1. **Preserve Structure:**
   - Keep all headings, links, and formatting
   - Maintain reference numbers exactly: (40), (58)
   - **Keep categories and tags unchanged** - Use the same values as the English version
   - Don't translate technical terms unnecessarily

2. **Cultural Adaptation:**
   - Adapt examples to local context when appropriate
   - Maintain the professional, educational tone
   - Consider regional business practices

3. **Consistency:**
   - Use consistent terminology throughout
   - Create a glossary for key Scrum terms
   - Follow existing translation patterns if available

### Quality Standards

- **Accuracy:** Faithful to original meaning
- **Clarity:** Clear and understandable for target audience
- **Completeness:** All content translated
- **Formatting:** Markdown and YAML syntax preserved

---

## 🔗 Technical Resources

### PowerShell Installation

For using the automated translation setup script:

- **Windows:** [Install PowerShell 7+](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows)
- **macOS:** [Install PowerShell on macOS](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-macos)
- **Linux:** [Install PowerShell on Linux](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-linux)

### Hugo Documentation

- [Hugo i18n Documentation](https://gohugo.io/content-management/multilingual/)
- [Hugo Content Management](https://gohugo.io/content-management/)
- [Markdown Guide](https://www.markdownguide.org/)

### YAML Resources

- [YAML Syntax Guide](https://docs.ansible.com/ansible/latest/reference_appendices/YAMLSyntax.html)
- [YAML Validator](https://yamlchecker.com/)

### Project Resources

- [Development Setup](development.md)
- [Contributing Guidelines](contributing.md)
- [Content Management](content-management.md)

---

## 🤝 Getting Help

### Before You Start

- Review the existing Klingon translation (`tlh`) as an example implementation
- Check if your language is already in progress
- Join our community discussions

### During Translation

- **GitHub Users:** Comment on your Pull Request
- **Community Contributors:** Comment on your submission issue
- **General Questions:** Create a [new issue](https://github.com/nkdAgility/ScrumGuide-ExpansionPack/issues)

### Translation Communities

- Connect with other translators in your language
- Share resources and terminology decisions
- Coordinate on quality review

---

## 🎉 Recognition

All translation contributors will be:

- Credited in the translated version
- Listed in project contributors
- Recognized in release notes
- Invited to join the translation team

Thank you for helping make Scrum knowledge accessible worldwide! 🌍
