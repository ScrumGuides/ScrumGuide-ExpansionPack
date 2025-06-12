# Translation Guide

Help us make the Scrum Guide Expansion Pack accessible to everyone worldwide by contributing translations!

## 🎯 Quick Start - Choose Your Path

### Option 1: GitHub Collaboration (Recommended for developers)

**Best for:** People familiar with Git, GitHub, and collaborative development workflows.

**Process:**

1. Fork the repository
2. Create translation files
3. Collaborate with other translators
4. Submit Pull Request for review

[📖 Skip to GitHub Workflow](#github-workflow) →

### Option 2: Community Submission (For non-technical contributors)

**Best for:** Translators who prefer to focus on content rather than technical workflows.

**Process:**

1. Download translation templates
2. Work independently or collaborate via email/messaging
3. Submit completed translations via GitHub Issues
4. We'll create the Pull Request for community review

[📖 Skip to Community Workflow](#community-workflow) →

---

## 📋 What Needs Translation

To add a new language to the site, you'll need to translate:

### 1. Main Guide Content

- **File:** `site/content/guide/index.{LANG}.md`
- **Content:** The complete Scrum Guide Expansion Pack document
- **Size:** ~1,300 lines of Markdown content

### 2. User Interface Elements

- **File:** `site/i18n/{LANG}.yaml`
- **Content:** Navigation, buttons, labels, and interface text
- **Size:** ~130 translation keys

### 3. Supporting Content (Optional)

- Creator pages in `site/content/creators/`
- Download page content

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

#### A. Main Guide Translation

1. Copy the English guide:

```bash
cp site/content/guide/index.md site/content/guide/index.{LANG}.md
```

2. Edit the frontmatter in `site/content/guide/index.{LANG}.md`:

```yaml
---
title: "Your Translated Title"
description: "Your translated description"
# ... translate other metadata
---
```

3. Translate the entire content while preserving:
   - Markdown formatting (`##`, `**bold**`, `[links](url)`)
   - Hugo shortcodes
   - Reference numbers (40), (58), etc.
   - HTML comments and IDs

#### B. UI Translation File

1. Copy the English translations:

```bash
cp site/i18n/en.yaml site/i18n/{LANG}.yaml
```

2. Translate each entry in `site/i18n/{LANG}.yaml`:

```yaml
# Example - keep the ID, translate the text
- id: read_online_title
  translation: "Your translated text here"
```

### Step 4: Test Your Translation

1. **Install Hugo** (see [Development Guide](development.md))
2. **Run locally:**

```bash
cd site
hugo server --source site --config hugo.yaml,hugo.local.yaml
```

3. **View your translation:**
   - Navigate to `http://localhost:1313/{LANG}/`
   - Check all pages and UI elements

### Step 5: Submit for Review

1. **Commit your changes:**

```bash
git add .
git commit -m "Add {LANG} translation"
git push origin translation/add-{LANG}-language
```

2. **Create Pull Request:**

   - Go to your fork on GitHub
   - Click "New Pull Request"
   - Use title: "Add {Language Name} translation"
   - Include translation details in description

3. **Review Process:**
   - Creators and community will review
   - Native speakers may suggest improvements
   - Collaborate on refinements
   - Merge when approved

---

## 📝 Community Workflow

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

- Review the existing Klingon translation (tlh) for examples
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
