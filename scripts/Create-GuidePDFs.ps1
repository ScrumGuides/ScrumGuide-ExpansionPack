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

# Check if XeLaTeX is available (required for Unicode and font support)
try {
    $xelatexCheck = Get-Command xelatex -ErrorAction Stop 2>$null
    $xelatexVersion = & xelatex --version 2>$null
    if ($LASTEXITCODE -ne 0) {
        throw "XeLaTeX command failed"
    }
    Write-Host "✅ Found XeLaTeX: $($xelatexVersion | Select-Object -First 1)" -ForegroundColor Green
}
catch {
    Write-Host "⚠️  XeLaTeX not found. This is required for proper multilingual font support." -ForegroundColor Yellow
    Write-Host "   Please install a LaTeX distribution like TeX Live or MiKTeX:" -ForegroundColor Yellow
    Write-Host "   • Ubuntu/Debian: apt-get install texlive-xetex" -ForegroundColor Yellow
    Write-Host "   • Windows: Install MiKTeX or TeX Live" -ForegroundColor Yellow
    Write-Host "   • macOS: Install MacTeX" -ForegroundColor Yellow
    throw "XeLaTeX is required for PDF generation but not found"
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

# Function to test if a font is available on the system
function Test-FontAvailable {
    param([string]$FontName)
    
    try {
        # Use fc-list on Linux/macOS or system font enumeration on Windows
        if ($IsWindows -or $PSVersionTable.PSVersion.Major -lt 6) {
            # On Windows, try to enumerate fonts using .NET Framework
            try {
                Add-Type -AssemblyName System.Drawing
                $fonts = [System.Drawing.FontFamily]::Families
                $fontExists = $fonts | Where-Object { $_.Name -eq $FontName }
                return $null -ne $fontExists
            }
            catch {
                # Fallback: assume common fonts are available
                $commonFonts = @("Arial", "Times New Roman", "Calibri", "DejaVu Sans", "Liberation Sans")
                return $FontName -in $commonFonts
            }
        }
        else {
            # On Linux/macOS, use fc-list to check for font availability
            $fontCheck = & fc-list 2>$null | Select-String -Pattern "^[^:]*: $([regex]::Escape($FontName)):" -Quiet
            if (-not $fontCheck) {
                # Also try checking just the font name without style
                $fontCheck = & fc-list 2>$null | Select-String -Pattern $([regex]::Escape($FontName)) -Quiet
            }
            return $fontCheck
        }
    }
    catch {
        Write-Host "   ⚠️  Could not verify font availability for: $FontName" -ForegroundColor Yellow
        return $false
    }
}

# Function to get the best available font for a language
function Get-BestAvailableFont {
    param(
        [string]$LanguageCode,
        [string]$FontType = "main"  # "main", "sans", "mono"
    )
    
    # Define font preferences for different languages and types
    $fontPreferences = @{
        # RTL languages (Arabic, Farsi, Hebrew, Urdu)
        "rtl" = @{
            "main" = @("Noto Sans Arabic", "Arial Unicode MS", "Tahoma", "Arial", "DejaVu Sans", "Liberation Sans")
            "sans" = @("Noto Sans Arabic", "Arial Unicode MS", "Tahoma", "Arial", "DejaVu Sans", "Liberation Sans") 
            "mono" = @("Courier New", "DejaVu Sans Mono", "Liberation Mono", "Consolas")
        }
        # CJK languages
        "cjk" = @{
            "main" = @("Noto Sans CJK SC", "Microsoft YaHei", "SimSun", "Arial Unicode MS", "Arial", "DejaVu Sans", "Liberation Sans")
            "sans" = @("Noto Sans CJK SC", "Microsoft YaHei", "SimSun", "Arial Unicode MS", "Arial", "DejaVu Sans", "Liberation Sans")
            "mono" = @("Courier New", "DejaVu Sans Mono", "Liberation Mono", "Consolas")
        }
        # Latin-based languages
        "latin" = @{
            "main" = @("DejaVu Sans", "Arial", "Liberation Sans", "Calibri", "Tahoma")
            "sans" = @("DejaVu Sans", "Arial", "Liberation Sans", "Calibri", "Tahoma")
            "mono" = @("DejaVu Sans Mono", "Courier New", "Liberation Mono", "Consolas")
        }
    }
    
    # Determine language category
    $category = "latin"  # default
    if ($LanguageCode -in @("fa", "ar", "he", "ur")) {
        $category = "rtl"
    }
    elseif ($LanguageCode -in @("zh", "ja", "ko", "zh-cn", "zh-tw", "zh-hk")) {
        $category = "cjk"
    }
    
    # Try fonts in order of preference
    $candidates = $fontPreferences[$category][$FontType]
    foreach ($font in $candidates) {
        if (Test-FontAvailable -FontName $font) {
            Write-Host "   ✅ Found available font: $font" -ForegroundColor Green
            return $font
        }
        else {
            Write-Host "   ❌ Font not available: $font" -ForegroundColor Red
        }
    }
    
    # Ultimate fallback to guaranteed available fonts
    Write-Host "   ⚠️  No preferred fonts available, using ultimate fallback" -ForegroundColor Yellow
    switch ($FontType) {
        "mono" { 
            # Try a few more mono fonts before giving up
            $monoFallbacks = @("monospace", "Monaco", "Menlo")
            foreach ($font in $monoFallbacks) {
                if (Test-FontAvailable -FontName $font) {
                    return $font
                }
            }
            return "Courier" 
        }
        default { 
            # For main and sans fonts, try system defaults
            $sansFallbacks = @("sans-serif", "Arial", "Helvetica")
            foreach ($font in $sansFallbacks) {
                if (Test-FontAvailable -FontName $font) {
                    return $font
                }
            }
            return "serif"  # Last resort
        }
    }
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
    Write-Host "   🔍 Detecting available fonts for language: $LanguageCode" -ForegroundColor Gray
    
    # Get best available fonts for this language
    $mainFont = Get-BestAvailableFont -LanguageCode $LanguageCode -FontType "main"
    $sansFont = Get-BestAvailableFont -LanguageCode $LanguageCode -FontType "sans"
    $monoFont = Get-BestAvailableFont -LanguageCode $LanguageCode -FontType "mono"
    
    # Configure fonts based on language category
    if ($LanguageCode -in @("fa", "ar", "he", "ur")) {
        # For RTL languages, configure proper font hierarchy
        $pandocArgs += "--variable", "mainfont=$mainFont"
        $pandocArgs += "--variable", "sansfont=$sansFont"
        $pandocArgs += "--variable", "monofont=$monoFont"
        
        # Add Latin fallback font
        $latinFont = Get-BestAvailableFont -LanguageCode "en" -FontType "main"
        $pandocArgs += "--variable", "romanfont=$latinFont"
        
        Write-Host "   🔤 RTL language configuration - Main: $mainFont, Sans: $sansFont, Mono: $monoFont, Latin: $latinFont" -ForegroundColor Gray
    }
    elseif ($LanguageCode -in @("zh", "ja", "ko", "zh-cn", "zh-tw", "zh-hk")) {
        # For CJK languages, use CJK-specific configuration
        $pandocArgs += "--variable", "CJKmainfont=$mainFont"
        $pandocArgs += "--variable", "sansfont=$sansFont"
        $pandocArgs += "--variable", "monofont=$monoFont"
        
        # Add Latin fallback font
        $latinFont = Get-BestAvailableFont -LanguageCode "en" -FontType "main"
        $pandocArgs += "--variable", "romanfont=$latinFont"
        
        Write-Host "   🔤 CJK language configuration - CJKMain: $mainFont, Sans: $sansFont, Mono: $monoFont, Latin: $latinFont" -ForegroundColor Gray
    }
    else {
        # For Latin-based languages, use standard configuration
        $pandocArgs += "--variable", "mainfont=$mainFont"
        $pandocArgs += "--variable", "sansfont=$sansFont"
        $pandocArgs += "--variable", "monofont=$monoFont"
        
        # Add Arabic fallback for mixed-script documents
        $arabicFont = Get-BestAvailableFont -LanguageCode "ar" -FontType "main"
        $pandocArgs += "--variable", "arabicfont=$arabicFont"
        
        Write-Host "   🔤 Latin language configuration - Main: $mainFont, Sans: $sansFont, Mono: $monoFont, Arabic: $arabicFont" -ForegroundColor Gray
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