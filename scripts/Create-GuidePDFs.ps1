#!/usr/bin/env pwsh
<#
.SYNOPSIS
Simple PDF generator for Scrum Guide Expansion Pack

.DESCRIPTION
Generates PDFs from markdown files using front matter and a simple cover page.
Supports the new versioned guide structure (e.g., guide-name/2025.9/index.md).

.PARAMETER Force
Overwrite existing PDF files

.PARAMETER Language
Generate PDF for specific language only

.PARAMETER GuideName
Generate PDF for specific guide only (e.g., 'scrum-guide-expanded', 'complexity')

.EXAMPLE
.\Create-GuidePDFs.ps1
.\Create-GuidePDFs.ps1 -Force
.\Create-GuidePDFs.ps1 -Language fa
.\Create-GuidePDFs.ps1 -GuideName "scrum-guide-expanded"
#>

param(
    [switch]$Force,
    [string]$Language,
    [string]$GuideName
)

# Basic setup
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Split-Path -Parent $scriptDir
$contentDir = Join-Path $projectRoot "site/content"

Write-Host "📚 Generating PDFs for all guides..." -ForegroundColor Green

# Check dependencies
try {
    & pandoc --version | Out-Null
    Write-Host "✅ Pandoc found" -ForegroundColor Green
}
catch {
    throw "Pandoc required but not found"
}

# Ensure output directory exists
if (-not (Test-Path $pdfOutputDir)) {
    New-Item -ItemType Directory -Path $pdfOutputDir -Force | Out-Null
}

# Simple front matter parser
function Get-FrontMatter {
    param([string]$FilePath)
    
    $content = Get-Content -Path $FilePath -Raw
    if ($content -match '(?s)^---\s*\n(.*?)\n---') {
        $yaml = $matches[1]
        $result = @{}
        
        foreach ($line in ($yaml -split "`n")) {
            if ($line -match '^([^:]+):\s*(.*)$') {
                $key = $matches[1].Trim()
                $value = $matches[2].Trim().Trim('"').Trim("'")
                $result[$key] = $value
            }
        }
        return $result
    }
    return @{}
}

# Function to find all guide directories with versioned content
function Get-GuideDirectories {
    $guides = Get-ChildItem -Path $contentDir -Directory | Where-Object {
        # Look for directories that contain version folders (e.g., 2025.9, 2026.1)
        $versionFolders = Get-ChildItem -Path $_.FullName -Directory | Where-Object { $_.Name -match '^202\d\.\d+$' }
        return $versionFolders.Count -gt 0
    }
    return $guides
}

# Function to get the latest version folder for a guide
function Get-LatestVersion {
    param([string]$GuidePath)
    
    $versionFolders = Get-ChildItem -Path $GuidePath -Directory | Where-Object { $_.Name -match '^(202\d)\.(\d+)$' } | Sort-Object Name -Descending
    
    if ($versionFolders.Count -gt 0) {
        return $versionFolders[0]
    }
    return $null
}

# Find all guides to process
$guidesToProcess = @()

if ($GuideName) {
    # Process specific guide
    $guidePath = Join-Path $contentDir $GuideName
    if (Test-Path $guidePath) {
        $guidesToProcess += Get-Item $guidePath
    }
    else {
        Write-Host "❌ Guide not found: $GuideName" -ForegroundColor Red
        exit 1
    }
}
else {
    # Process all guides
    $guidesToProcess = Get-GuideDirectories
}

if ($guidesToProcess.Count -eq 0) {
    Write-Host "No guides found to process" -ForegroundColor Yellow
    exit 0
}

Write-Host "Found $($guidesToProcess.Count) guide(s): $($guidesToProcess.Name -join ', ')" -ForegroundColor Yellow

# Process each guide
foreach ($guide in $guidesToProcess) {
    Write-Host ""
    Write-Host "📖 Processing guide: $($guide.Name)" -ForegroundColor Cyan
    
    # Get the latest version folder
    $latestVersion = Get-LatestVersion -GuidePath $guide.FullName
    
    if (-not $latestVersion) {
        Write-Host "   ⚠️  No version folders found in $($guide.Name)" -ForegroundColor Yellow
        continue
    }
    
    Write-Host "   📅 Using version: $($latestVersion.Name)" -ForegroundColor Gray
    # Create PDF output directory for this guide
    $pdfOutputDir = Join-Path $guide.FullName "pdf"
    if (-not (Test-Path $pdfOutputDir)) {
        New-Item -ItemType Directory -Path $pdfOutputDir -Force | Out-Null
    }
    # Find all markdown files in the version folder
    $markdownFiles = Get-ChildItem -Path $latestVersion.FullName -Filter "*.md" | Where-Object {
        $_.Name -match '^index\.(\w{2,3})\.md$'
    }
    
    # If Language parameter is specified, filter to that language
    if ($Language) {
        $markdownFiles = $markdownFiles | Where-Object { $_.Name -match "^index\.$Language\.md$" }
    }
    
    if ($markdownFiles.Count -eq 0) {
        Write-Host "   ⚠️  No markdown files found" -ForegroundColor Yellow
        continue
    }
    
    Write-Host "   Found $($markdownFiles.Count) language version(s)" -ForegroundColor Gray
    
    # Process each language file
    foreach ($file in $markdownFiles) {
        # Extract language code
        if ($file.Name -match '^index\.([^.]+)\.md$') {
            $langCode = $matches[1]
        }
        else {
            continue
        }
        
        # Create PDF filename: guide-name.version.lang.pdf
        $pdfFileName = "$($guide.Name).$($latestVersion.Name).$langCode.pdf"
        $outputPath = Join-Path $pdfOutputDir $pdfFileName
        
        # Check if we need to regenerate
        if ((Test-Path $outputPath) -and -not $Force) {
            $sourceTime = $file.LastWriteTime
            $pdfTime = (Get-Item $outputPath).LastWriteTime
            if ($sourceTime -le $pdfTime) {
                Write-Host "   ✅ $langCode - PDF up to date" -ForegroundColor Green
                continue
            }
        }
        
        Write-Host "   📄 Generating PDF for $langCode..." -ForegroundColor Blue
        
        # Build pandoc command - let front matter handle everything
        $pdfEngine = "xelatex"
        $pandocArgs = @(
            $file.FullName
            "--pdf-engine=$pdfEngine"
            "-o", $outputPath
        )
        
        try {
            & pandoc @pandocArgs 2>&1 | Out-Null
            if ($LASTEXITCODE -eq 0) {
                Write-Host "   ✅ Generated: $pdfFileName" -ForegroundColor Green
            }
            else {
                Write-Host "   ❌ Failed: $langCode (exit code $LASTEXITCODE)" -ForegroundColor Red
            }
        }
        catch {
            Write-Host "   ❌ Error generating $langCode`: $($_.Exception.Message)" -ForegroundColor Red
        }
    }
}

Write-Host ""
Write-Host "🎉 PDF generation complete!" -ForegroundColor Green