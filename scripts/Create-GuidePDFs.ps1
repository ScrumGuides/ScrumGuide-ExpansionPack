#!/usr/bin/env pwsh
<#
.SYNOPSIS
Generates PDF files for all non-English translations of the Scrum Guide Expansion Pack.

.DESCRIPTION
This script automatically detects all non-English guide translation files and generates 
corresponding PDF files using pandoc with proper font support for non-Latin scripts. 
Each PDF uses the document's built-in title and site-wide creator information for proper mixed-script rendering.
The script automatically regenerates PDFs when the source markdown files are updated.

Features:
- Comprehensive font support for RTL languages (Farsi, Arabic, Hebrew, Urdu)
- CJK language support (Chinese, Japanese, Korean) with xeCJK package
- Mixed-script rendering with proper font fallbacks
- Document-based title pages that handle multilingual content correctly
- Site-wide creator list integration for cover pages
- Automatic regeneration when source files are updated
- Unicode support with XeLaTeX engine
- Single language generation support

.PARAMETER Force
Overwrite existing PDF files if they exist

.PARAMETER Language
Generate PDF for a specific language code only (e.g., 'fa' for Farsi, 'tlh' for Klingon)

.EXAMPLE
.\Create-GuidePDFs.ps1

.EXAMPLE
.\Create-GuidePDFs.ps1 -Force

.EXAMPLE
.\Create-GuidePDFs.ps1 -Language fa

.EXAMPLE
.\Create-GuidePDFs.ps1 -Language tlh -Force
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

# Get the script directory and project root
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Split-Path -Parent $scriptDir
$siteDir = Join-Path $projectRoot "site"
$guideDir = Join-Path $siteDir "content/guide"
$pdfOutputDir = Join-Path $guideDir "pdf"

Write-Host "📚 Generating PDF files for Scrum Guide Expansion Pack translations" -ForegroundColor Green

# Validate that we're in the right directory
if (-not (Test-Path (Join-Path $siteDir "hugo.yaml"))) {
    throw "Could not find hugo.yaml in $siteDir. Please run this script from the project root."
}

# Check if pandoc is available
try {
    $pandocVersion = & pandoc --version 2>$null
    if ($LASTEXITCODE -ne 0) {
        throw "Pandoc is not available"
    }
    Write-Host "✅ Found pandoc: $($pandocVersion | Select-Object -First 1)" -ForegroundColor Green
}
catch {
    throw "Pandoc is required but not found. Please install pandoc: https://pandoc.org/installing.html"
}

# Check if powershell-yaml module is available, if not, use manual parsing
$useYamlModule = $false
try {
    Import-Module powershell-yaml -Force -ErrorAction Stop
    Write-Host "✅ powershell-yaml module loaded" -ForegroundColor Green
    $useYamlModule = $true
}
catch {
    Write-Host "⚠️  powershell-yaml module not available, using manual YAML parsing" -ForegroundColor Yellow
    $useYamlModule = $false
}

# Ensure PDF output directory exists
if (-not (Test-Path $pdfOutputDir)) {
    New-Item -ItemType Directory -Path $pdfOutputDir -Force | Out-Null
    Write-Host "📁 Created PDF output directory: $pdfOutputDir" -ForegroundColor Yellow
}

# Function to manually parse simple YAML frontmatter
function ConvertFrom-YamlManual {
    param([string]$YamlContent)
    
    $result = @{}
    $lines = $YamlContent -split "`n"
    $currentKey = $null
    $currentList = @()
    $inList = $false
    
    foreach ($line in $lines) {
        $line = $line.Trim()
        if ([string]::IsNullOrEmpty($line)) { continue }
        
        # Handle list items
        if ($line.StartsWith("- ")) {
            if ($inList -and $currentKey) {
                $currentList += $line.Substring(2).Trim()
            }
            continue
        }
        
        # Handle key-value pairs
        if ($line.Contains(":")) {
            # If we were building a list, save it
            if ($inList -and $currentKey -and $currentList.Count -gt 0) {
                $result[$currentKey] = $currentList
                $currentList = @()
            }
            
            $parts = $line -split ":", 2
            $key = $parts[0].Trim()
            $value = $parts[1].Trim()
            
            if ([string]::IsNullOrEmpty($value) -or $value -eq "|") {
                # This might be a list or multiline value
                $currentKey = $key
                $inList = $true
                $currentList = @()
            }
            else {
                # Simple key-value
                $result[$key] = $value
                $inList = $false
                $currentKey = $null
            }
        }
    }
    
    # Handle any remaining list
    if ($inList -and $currentKey -and $currentList.Count -gt 0) {
        $result[$currentKey] = $currentList
    }
    
    return $result
}

# Function to extract frontmatter from markdown file
function Get-Frontmatter {
    param([string]$FilePath)
    
    $content = Get-Content -Path $FilePath -Raw
    # Match frontmatter between --- markers using singleline mode
    $frontmatterPattern = '(?s)^---\s*\n(.*?)\n---'
    
    if ($content -match $frontmatterPattern) {
        $yamlContent = $matches[1]
        try {
            if ($useYamlModule) {
                return ConvertFrom-Yaml $yamlContent -Ordered
            }
            else {
                return ConvertFrom-YamlManual $yamlContent
            }
        }
        catch {
            $errorMsg = $PSItem.Exception.Message
            Write-Warning "Failed to parse YAML frontmatter in $FilePath`: $errorMsg"
            return $null
        }
    }
    else {
        Write-Warning "No frontmatter found in $FilePath"
        return $null
    }
}

# Function to get site-wide creator list from Hugo content structure
function Get-SiteCreators {
    param([string]$SiteDir)
    
    $creatorsDir = Join-Path $SiteDir "content/creators"
    $creators = @()
    
    if (-not (Test-Path $creatorsDir)) {
        Write-Warning "Creators directory not found: $creatorsDir"
        return $creators
    }
    
    # Get all creator directories (exclude _index files)
    $creatorDirs = Get-ChildItem -Path $creatorsDir -Directory
    
    foreach ($creatorDir in $creatorDirs) {
        $indexFile = Join-Path $creatorDir.FullName "index.md"
        
        if (Test-Path $indexFile) {
            $frontmatter = Get-Frontmatter -FilePath $indexFile
            if ($frontmatter -and $frontmatter.title) {
                $creators += $frontmatter.title.ToString().Trim('"')
                Write-Host "   📋 Found creator: $($frontmatter.title)" -ForegroundColor Gray
            }
        }
    }
    
    return $creators
}

# Function to generate PDF using pandoc
function New-PDF {
    param(
        [string]$InputFile,
        [string]$OutputFile,
        [hashtable]$Metadata,
        [string]$LanguageCode,
        [array]$SiteCreators = @()
    )
    
    Write-Host "📄 Generating PDF: $(Split-Path $OutputFile -Leaf)" -ForegroundColor Cyan
    
    # Build pandoc command with metadata and proper font support
    $pandocArgs = @(
        $InputFile
        "-o", $OutputFile
        "--from", "markdown"
        "--to", "pdf"
        "--pdf-engine", "xelatex"
        "--standalone"
    )
    
    # Configure fonts for proper multilingual support based on document language
    if ($LanguageCode -in @("fa", "ar", "he", "ur")) {
        # For RTL languages, use Arabic font as primary with Latin fallback
        $pandocArgs += "--variable", "mainfont=Noto Sans Arabic"
        $pandocArgs += "--variable", "romanfont=DejaVu Sans"
        $pandocArgs += "--variable", "sansfont=Noto Sans Arabic"
        $pandocArgs += "--variable", "monofont=DejaVu Sans Mono"
        Write-Host "   🔤 Using Noto Sans Arabic as main font with DejaVu Sans fallback for RTL language: $LanguageCode" -ForegroundColor Gray
    }
    elseif ($LanguageCode -in @("zh", "ja", "ko", "zh-cn", "zh-tw", "zh-hk")) {
        # For CJK languages, add xeCJK support and install packages if needed
        $pandocArgs += "--variable", "CJKmainfont=Noto Sans CJK SC"
        $pandocArgs += "--variable", "romanfont=DejaVu Sans"
        $pandocArgs += "--variable", "sansfont=Noto Sans CJK SC"
        $pandocArgs += "--variable", "monofont=DejaVu Sans Mono"
        Write-Host "   🔤 Using Noto Sans CJK SC as main font with DejaVu Sans fallback for CJK language: $LanguageCode" -ForegroundColor Gray
    }
    else {
        # For Latin-based languages, use DejaVu Sans as primary with Unicode fallbacks
        $pandocArgs += "--variable", "mainfont=DejaVu Sans"
        $pandocArgs += "--variable", "sansfont=DejaVu Sans"
        $pandocArgs += "--variable", "monofont=DejaVu Sans Mono"
        # Add fallback fonts for other scripts that might appear in the document
        $pandocArgs += "--variable", "arabicfont=Noto Sans Arabic"
        Write-Host "   🔤 Using DejaVu Sans as main font with Unicode fallbacks for language: $LanguageCode" -ForegroundColor Gray
    }
    
    # Add title metadata for PDF properties only
    if ($Metadata.title) {
        $pandocArgs += "--metadata", "title=$($Metadata.title)"
    }
    
    # Add author metadata using site-wide creators for cover page
    if ($SiteCreators -and $SiteCreators.Count -gt 0) {
        $creatorString = $SiteCreators -join ", "
        $pandocArgs += "--metadata", "author=$creatorString"
        Write-Host "   👥 Adding site creators to cover page: $creatorString" -ForegroundColor Gray
    }
    
    # Add description if available
    if ($Metadata.description) {
        $pandocArgs += "--metadata", "description=$($Metadata.description)"
    }
    
    # Add additional metadata for better PDF properties
    if ($Metadata.keywords) {
        $keywordList = $Metadata.keywords
        if ($keywordList -is [array]) {
            $keywordString = $keywordList -join ", "
        }
        else {
            $keywordString = $keywordList.ToString()
        }
        $pandocArgs += "--metadata", "keywords=$keywordString"
    }
    
    # Add language and direction metadata
    if ($LanguageCode) {
        $pandocArgs += "--metadata", "lang=$LanguageCode"
        
        # Set RTL direction for RTL languages
        if ($LanguageCode -in @("fa", "ar", "he", "ur")) {
            $pandocArgs += "--metadata", "dir=rtl"
            Write-Host "   ➡️ Setting RTL direction for language: $LanguageCode" -ForegroundColor Gray
        }
    }
    
    # Add current date
    $currentDate = Get-Date -Format "yyyy-MM-dd"
    $pandocArgs += "--metadata", "date=$currentDate"
    
    try {
        & pandoc @pandocArgs
        if ($LASTEXITCODE -eq 0) {
            Write-Host "   ✅ Successfully generated: $(Split-Path $OutputFile -Leaf)" -ForegroundColor Green
            return $true
        }
        else {
            Write-Error "   ❌ Pandoc failed with exit code: $LASTEXITCODE"
            return $false
        }
    }
    catch {
        $errorMsg = $PSItem.Exception.Message
        Write-Error "   ❌ Failed to run pandoc`: $errorMsg"
        return $false
    }
}

# Find all guide translation files (exclude English index.md)
if ($Language) {
    # Process specific language only
    $targetFile = "index.$Language.md"
    if (Test-Path (Join-Path $guideDir $targetFile)) {
        $guideFiles = @($targetFile)
        Write-Host "🎯 Processing specific language: $Language" -ForegroundColor Cyan
    }
    else {
        Write-Error "❌ Language file not found: $targetFile in $guideDir"
        exit 1
    }
}
else {
    # Process all non-English guide files
    $allGuideFiles = Get-ChildItem -Path $guideDir -Name "index.*.md"
    # Explicitly exclude English (index.en.md)
    $guideFiles = $allGuideFiles | Where-Object { $_ -ne "index.en.md" }
}

if ($guideFiles.Count -eq 0) {
    if ($Language) {
        Write-Warning "⚠️  No guide file found for language: $Language"
    }
    else {
        Write-Warning "⚠️  No non-English guide files found in $guideDir"
        Write-Host "   Looking for files matching pattern: index.*.md (excluding index.en.md)" -ForegroundColor Yellow
    }
    exit 0
}

# Get site-wide creators list
Write-Host "👥 Extracting site-wide creator list..." -ForegroundColor Yellow
$siteCreators = Get-SiteCreators -SiteDir $siteDir

if ($siteCreators.Count -eq 0) {
    Write-Warning "⚠️  No site creators found. Cover page will not include creator information."
}
else {
    Write-Host "✅ Found $($siteCreators.Count) site creator(s): $($siteCreators -join ', ')" -ForegroundColor Green
}

Write-Host "🔍 Found $($guideFiles.Count) guide file(s) to process:" -ForegroundColor Yellow
foreach ($file in $guideFiles) {
    Write-Host "   • $file" -ForegroundColor Gray
}

$successCount = 0
$errorCount = 0

# Process each non-English guide file
foreach ($fileName in $guideFiles) {
    $inputFile = Join-Path $guideDir $fileName
    
    # Extract language code from filename (e.g., index.fa.md -> fa)
    if ($fileName -match '^index\.([^.]+)\.md$') {
        $langCode = $matches[1]
    }
    else {
        Write-Warning "⚠️  Could not extract language code from filename: $fileName"
        $errorCount++
        continue
    }
    
    # Skip English explicitly (though it should not match the pattern)
    if ($langCode -eq "en") {
        Write-Host "⏭️  Skipping English file: $fileName" -ForegroundColor Yellow
        continue
    }
    
    Write-Host "`n🌐 Processing language: $langCode ($fileName)" -ForegroundColor Blue
    
    # Extract frontmatter
    $frontmatter = Get-Frontmatter -FilePath $inputFile
    if (-not $frontmatter) {
        Write-Error "   ❌ Could not extract frontmatter from $fileName"
        $errorCount++
        continue
    }
    
    # Validate required fields
    if (-not $frontmatter.title) {
        Write-Error "   ❌ Missing 'title' field in frontmatter of $fileName"
        $errorCount++
        continue
    }
    
    Write-Host "   📋 Title: $($frontmatter.title)" -ForegroundColor Gray
    Write-Host "   👥 Site Creators: $($siteCreators -join ', ')" -ForegroundColor Gray
    
    # Define output file path
    $outputFileName = "scrum-guide-expansion-pack.$langCode.pdf"
    $outputFile = Join-Path $pdfOutputDir $outputFileName
    
    # Check if we need to generate/regenerate the PDF
    $shouldGenerate = $true
    if (Test-Path $outputFile) {
        if ($Force) {
            Write-Host "   🔄 Force flag specified, regenerating PDF" -ForegroundColor Yellow
        }
        else {
            # Compare modification times
            $sourceModified = (Get-Item $inputFile).LastWriteTime
            $pdfModified = (Get-Item $outputFile).LastWriteTime
            
            if ($sourceModified -le $pdfModified) {
                Write-Host "   ⏭️  PDF is up to date (source: $($sourceModified.ToString('yyyy-MM-dd HH:mm')), PDF: $($pdfModified.ToString('yyyy-MM-dd HH:mm')))" -ForegroundColor Yellow
                $shouldGenerate = $false
            }
            else {
                Write-Host "   🔄 Source file newer than PDF, regenerating (source: $($sourceModified.ToString('yyyy-MM-dd HH:mm')), PDF: $($pdfModified.ToString('yyyy-MM-dd HH:mm')))" -ForegroundColor Yellow
            }
        }
    }
    else {
        Write-Host "   📝 PDF does not exist, generating new PDF" -ForegroundColor Yellow
    }
    
    if (-not $shouldGenerate) {
        continue
    }
    
    # Generate PDF
    $success = New-PDF -InputFile $inputFile -OutputFile $outputFile -Metadata $frontmatter -LanguageCode $langCode -SiteCreators $siteCreators
    
    if ($success) {
        $successCount++
    }
    else {
        $errorCount++
    }
}

# Summary
Write-Host "`n📊 PDF Generation Summary:" -ForegroundColor Green
Write-Host "   ✅ Successfully generated: $successCount PDF(s)" -ForegroundColor Green
if ($errorCount -gt 0) {
    Write-Host "   ❌ Failed: $errorCount file(s)" -ForegroundColor Red
}
Write-Host "   📁 Output directory: $pdfOutputDir" -ForegroundColor Gray

# List generated files
$pdfFiles = Get-ChildItem -Path $pdfOutputDir -Name "*.pdf" | Sort-Object
if ($pdfFiles.Count -gt 0) {
    Write-Host "`n📄 Generated PDF files:" -ForegroundColor Yellow
    foreach ($pdf in $pdfFiles) {
        $pdfPath = Join-Path $pdfOutputDir $pdf
        $fileSize = [math]::Round((Get-Item $pdfPath).Length / 1KB, 1)
        Write-Host "   • $pdf ($fileSize KB)" -ForegroundColor Gray
    }
}

if ($errorCount -gt 0) {
    exit 1
}
else {
    Write-Host "`n🎉 All PDFs generated successfully!" -ForegroundColor Green
    exit 0
}