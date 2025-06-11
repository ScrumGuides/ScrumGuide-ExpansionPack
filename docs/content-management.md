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
---
```

#### Content Guidelines

- Use **semantic markdown** structure (H1 → H2 → H3)
- Include **table of contents** for long sections
- Add **cross-references** between related sections
- Use **blockquotes** for important callouts
- Include **practical examples** and scenarios

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
