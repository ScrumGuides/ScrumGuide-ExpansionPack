#!/usr/bin/env pwsh
<#
.SYNOPSIS
Simple PDF generation script using Pandoc with frontmatter-based configuration.

.DESCRIPTION
This script generates PDF files from Markdown sources using a minimal approach:
- All configuration is done via YAML frontmatter in the Markdown files
- Uses a simple Pandoc command with --include-before-body for cover page
- No complex logic - just iterates through guide files and calls Pandoc

.PARAMETER Force
Overwrite existing PDF files if they exist

.PARAMETER Language
Generate PDF for a specific language code only (e.g., 'fa' for Farsi)

.EXAMPLE
.\Generate-PDFs.ps1

.EXAMPLE
.\Generate-PDFs.ps1 -Force

.EXAMPLE
.\Generate-PDFs.ps1 -Language fa
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $false)]
    [switch]$Force,
    
    [Parameter(Mandatory = $false)]
    [string]$Language
)

# Set error action preference
$ErrorActionPreference = "Stop"

# Get directories
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Split-Path -Parent $scriptDir
$guideDir = Join-Path $projectRoot "site\content\guide"
$pdfOutputDir = Join-Path $guideDir "pdf"
$coverPagePath = Join-Path $scriptDir "cover-page.tex"

Write-Host "📚 Simple PDF Generation for Scrum Guide Expansion Pack" -ForegroundColor Green

# Validate directories and files
if (-not (Test-Path $guideDir)) {
    throw "Guide directory not found: $guideDir"
}

if (-not (Test-Path $coverPagePath)) {
    throw "Cover page template not found: $coverPagePath"
}

# Check if pandoc is available
try {
    $pandocVersion = & pandoc --version | Select-Object -First 1
    Write-Host "✅ Found: $pandocVersion" -ForegroundColor Green
}
catch {
    throw "Pandoc is required but not found. Please install pandoc: https://pandoc.org/installing.html"
}

# Create output directory if it doesn't exist
if (-not (Test-Path $pdfOutputDir)) {
    New-Item -ItemType Directory -Path $pdfOutputDir -Force | Out-Null
    Write-Host "📁 Created output directory: $pdfOutputDir" -ForegroundColor Yellow
}

# Find all guide markdown files
$guideFiles = Get-ChildItem -Path $guideDir -Name "index*.md"

if ($Language) {
    if ($Language -eq "en") {
        $guideFiles = $guideFiles | Where-Object { $_ -eq "index.md" }
    }
    else {
        $guideFiles = $guideFiles | Where-Object { $_ -eq "index.$Language.md" }
    }
    if (-not $guideFiles) {
        throw "No guide file found for language: $Language"
    }
}

Write-Host "📄 Found $($guideFiles.Count) guide file(s) to process" -ForegroundColor Cyan

foreach ($guideFile in $guideFiles) {
    $inputPath = Join-Path $guideDir $guideFile
    
    # Extract language code from filename
    if ($guideFile -match "index\.(.+)\.md$") {
        $langCode = $Matches[1]
        $outputFileName = "scrum-guide-expansion-pack.$langCode.pdf"
    }
    else {
        $langCode = "en"
        $outputFileName = "scrum-guide-expansion-pack.en.pdf"
    }
    
    $outputPath = Join-Path $pdfOutputDir $outputFileName
    
    Write-Host "`n🔄 Processing: $guideFile ($langCode)" -ForegroundColor Cyan
    
    # Check if we should skip (file exists and not forcing)
    if ((Test-Path $outputPath) -and -not $Force) {
        $inputTime = (Get-Item $inputPath).LastWriteTime
        $outputTime = (Get-Item $outputPath).LastWriteTime
        
        if ($outputTime -gt $inputTime) {
            Write-Host "⏭️  Skipping $outputFileName (already up-to-date). Use -Force to regenerate." -ForegroundColor Yellow
            continue
        }
    }
    
    Write-Host "🔧 Generating PDF with Pandoc..." -ForegroundColor White
    
    try {
        # Simple Pandoc command - all configuration comes from frontmatter
        & pandoc $inputPath -o $outputPath --include-before-body=$coverPagePath
        
        if ($LASTEXITCODE -eq 0) {
            Write-Host "✅ Generated: $outputFileName" -ForegroundColor Green
        }
        else {
            Write-Host "❌ Failed to generate: $outputFileName" -ForegroundColor Red
        }
    }
    catch {
        Write-Host "❌ Error generating $outputFileName`: $_" -ForegroundColor Red
    }
}

Write-Host "`n🎉 PDF generation complete!" -ForegroundColor Green
Write-Host "📁 Output directory: $pdfOutputDir" -ForegroundColor Cyan
