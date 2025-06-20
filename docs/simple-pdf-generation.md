# Simple PDF Generation Guide

This guide explains the minimal approach to generating PDFs from Markdown files using only Pandoc and frontmatter configuration.

## Prerequisites

Before you can generate PDFs, ensure you have the following installed:

### Required Software

1. **PowerShell 7+** - Required for running the automation script

   - **Windows**: [Install PowerShell 7+](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows)
   - **macOS**: [Install PowerShell on macOS](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-macos)
   - **Linux**: [Install PowerShell on Linux](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-linux)
   - Verify installation: `pwsh --version`

2. **Pandoc** - Document converter

   - [Download Pandoc](https://pandoc.org/installing.html)
   - Required for converting Markdown to PDF
   - Verify installation: `pandoc --version`

3. **LaTeX Distribution** - PDF rendering engine
   - **Windows**: [MiKTeX](https://miktex.org/) or [TeX Live](https://tug.org/texlive/)
   - **macOS**: [MacTeX](https://tug.org/mactex/)
   - **Linux**: TeX Live (usually available via package manager)
   - Verify installation: `xelatex --version`

### Quick Installation Commands

#### PowerShell 7+

**Windows:**

```powershell
# Using Windows Package Manager (winget)
winget install Microsoft.PowerShell

# Using Chocolatey
choco install powershell-core
```

**macOS:**

```bash
# Using Homebrew
brew install powershell
```

**Linux (Ubuntu/Debian):**

```bash
# Download and install latest version
curl -sSL https://aka.ms/install-powershell.sh | sudo bash
```

## Overview

The PDF generation process has been simplified to use:

1. **YAML frontmatter** in Markdown files for all configuration
2. **Simple Pandoc command** with minimal arguments
3. **Cover page injection** using `--include-before-body`

## Files Structure

```
scripts/
├── Create-GuidePDFs.ps1   # PowerShell script for PDF generation
├── cover-page.tex         # LaTeX cover page template
└── simple-template.tex    # Minimal LaTeX template (optional)

site/content/guide/
├── index.md               # English version
├── index.fa.md            # Farsi version
└── index.tlh.md           # Klingon version
```

## Markdown Frontmatter

Each Markdown file must include the following frontmatter for PDF generation:

### English (LTR languages)

```yaml
---
title: Your Document Title
description: Document description for cover page
lang: en
dir: ltr
mainfont: "Times New Roman"
sansfont: "Arial"
monofont: "Courier New"
pdf-engine: xelatex
creator:
  - Author Name 1
  - Author Name 2
---
```

### Farsi/Arabic (RTL languages)

```yaml
---
title: عنوان سند شما
description: توضیحات سند برای صفحه جلد
lang: fa
dir: rtl
mainfont: "BNazanin"
sansfont: "BNazanin"
monofont: "BNazanin"
pdf-engine: xelatex
creator:
  - نام نویسنده اول
  - نام نویسنده دوم
---
```

## Key Frontmatter Parameters

- **`lang`**: Language code (e.g., `en`, `fa`, `tlh`)
- **`dir`**: Text direction (`ltr` or `rtl`)
- **`mainfont`**: Main font for the document
- **`sansfont`**: Sans-serif font
- **`monofont`**: Monospace font
- **`pdf-engine`**: Use `xelatex` for Unicode support

## Manual Pandoc Command

You can generate PDFs manually using this simple command:

```bash
pandoc input.md -o output.pdf --include-before-body=cover-page.tex
```

### Example Commands

```bash
# English version
pandoc index.md -o scrum-guide-expansion-pack.en.pdf --include-before-body=cover-page.tex

# Farsi version
pandoc index.fa.md -o scrum-guide-expansion-pack.fa.pdf --include-before-body=cover-page.tex

# Klingon version
pandoc index.tlh.md -o scrum-guide-expansion-pack.tlh.pdf --include-before-body=cover-page.tex
```

## Using the PowerShell Script

> **📋 Prerequisites**: Ensure [PowerShell 7+](#prerequisites) is installed before running the script.

The `Create-GuidePDFs.ps1` script automates the process:

```powershell
# Generate all PDFs
.\scripts\Create-GuidePDFs.ps1

# Force regeneration
.\scripts\Create-GuidePDFs.ps1 -Force

# Generate specific language
.\scripts\Create-GuidePDFs.ps1 -Language fa
```

## How It Works

1. **Pandoc reads frontmatter automatically** - All configuration comes from the YAML header
2. **Cover page injection** - The `--include-before-body` argument adds the cover page
3. **Font handling** - XeLaTeX engine handles Unicode and custom fonts
4. **No external variables** - Everything is self-contained in the Markdown files

## Font Requirements

Ensure the following fonts are installed on your system:

### For English/Latin scripts:

- Times New Roman (mainfont)
- Arial (sansfont)
- Courier New (monofont)

### For Farsi/Arabic scripts:

- BNazanin or similar Arabic/Farsi font
- Alternative: Tahoma, Arial Unicode MS

### For other scripts:

- Install appropriate Unicode fonts for your target language

## Troubleshooting

### Common Issues

1. **"Font not found" errors**

   - Install the required fonts on your system
   - Check font names with `fc-list` on Linux/macOS
   - Use fallback fonts like "DejaVu Sans" if needed

2. **XeLaTeX not found**

   - Install TeX Live, MiKTeX, or MacTeX
   - Ensure XeLaTeX is in your PATH

3. **Character encoding issues**
   - Ensure Markdown files are saved as UTF-8
   - Use XeLaTeX engine (specified in frontmatter)

### Testing Font Availability

```bash
# On Linux/macOS
fc-list | grep -i "font-name"

# On Windows (PowerShell)
Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts' | Select-Object PSChildName
```

## Benefits of This Approach

1. **Simplicity** - No complex script logic
2. **Self-documenting** - All configuration is in the source files
3. **Maintainable** - Easy to understand and modify
4. **Portable** - Works with standard Pandoc installation
5. **Version control friendly** - Configuration travels with content

## Migration from Complex Scripts

If you previously used complex PowerShell scripts:

1. **Move configuration** from script variables to frontmatter
2. **Remove font detection logic** - specify fonts directly
3. **Remove YAML parsing** - let Pandoc handle it
4. **Simplify error handling** - rely on Pandoc's built-in checks

## Advanced Usage

For more complex documents, you can still use additional Pandoc options:

```bash
# With custom template
pandoc input.md -o output.pdf --template=simple-template.tex --include-before-body=cover-page.tex

# With additional filters
pandoc input.md -o output.pdf --include-before-body=cover-page.tex --filter pandoc-citeproc

# With variables
pandoc input.md -o output.pdf --include-before-body=cover-page.tex -V geometry:margin=2cm
```

But remember: the goal is simplicity. Only add complexity when necessary.
