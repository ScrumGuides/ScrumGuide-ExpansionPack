#!/usr/bin/env pwsh
<#
.SYNOPSIS
Simple PDF generator for Scrum Guide Expansion Pack

.DESCRIPTION
Generates PDFs from markdown files using front matter and a simple cover page.

.PARAMETER Force
Overwrite existing PDF files

.PARAMETER Language
Generate PDF for specific language only

.EXAMPLE
.\Create-GuidePDFs.ps1
.\Create-GuidePDFs.ps1 -Force
.\Create-GuidePDFs.ps1 -Language fa
#>

param(
    [switch]$Force,
    [string]$Language
)

# Basic setup
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Split-Path -Parent $scriptDir
$guideDir = Join-Path $projectRoot "site/content/guide"
$pdfOutputDir = Join-Path $guideDir "pdf"

Write-Host "📚 Generating PDFs..." -ForegroundColor Green

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

# Find markdown files to process
if ($Language) {
    $files = @("index.$Language.md")
}
else {
    $files = Get-ChildItem -Path $guideDir -Name "index.*.md" | Where-Object { $_ -ne "index.en.md" }
}

if (-not $files) {
    Write-Host "No files found to process" -ForegroundColor Yellow
    exit 0
}

Write-Host "Found $($files.Count) file(s): $($files -join ', ')" -ForegroundColor Yellow

# Process each file
foreach ($file in $files) {
    $inputPath = Join-Path $guideDir $file
    
    # Extract language code
    if ($file -match 'index\.([^.]+)\.md') {
        $langCode = $matches[1]
    }
    else {
        Write-Host "Skipping $file - can't extract language code" -ForegroundColor Yellow
        continue
    }
    
    $outputPath = Join-Path $pdfOutputDir "scrum-guide-expansion-pack.$langCode.pdf"
    
    # Check if we need to regenerate
    if ((Test-Path $outputPath) -and -not $Force) {
        $sourceTime = (Get-Item $inputPath).LastWriteTime
        $pdfTime = (Get-Item $outputPath).LastWriteTime
        if ($sourceTime -le $pdfTime) {
            Write-Host "✅ $langCode - PDF up to date" -ForegroundColor Green
            continue
        }
    }
    
    Write-Host "📄 Generating PDF for $langCode..." -ForegroundColor Blue    # Get front matter
    $pdfEngine = "xelatex"
    
    # Build pandoc command - let front matter handle everything
    $pandocArgs = @(
        $inputPath
        "--pdf-engine=$pdfEngine"
        "-o", $outputPath
    )
    
    try {
        & pandoc @pandocArgs
        if ($LASTEXITCODE -eq 0) {
            Write-Host "✅ Generated: $langCode" -ForegroundColor Green
        }
        else {
            Write-Host "❌ Failed: $langCode (exit code $LASTEXITCODE)" -ForegroundColor Red
        }
    }
    catch {
        Write-Host "❌ Error generating $langCode`: $($_.Exception.Message)" -ForegroundColor Red
    }
}

Write-Host "� PDF generation complete!" -ForegroundColor Green