# 🏠 Homepage Structure

This document explains the organization and architecture of the homepage, including how guides are categorized and displayed.

## Overview

The homepage serves as the main entry point for users and is designed to help them quickly find the content they need. It's organized into several key sections:

1. **Hero Section** - Welcome message and primary calls-to-action
2. **Category List** - Quick navigation by topic
3. **Core Guide Section** - Featured display of the Scrum Guide Expanded
4. **Extensions Section** - Grid of specialized guides
5. **Community Section** - Contribution and engagement

## Homepage Template

**File**: `site/layouts/index.html`

The homepage uses a custom template that orchestrates the display of different content sections through Hugo partials:

```html
{{- define "main" }} {{- partial "components/home-hero.html" . }}

<main id="content" class="container my-5 py-5">
  <div class="row justify-content-center">
    <div class="col-12 col-xl-11 col-xxl-10">{{ partial "components/category-list.html" . }} {{ partial "components/core-guide-list.html" . }} {{ partial "components/extensions-guide-list.html" . }}</div>
  </div>
</main>

{{- partial "components/community-section.html" . }} {{- end }}
```

## Section Details

### 1. Hero Section

**Partial**: `site/layouts/_partials/components/home-hero.html`

The hero section provides:

- Site title and tagline
- Primary call-to-action button
- Visual branding

### 2. Category List

**Partial**: `site/layouts/_partials/components/category-list.html`

Displays all available categories as filter buttons, allowing users to:

- Browse guides by topic
- See how many guides are in each category
- Quickly navigate to category-filtered views

### 3. Core Guide Section

**Partial**: `site/layouts/_partials/components/core-guide-list.html`

This section is **hard-coded** to display only the `scrum-guide-expanded` guide.

#### Key Features

- **Prominent Display**: Large card with primary color border
- **Core Document Badge**: Visual indicator of foundational content
- **Enhanced Styling**: Higher visual weight than extensions
- **Reading Time**: Estimated time to read the content
- **Contributors**: Shows authors and reviewers with icons

#### Implementation

```html
{{- $coreGuide := .Site.GetPage "/scrum-guide-expanded" }} {{- if $coreGuide }}
<!-- Display core guide with enhanced styling -->
{{- end }}
```

The partial:

1. Fetches the `scrum-guide-expanded` page
2. Displays it with a special "Core Document" badge
3. Shows enhanced card styling (border-primary, shadow-sm)
4. Includes contributor information
5. Adds reading time estimate

### 4. Extensions Section

**Partial**: `site/layouts/_partials/components/extensions-guide-list.html`

Displays all guides **except** `scrum-guide-expanded` in a responsive grid.

#### Key Features

- **Grid Layout**: Responsive 3-column grid (12 columns on mobile, 6 on tablet, 4 on desktop)
- **Category Badges**: Shows associated categories
- **Reading Time**: Estimated time for each guide
- **English-Only Indicator**: Badge for content not yet translated
- **Sorting**: Ordered by weight (lower numbers first)

#### Implementation

```html
{{- $expansionSections := where .Site.Sections "Type" "guide" }} {{- $filtered := slice }} {{- range $expansionSections }} {{- $isExpansion := partial "functions/is-expansion.html" . }} {{- if $isExpansion }} {{- $filtered = $filtered | append . }} {{-
end }} {{- end }}
```

The partial:

1. Collects all sections with `Type: "guide"`
2. Filters out `scrum-guide-expanded` using the `is-expansion` function
3. Supports category/tag filtering when viewing taxonomy pages
4. Sorts by weight
5. Displays in responsive card grid

#### Filtering Logic

**Helper Function**: `site/layouts/_partials/functions/is-expansion.html`

This function determines if a guide is an extension (not the core guide):

```html
{{- $isExpansion := true }} {{- if eq .File.ContentBaseName "scrum-guide-expanded" }} {{- $isExpansion = false }} {{- else if eq .Section "scrum-guide-expanded" }} {{- $isExpansion = false }} {{- end }} {{- return $isExpansion }}
```

### 5. Community Section

**Inline in**: `site/layouts/index.html`

Provides:

- Open source messaging
- Statistics (number of guides, authors, etc.)
- Call-to-action buttons for GitHub Discussions and repository
- Community engagement encouragement

## Guide Organization

### Core vs Extensions

The homepage makes a clear distinction between core and extension content:

| Aspect       | Core Guide                       | Extension Guides             |
| ------------ | -------------------------------- | ---------------------------- |
| **Document** | `scrum-guide-expanded`           | All other guides             |
| **Display**  | Single large card                | Responsive grid of cards     |
| **Badge**    | "Core Document" badge            | Category badges              |
| **Styling**  | Primary border, enhanced shadow  | Standard cards               |
| **Location** | Dedicated section                | Grouped in Extensions        |
| **Purpose**  | Foundational comprehensive guide | Specialized topic deep-dives |

### How Guides are Identified

A guide is considered for homepage display if:

1. **Has `Type: "guide"`** in its `_index.md` front matter
2. **Is at the section level** (not a subsection or version)
3. **For Core**: Must be `scrum-guide-expanded` specifically
4. **For Extensions**: Any guide type except `scrum-guide-expanded`

### Content Structure Example

```text
content/
├── scrum-guide-expanded/        # CORE GUIDE
│   ├── _index.md               # Metadata (Type: "guide")
│   ├── 2025.9/                 # Latest version
│   │   └── index.md            # Actual content
│   └── 2025.6/                 # Previous version
│       └── index.md
│
├── adaptive-enterprise/         # EXTENSION GUIDE
│   ├── _index.md               # Metadata (Type: "guide")
│   └── 2025.9/
│       └── index.md
│
└── ai-and-scrum/                # EXTENSION GUIDE
    ├── _index.md               # Metadata (Type: "guide")
    └── 2025.9/
        └── index.md
```

### Front Matter Requirements

#### Core Guide (`scrum-guide-expanded/_index.md`)

```yaml
---
title: Scrum Guide Expanded
short_title: Scrum Guide Expanded # Used in cards
description: The comprehensive companion to the 2020 Scrum Guide
Type: "guide" # REQUIRED for display
Layout: "root"
weight: 2 # Lower = higher priority
categories:
  - Strategy # For filtering
---
```

#### Extension Guide (e.g., `ai-and-scrum/_index.md`)

```yaml
---
title: AI and Scrum
short_title: AI & Scrum # Used in cards
description: Practical guidance for integrating AI
Type: "guide" # REQUIRED for display
Layout: "root"
weight: 10 # For sorting
categories:
  - Technology # For filtering
  - Innovation
tags:
  - AI # Additional taxonomy
  - Machine Learning
---
```

## Responsive Design

The homepage is fully responsive using Bootstrap 5:

### Breakpoints

| Breakpoint | Screen Width | Core Guide | Extensions Grid |
| ---------- | ------------ | ---------- | --------------- |
| Mobile     | < 768px      | Full width | 1 column        |
| Tablet     | 768px+       | Full width | 2 columns       |
| Desktop    | 992px+       | Full width | 3 columns       |
| Large      | 1200px+      | Centered   | 3 columns       |

### Layout Classes

- **Container**: `container` for responsive width
- **Content wrapper**: `col-12 col-xl-11 col-xxl-10` for centered, responsive content
- **Core guide card**: `col-12` (always full width)
- **Extension cards**: `col-12 col-md-6 col-lg-4` (responsive grid)

## Multilingual Support

All homepage text is internationalized using Hugo's i18n system:

### Translation Keys

Defined in `site/i18n/{lang}.yaml`:

```yaml
# Core section
core_section_title: "Scrum Guide Expansion"
core_document_badge: "Core Document"

# Extensions section
extensions_section_title: "Expansions"
documents: "documents"

# Community section
open_source_title: "Open Source & Community Driven"
community_description: "This expansion pack thrives on community collaboration..."
join_discussion_button: "Join the Discussion"
view_on_github: "View on GitHub"
```

### Language-Specific Display

The homepage automatically adapts to the current language:

- Section titles and labels are translated
- Guide content is shown in the appropriate language
- "English Only" badges appear for untranslated content

## Adding New Guides

To add a new extension guide to the homepage:

1. **Create guide directory**:

   ```bash
   mkdir -p site/content/my-new-guide/2025.9
   ```

2. **Create guide metadata** (`_index.md`):

   ```yaml
   ---
   title: My New Guide
   short_title: New Guide
   description: Description of the guide
   Type: "guide" # REQUIRED
   Layout: "root"
   weight: 15 # For sorting
   categories:
     - YourCategory
   ---
   ```

3. **Create guide content** (`2025.9/index.md`):

   ```markdown
   ---
   title: My New Guide
   date: 2025-06-09
   ---

   # Guide Content

   Your content here...
   ```

4. **Test locally**:
   ```bash
   cd site
   hugo server -D
   ```

The new guide will automatically appear in the Extensions section!

## Customization

### Changing Core Guide Display

To feature a different guide as the core document, edit:

`site/layouts/_partials/components/core-guide-list.html`

```html
{{/* Change this line */}} {{- $coreGuide := .Site.GetPage "/scrum-guide-expanded" }} {{/* To your guide */}} {{- $coreGuide := .Site.GetPage "/your-guide-path" }}
```

### Modifying Extension Filtering

To change which guides appear as extensions, edit:

`site/layouts/_partials/functions/is-expansion.html`

```html
{{/* Add your exclusion logic */}} {{- if eq .Section "guide-to-exclude" }} {{- $isExpansion = false }} {{- end }}
```

### Styling Customizations

Custom styles are in `site/static/css/style.css`:

```css
/* Core guide card styling */
.border-primary {
  border-color: #135289 !important;
}
.border-2 {
  border-width: 2px !important;
}

/* Hover effects */
.hover-lift {
  transition: transform 0.2s;
}
.hover-lift:hover {
  transform: translateY(-4px);
}
```

## Performance Considerations

- **Static Generation**: All homepage content is pre-rendered at build time
- **No JavaScript Required**: Core functionality works without JavaScript
- **Lazy Loading**: Images can be lazy-loaded for better performance
- **Minimal Queries**: Hugo efficiently fetches only needed pages

## Troubleshooting

### Guide Not Appearing

**Check**:

1. ✅ `Type: "guide"` in `_index.md`
2. ✅ Guide is at section level (not subsection)
3. ✅ Not in draft mode (`draft: false` or omitted)
4. ✅ `weight` is set for proper sorting

### Core Guide Not Displaying

**Check**:

1. ✅ Path is exactly `/scrum-guide-expanded`
2. ✅ `_index.md` exists in guide directory
3. ✅ `Type: "guide"` is set
4. ✅ Content is published (not draft)

### Layout Issues

**Check**:

1. ✅ Bootstrap 5 is loaded
2. ✅ Custom CSS is loaded after Bootstrap
3. ✅ Responsive classes are correct
4. ✅ Browser cache is cleared

---

**Next**: Learn about [Content Management](./content-management.md) and [Architecture](./architecture.md).
