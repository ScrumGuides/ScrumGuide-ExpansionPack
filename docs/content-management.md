# 📝 Content Management Guide

This guide covers content creation, management, and maintenance for the Scrum Guide Expansion Pack project.

## Content Structure Overview

The site's content is organized around **versioned guides** that support multiple languages. Each guide is a self-contained document with version control.

### Guide Structure

```
site/content/
├── _index.md                              # Homepage content
├── scrum-guide-expanded/                  # CORE GUIDE - Main comprehensive document
│   ├── _index.md                         # Guide landing page
│   ├── 2026.1/                           # Version 2026.1
│   │   ├── index.md                      # English version
│   │   ├── index.de.md                   # German version
│   │   ├── index.es.md                   # Spanish version
│   │   └── pdf/                          # Generated PDFs
│   ├── 2025.6/                           # Previous version
│   ├── history/                          # Version history
│   └── translations/                     # Translation metadata
├── complexity/                            # EXTENSION GUIDE - Complexity in Scrum
│   ├── _index.md
│   ├── 2026.1/
│   ├── history/
│   └── translations/
├── psychological-safety-in-scrum-teams/  # EXTENSION GUIDE
│   ├── _index.md
│   ├── 2026.1/
│   ├── history/
│   └── translations/
├── adaptive-enterprise/                   # EXTENSION GUIDE
├── multi-team-scrum/                      # EXTENSION GUIDE
├── software-engineering-practices/        # EXTENSION GUIDE
└── creators/                              # LEGACY - Kept for backward compatibility
    ├── _index.md
    ├── ralph-jocham/
    ├── john-coleman/
    └── jeff-sutherland/
```

### Content Types

#### 1. Core Guide

**Location**: `/content/scrum-guide-expanded/`

The main comprehensive companion to the 2020 Scrum Guide. This is the primary document that all extension guides build upon.

#### 2. Extension Guides

**Locations**: `/content/complexity/`, `/content/psychological-safety-in-scrum-teams/`, etc.

Specialized guides that expand on specific topics. Each extension guide:


- Has its own versioning
- Can be updated independently
- References the core guide
- Follows the same structure as the core guide

#### Front Matter Structure

**Guide Index (`_index.md`)** - Defines the guide itself:

```yaml
---
title: Psychological Safety in Scrum Teams
description: Learn why Scrum turns into empty mechanics when people do not feel safe to speak up.
Type: "guide"
Layout: "root"
brand:
  bg_colour: "#0072B2"
  image: "images/scrum-guide-expansion-pack-logo-solo.png"
weight: 2
guide_license: |
  License: Creative Commons Attribution-ShareAlike 4.0 International ( CC BY-SA 4.0  ).
categories:
  - Safety
  - Transparency
  - Teams
tags:
  - Psychological safety
  - Scrum Teams
sitemap:
  priority: 0.8
---
```

**Version Content (`2026.1/index.md`)** - The actual guide content:

```yaml
---
title: Psychological Safety in Scrum Teams (Expansion of the SGEP)
subtitle: An empirical lens on safety as a foundation for learning
description: A research-based examination of psychological safety in Scrum Teams.
keywords:
  - Psychological safety
  - Scrum Teams
  - Empiricism
date: 2026-01-18T09:00:00Z
type: guide
sitemap:
  priority: 0.7
---
```

##### Front Matter Options

- **`title`** - Page title (required)
- **`description`** - SEO meta description (required)
- **`date`** - Publication date (required)
- **`weight`** - Sort order for navigation (optional)
- **`draft`** - Set to `true` to hide from production (default: `false`)
- **`type`** - Content type (e.g., "guide", "creator")
- **`layout`** - Template layout to use
- **`enableMermaid`** - Enable Mermaid.js for diagrams (default: `false`)

#### Content Guidelines

- Use **semantic markdown** structure (H1 → H2 → H3)
- Include **table of contents** for long sections
- Add **cross-references** between related sections
- Use **blockquotes** for important callouts
- Include **practical examples** and scenarios

#### Blockquotes and Callouts

The site supports standard blockquotes and enhanced alert-style callouts to highlight important information.

##### Standard Blockquotes

Use standard markdown blockquotes for quotations or simple callouts:

```markdown
> This is a standard blockquote.
> It can span multiple lines.
```

**Renders as:**
A styled blockquote with a vertical accent bar on the left.

##### Alert-Style Callouts

For more prominent callouts, use GitHub-flavored alert syntax with these types:

**Available Alert Types:**

- **`[!NOTE]`** - General information (blue, info icon ℹ️)
- **`[!TIP]`** - Helpful suggestions (green, lightbulb icon 💡)
- **`[!IMPORTANT]`** - Critical information (yellow, warning icon ⚠️)
- **`[!WARNING]`** - Important warnings (yellow, warning icon ⚠️)
- **`[!CAUTION]`** - Serious warnings (red, alert icon 🚨)
- **`[!HIGHLIGHT]`** - Key concepts to emphasize (special highlight style)

**Syntax:**

```markdown
> [!NOTE]
> This is a note with default title.

> [!TIP] Custom Title
> This is a tip with a custom title.

> [!IMPORTANT]
> This is important information that requires attention.

> [!WARNING] Proceed with Caution
> This warning has a custom title.

> [!CAUTION]
> This is a serious caution message.

> [!HIGHLIGHT] Model Mismatch
> When the business theory embedded in your operating model no longer aligns 
> with your environment, the model becomes a systematic source of waste—no 
> matter how well you execute it.
```

**Usage Guidelines:**

- **Use sparingly** - Too many callouts reduce their effectiveness
- **Be specific** - Choose the alert type that best matches the content's purpose
- **Custom titles** - Add descriptive titles after the alert type for clarity
- **Keep concise** - Callouts should be brief and focused
- **Placement** - Position callouts near related content for context

**Best Practices:**

- `[!NOTE]` - For additional context, explanations, or clarifications
- `[!TIP]` - For helpful suggestions, best practices, or pro tips
- `[!IMPORTANT]` - For critical information that must not be overlooked
- `[!WARNING]` - For potential pitfalls or common mistakes to avoid
- `[!CAUTION]` - For serious consequences or risks
- `[!HIGHLIGHT]` - For key insights, principles, or memorable takeaways

**Example from Operating Models Guide:**

```markdown
> [!HIGHLIGHT] The Leadership Error
> Claiming "We're agile" while demanding fixed scope, fixed dates, and maximum 
> utilization is not a product issue. It's a leadership and organizational design 
> issue masquerading as an execution problem.
```

#### Diagrams with Mermaid.js

The site supports Mermaid.js for creating diagrams directly in markdown. This feature must be explicitly enabled per page.

##### Enabling Mermaid

To use Mermaid diagrams on a page, add `enableMermaid: true` to the front matter:

```yaml
---
title: "Your Guide Page"
enableMermaid: true
---
```

**Important:** Mermaid is **disabled by default** to optimize page load performance. Only enable it on pages that actually use diagrams.

##### Creating Diagrams

Once enabled, create diagrams using fenced code blocks with the `mermaid` language identifier:

**Flowchart Example:**

````markdown
```mermaid
flowchart TD
    A[Start] --> B{Decision}
    B -->|Yes| C[Action 1]
    B -->|No| D[Action 2]
    C --> E[End]
    D --> E
```
````

**Sequence Diagram Example:**

````markdown
```mermaid
sequenceDiagram
    participant PO as Product Owner
    participant DEV as Developers
    participant SM as Scrum Master
    
    PO->>DEV: Define Product Goal
    DEV->>SM: Request facilitation
    SM->>DEV: Facilitate Sprint Planning
    DEV->>PO: Clarify requirements
```
````

**Gantt Chart Example:**

````markdown
```mermaid
gantt
    title Sprint Timeline
    dateFormat YYYY-MM-DD
    section Sprint 1
    Sprint Planning    :2025-06-09, 2d
    Development        :2025-06-11, 10d
    Sprint Review      :2025-06-21, 1d
    Sprint Retro       :2025-06-21, 1d
```
````

##### Supported Diagram Types

Mermaid.js supports many diagram types:

- **Flowcharts** - Process flows and decision trees
- **Sequence Diagrams** - Interaction between participants
- **Class Diagrams** - Object-oriented structures
- **State Diagrams** - State machines and transitions
- **Entity-Relationship Diagrams** - Database schemas
- **Gantt Charts** - Project timelines
- **Pie Charts** - Data visualization
- **Git Graphs** - Branch and merge visualization

##### Best Practices

- **Enable only when needed** - Keep `enableMermaid: false` unless the page uses diagrams
- **Keep diagrams simple** - Complex diagrams may be hard to read on mobile
- **Use descriptive labels** - Make diagram elements self-explanatory
- **Test rendering** - Preview diagrams locally before committing
- **Provide alt text context** - Add explanatory text before/after diagrams
- **Consider accessibility** - Ensure diagrams complement, not replace, text explanations

##### Mermaid Resources

- [Mermaid.js Official Documentation](https://mermaid.js.org/)
- [Mermaid Live Editor](https://mermaid.live/) - Test diagrams online
- [Syntax Reference](https://mermaid.js.org/intro/syntax-reference.html)

### 2. Creator Profiles

Creator profiles showcase the authors and contributors to the expansion pack.

#### Profile Structure

```yaml
---
title: "Ralph Jocham"
description: "Professional Scrum Trainer and Agile Coach"
date: 2025-06-09
weight: 1
draft: false
type: "creator"
image: "ralph-jocham.jpg"
role: "Professional Scrum Trainer"
company: "Agile Coach Academy"
website: "https://example.com"
linkedin: "https://linkedin.com/in/example"
twitter: "https://twitter.com/example"
---

# Ralph Jocham

Brief biography and background...

## Experience
- Professional experience details
- Key achievements
- Relevant certifications

## Contributions
- Specific contributions to the Scrum Guide Expansion Pack
- Areas of expertise
```

### 3. Contributor Attribution (Current System)

Use the [shared contributor and credit procedure](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.6-Preview.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/credits-pdfs.md). Guide creators/contributors and translation teams have separate files in `site/data/contributions/`. Keep existing attribution intact unless the relevant owner approves a change; do not infer consent, identities or roles. Creator profile pages under `site/content/creators/` are bespoke site content and are separate from guide credit records.

Site contributor portraits live under `site/static/images/contributors/`. Obtain consent for public names, profile links and images. Existing supplied PDFs are protected resources, not outputs to regenerate during a package update.

### 4. Download Pages

Information about available downloads, including PDFs and resources.

```yaml
---
title: "Downloads"
description: "Download the Scrum Guide Expansion Pack in various formats"
date: 2025-06-09
weight: 20
draft: false
type: "download"
---

# Available Downloads

## PDF Versions
- **English**: [Download PDF](../pdf/scrum-guide-expansion-pack-en.pdf)
```

## Multilingual Content Management

Follow [site translation policy](translations.md) and OGP's [shared translation tasks](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.6-Preview.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/translation.md). Preserve categories/tags, academic references, partial translations, fallback intent and production exclusions. The core and each extension have independent editions; discover the selected inventory rather than copying a fixed file list.

## Content Creation Workflow

Use OGP's [content operations](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.6-Preview.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/content.md) and [validation/submission procedure](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.6-Preview.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/validation.md). Agree the purpose and audience before drafting. This site requires self-review, technical Scrum review, editorial review, translation review when applicable, and final guide-owner/maintainer approval. Successful rendering does not grant publication approval.

## Content Maintenance

### Regular Maintenance Tasks

#### Weekly

- [ ] **Check for typos** and grammatical errors
- [ ] **Verify links** are working correctly
- [ ] **Review analytics** for popular content
- [ ] **Monitor feedback** from users

#### Monthly

- [ ] **Update content** based on Scrum Guide changes
- [ ] **Review translations** for accuracy
- [ ] **Check image quality** and optimization
- [ ] **Update creator profiles** if needed

#### Quarterly

- [ ] **Content audit** - Remove outdated information
- [ ] **SEO review** - Update meta descriptions and titles
- [ ] **Accessibility check** - Ensure content is accessible
- [ ] **Performance review** - Optimize content for speed

### Content Standards

#### Writing Style

- **Clear and concise** - Use simple, direct language
- **Active voice** - Prefer active over passive voice
- **Consistent terminology** - Use Scrum terms consistently
- **Practical examples** - Include real-world scenarios
- **Inclusive language** - Use gender-neutral and inclusive terms

#### Formatting Standards

- **Headings**: Use semantic hierarchy (H1 → H2 → H3)
- **Lists**: Use bullet points for unordered items, numbers for sequences
- **Emphasis**: Use **bold** for important terms, _italics_ for emphasis
- **Links**: Use descriptive link text, not "click here"
- **Images**: Include alt text for accessibility

#### SEO Best Practices

- **Meta descriptions**: 150-160 characters, compelling and descriptive
- **Title tags**: Include target keywords, under 60 characters
- **Headings**: Use keywords naturally in headings
- **Internal linking**: Link to related content within the site
- **Image optimization**: Use descriptive filenames and alt text

## Digital Asset Management

### Images and Graphics

#### Image Guidelines

- **Format**: Use WebP for web, fallback to JPG/PNG
- **Size**: Optimize for web (typically under 1MB)
- **Dimensions**: Use consistent aspect ratios
- **Naming**: Use descriptive, kebab-case names
- **Alt text**: Always include meaningful alt text

#### Storage Structure

```
static/images/
├── creators/           # Creator profile photos
├── guide/             # Guide-related illustrations
├── logos/             # Brand logos and icons
└── general/           # General purpose images
```

#### Image Processing

```powershell
# Using Hugo's image processing (in templates)
{{ $image := resources.Get "images/example.jpg" }}
{{ $resized := $image.Resize "800x" }}
<img src="{{ $resized.RelPermalink }}" alt="Example image">
```

### PDF Management

Follow [ScrumExpansion PDF policy](simple-pdf-generation.md) and the linked shared procedure. Preserve supplied PDFs and their paths. Any new eligible PDF needs approved presentation choices and visual review of script shaping, fonts, covers, attribution, citations and pagination.

## Content Analytics and Optimization

### Analytics Setup

- **Google Analytics** - Track page views and user behavior
- **Search Console** - Monitor search performance
- **Heat mapping** - Understand user interaction patterns

### Key Metrics to Monitor

- **Page views** per content section
- **Time on page** for guide content
- **Bounce rate** for different content types
- **Download statistics** for PDFs
- **Search queries** leading to content

### Content Optimization

Based on analytics data:

- **Improve** low-performing content
- **Expand** popular sections
- **Fix** high bounce rate pages
- **Update** outdated information
- **Enhance** user experience

## Accessibility Guidelines

### Content Accessibility

- **Alt text** for all images
- **Descriptive headings** that make sense out of context
- **Meaningful link text** that describes the destination
- **Color contrast** meets WCAG AA standards
- **Reading level** appropriate for audience

### Testing Accessibility

```powershell
# Install accessibility testing tools
npm install -g pa11y axe-cli

# Test pages for accessibility
pa11y http://localhost:1313
axe http://localhost:1313
```

## Content Backup and Recovery

### Backup Strategy

- **Git repository** serves as primary backup
- **GitHub** provides remote backup
- **Local backups** of generated PDFs and images
- **Regular exports** of analytics data

### Recovery Procedures

1. **Content corruption**: Restore from Git history
2. **Accidental deletion**: Use Git to recover files
3. **Site rebuild**: Regenerate from source content
4. **Data loss**: Restore from backup repositories

---

🔙 **Back to**: [Documentation Home](./README.md)  
➡️ **Next**: [Configuration Reference](./configuration.md)
