# 📝 Content Management Guide

This guide covers content creation, management, and maintenance for the Scrum Guide Expansion Pack project.

## Content Structure Overview

The site's content is organized in a hierarchical structure that supports multiple languages and different content types.

```
site/content/
├── _index.md                    # Homepage content
├── guide/
│   └── index.md                 # Main Guide content
├── creators/
│   ├── _index.md               # Creators index page
│   ├── ralph-jocham/
│   │   ├── index.md            # Ralph's profile
│   │   └── ralph-jocham.jpg    # Profile image
│   ├── john-coleman/
│   │   └── index.md            # John's profile
│   └── jeff-sutherland/
│       ├── index.md            # Jeff's profile
│       └── jeff-sutherland.jpg # Profile image
└── download/
    └── _index.md               # Download page content
```

## Content Types

### 1. Guide Content

The main Scrum Guide expansion content is stored in `/content/guide/index.md`.

#### Front Matter Structure

```yaml
---
title: "Scrum Guide Expansion Pack"
description: "An expanded interpretation of the 2020 Scrum Guide"
date: 2025-06-09
weight: 10
draft: false
type: "guide"
layout: "single"
enableMermaid: false  # Optional: Enable Mermaid.js diagrams (default: false)
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

### 3. Download Pages

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

### Language Structure

Each language has its own content directory structure:

```
content/
├── guide/          # English (default)
├───├──   index.md       # English (default)
├───├──   index.de.md       # German (Deutsch) example
```

### Translation Workflow

#### 1. Create Base Content (English)

Start with English content as the source:

```markdown
---
title: "Scrum Events"
description: "Detailed explanation of Scrum Events"
date: 2025-06-09
weight: 30
draft: false
---

# Scrum Events

The Scrum Events are timeboxed meetings...
```

#### 2. Translate Content

Create corresponding files in other languages:

**German (`content/guide/events.de.md`)**:

```markdown
---
title: "Scrum Ereignisse"
description: "Detaillierte Erklärung der Scrum Ereignisse"
date: 2025-06-09
weight: 30
draft: false
---

# Scrum Ereignisse

Die Scrum Ereignisse sind zeitlich begrenzte Meetings...
```

#### 3. Translation Guidelines

- **Maintain structure** - Keep the same heading hierarchy
- **Preserve links** - Update internal links to translated pages
- **Keep categories and tags identical** - Do not translate `categories` or `tags` in frontmatter; use exact same values as English
- **Cultural adaptation** - Adapt examples for local context
- **Consistent terminology** - Use established Scrum translations
- **Review process** - Have native speakers review translations

### Translation Resources

- **Scrum.org** official translations
- **Agile Alliance** glossary
- **Local Scrum communities** for terminology consistency

## Content Creation Workflow

### 1. Planning Phase

Before creating content:

- [ ] **Define objectives** - What should readers learn?
- [ ] **Identify audience** - Who will read this content?
- [ ] **Research thoroughly** - Ensure accuracy and completeness
- [ ] **Plan structure** - Outline headings and sections
- [ ] **Consider translations** - Plan for multilingual versions

### 2. Content Creation

```powershell
# Create new content file
cd site
hugo new content/guide/new-section.md

# Edit the file with your preferred editor
code content/guide/new-section.md
```

### 3. Content Review Process

1. **Self-review** - Check for errors and clarity
2. **Technical review** - Verify Scrum concepts are accurate
3. **Editorial review** - Check grammar and style
4. **Translation review** - Review translated versions
5. **Final approval** - Get maintainer approval

### 4. Publishing Process

```powershell
# Set draft to false when ready
# Update front matter in content file
draft: false

# Test locally
hugo server -D

# Commit and push
git add .
git commit -m "feat: add new content section"
git push origin feature/new-content
```

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

#### PDF Generation

PDFs are generated from the Hugo site content using external tools or services.

#### PDF Storage

```
static/pdf/
├── scrum-guide-expansion-pack-en.pdf
├── scrum-guide-expansion-pack-de.pdf
├── scrum-guide-expansion-pack-es.pdf
└── scrum-guide-expansion-pack-fr.pdf
```

#### PDF Update Process

1. **Generate** new PDF from updated content
2. **Review** PDF for formatting and accuracy
3. **Replace** old PDF in `/static/pdf/` directory
4. **Update** download links if needed
5. **Test** download functionality

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
