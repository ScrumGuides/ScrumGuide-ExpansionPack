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

# Check if Perl is available (required by many LaTeX packages)
try {
    $perlCheck = Get-Command perl -ErrorAction Stop 2>$null
    $perlVersion = & perl --version 2>$null | Select-String "This is perl" | Select-Object -First 1
    if ($LASTEXITCODE -ne 0) {
        throw "Perl command failed"
    }
    Write-Host "✅ Found Perl: $($perlVersion -replace '.*This is perl (.+?) built.*', '$1')" -ForegroundColor Green
}
catch {
    Write-Host "⚠️  Perl not found. This is required by many LaTeX packages for proper processing." -ForegroundColor Yellow
    Write-Host "   Please install Perl:" -ForegroundColor Yellow
    Write-Host "   • Windows: winget install StrawberryPerl.StrawberryPerl" -ForegroundColor Yellow
    Write-Host "   • Ubuntu/Debian: apt-get install perl" -ForegroundColor Yellow
    Write-Host "   • macOS: brew install perl (or use system perl)" -ForegroundColor Yellow
    Write-Host "   • Alternative Windows: Install ActivePerl or Strawberry Perl manually" -ForegroundColor Yellow
    throw "Perl is required for LaTeX package processing but not found"
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
                $creatorName = $frontmatter.title.ToString().Trim('"')
                $imagePath = ""
                
                # Look for image file - check frontmatter first, then search directory
                if ($frontmatter.image) {
                    $imageFileName = $frontmatter.image.ToString().Trim('"')
                    $imageFile = Join-Path $creatorDir.FullName $imageFileName
                    if (Test-Path $imageFile) {
                        $imagePath = $imageFile
                        Write-Host "   🖼️  Found image from frontmatter: $imageFileName" -ForegroundColor Gray
                    }
                }
                
                # If no image in frontmatter or file not found, search for common image extensions
                if (-not $imagePath) {
                    $imageExtensions = @("*.jpg", "*.jpeg", "*.png", "*.gif", "*.webp")
                    foreach ($ext in $imageExtensions) {
                        $foundImages = Get-ChildItem -Path $creatorDir.FullName -Name $ext
                        if ($foundImages.Count -gt 0) {
                            $imagePath = Join-Path $creatorDir.FullName $foundImages[0]
                            Write-Host "   🖼️  Found image by search: $($foundImages[0])" -ForegroundColor Gray
                            break
                        }
                    }
                }
                
                if (-not $imagePath) {
                    Write-Host "   ⚠️  No image found for creator: $creatorName" -ForegroundColor Yellow
                }
                
                $creatorObj = @{
                    Name      = $creatorName
                    ImagePath = $imagePath
                    Directory = $creatorDir.FullName
                }
                
                $creators += $creatorObj
                Write-Host "   📋 Found creator: $creatorName" -ForegroundColor Gray
            }
        }
    }
    
    return $creators
}

# Function to generate LaTeX creator variables for template
# Function to escape file paths for LaTeX
function ConvertTo-LaTeXPath {
    param([string]$FilePath)
    
    if (-not $FilePath) {
        return ""
    }
    
    # Convert Windows backslashes to forward slashes
    $path = $FilePath -replace '\\', '/'
    
    # Escape special LaTeX characters
    $path = $path -replace '_', '\_'
    $path = $path -replace '#', '\#'
    $path = $path -replace '\$', '\$'
    $path = $path -replace '%', '\%'
    $path = $path -replace '&', '\&'
    $path = $path -replace '\{', '\{'
    $path = $path -replace '\}', '\}'
    $path = $path -replace '\^', '\textasciicircum{}'
    $path = $path -replace '~', '\textasciitilde{}'
    
    # Handle spaces by wrapping the entire path in quotes if needed
    if ($path -match '\s') {
        $path = "{$path}"
    }
    
    return $path
}

function New-CreatorVariables {
    param(
        [array]$Creators,
        [string]$GuideDir
    )
    
    if (-not $Creators -or $Creators.Count -eq 0) {
        return @{}
    }
    
    Write-Host "   📋 Generating creator variables for $($Creators.Count) creator(s)" -ForegroundColor Gray
    
    $creatorNames = @()
    $variables = @{}
    
    # Process each creator individually for image support
    for ($i = 0; $i -lt $Creators.Count; $i++) {
        $creator = $Creators[$i]
        $creatorNames += $creator.Name
        Write-Host "   👤 Adding creator: $($creator.Name)" -ForegroundColor Gray
        
        # Add individual creator variables for LaTeX template
        $creatorNum = $i + 1
        $variables["creator${creatorNum}-name"] = $creator.Name
        
        # Add image path if available
        if ($creator.ImagePath -and (Test-Path $creator.ImagePath)) {
            # Convert Windows path to LaTeX-safe format
            $latexSafePath = ConvertTo-LaTeXPath -FilePath $creator.ImagePath
            $variables["creator${creatorNum}-image"] = $latexSafePath
            Write-Host "   🖼️  Adding image for $($creator.Name): $($creator.ImagePath) -> $latexSafePath" -ForegroundColor Gray
        }
        else {
            Write-Host "   ⚠️  No image found for $($creator.Name)" -ForegroundColor Yellow
        }
    }
    
    if ($creatorNames.Count -gt 0) {
        # Create a single string with all creators separated by spacing (fallback)
        $creatorString = $creatorNames -join " \hspace{2em} "
        $variables["creators-list"] = $creatorString
        $variables["creator-count"] = $creatorNames.Count
        
        Write-Host "   📋 Created LaTeX variables for $($creatorNames.Count) creator(s) with images" -ForegroundColor Gray
    }
    
    return $variables
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
    $fontPreferences = @{        # RTL languages (Arabic, Farsi, Hebrew, Urdu)
        # For mixed-script content, prioritize fonts that support Arabic script properly
        "rtl"   = @{
            "main" = @("Noto Sans Arabic", "Noto Naskh Arabic", "Amiri", "Arial Unicode MS", "Tahoma", "Noto Sans", "DejaVu Sans", "Liberation Sans")
            "sans" = @("Noto Sans Arabic", "Noto Naskh Arabic", "Amiri", "Arial Unicode MS", "Tahoma", "Noto Sans", "DejaVu Sans", "Liberation Sans") 
            "mono" = @("Noto Sans Mono", "DejaVu Sans Mono", "Liberation Mono", "Consolas", "Monaco")
        }
        # CJK languages
        "cjk"   = @{
            "main" = @("Noto Sans CJK SC", "Microsoft YaHei", "SimSun", "Arial Unicode MS", "Arial", "DejaVu Sans", "Liberation Sans")
            "sans" = @("Noto Sans CJK SC", "Microsoft YaHei", "SimSun", "Arial Unicode MS", "Arial", "DejaVu Sans", "Liberation Sans")
            "mono" = @("Noto Sans Mono CJK SC", "Courier New", "DejaVu Sans Mono", "Liberation Mono", "Consolas")
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
            # For RTL languages, use a simpler monospace font that's more likely to work
            if ($category -eq "rtl") {
                $rtlMonoFallbacks = @("monospace", "serif", "sans-serif")
                foreach ($font in $rtlMonoFallbacks) {
                    return $font
                }
                return "serif"  # Last resort for RTL
            }
            else {
                # Try a few more mono fonts before giving up
                $monoFallbacks = @("monospace", "Monaco", "Menlo")
                foreach ($font in $monoFallbacks) {
                    if (Test-FontAvailable -FontName $font) {
                        return $font
                    }
                }
                return "Courier" 
            }
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
        [array]$SiteCreators = @(),
        [string]$ScriptDir
    )
    Write-Host "📄 Generating PDF: $(Split-Path $OutputFile -Leaf)" -ForegroundColor Cyan
    
    # Generate creator variables for LaTeX template if we have creators with images
    $creatorVariables = @{}
    if ($SiteCreators -and $SiteCreators.Count -gt 0) {
        $guideDir = Split-Path $InputFile -Parent
        $creatorVariables = New-CreatorVariables -Creators $SiteCreators -GuideDir $guideDir
    }
    # Use original input file directly - no cover content in markdown
    $tempInputFile = $InputFile
    
    # Build pandoc command with metadata and proper font support
    $pandocArgs = @(
        $tempInputFile
        "-o", $OutputFile
        "--from", "markdown"
        "--to", "pdf"
        "--pdf-engine", "xelatex"
        "--pdf-engine-opt", "-halt-on-error"
        "--pdf-engine-opt", "-interaction=errorstopmode"
        "--standalone"
    )
    
    # Add simple template
    $simpleTemplatePath = Join-Path $PSScriptRoot "simple-template.tex"
    if (Test-Path $simpleTemplatePath) {
        $pandocArgs += "--template", $simpleTemplatePath
        Write-Host "   📋 Using simple LaTeX template: simple-template.tex" -ForegroundColor Gray
    }
    # Add cover page via before-body injection
    $coverPagePath = Join-Path $PSScriptRoot "cover-page.tex"
    if (Test-Path $coverPagePath) {
        $pandocArgs += "--include-before-body", $coverPagePath
        Write-Host "   📄 Adding cover page via before-body injection: cover-page.tex" -ForegroundColor Gray
    }# Configure fonts for proper multilingual support based on document language
    Write-Host "   🔍 Pandoc will read frontmatter automatically from markdown file" -ForegroundColor Gray
    
    # Only provide fallback font configuration for languages that might not have frontmatter
    # Pandoc will use frontmatter values if they exist, otherwise these fallbacks apply
    if ($LanguageCode -in @("fa", "ar", "he", "ur")) {
        Write-Host "   🌐 Setting RTL language fallbacks for: $LanguageCode" -ForegroundColor Gray
        
        # Fallback Arabic font families for polyglossia (only used if not in frontmatter)
        $arabicFont = Get-BestAvailableFont -LanguageCode "ar" -FontType "main"
        $pandocArgs += "--variable", "arabicfont=$arabicFont"
        $pandocArgs += "--variable", "arabicfontsf=$arabicFont"
        
        Write-Host "   🔤 RTL fallback fonts - Arabic: $arabicFont" -ForegroundColor Gray    
    }
    elseif ($LanguageCode -in @("zh", "ja", "ko", "zh-cn", "zh-tw", "zh-hk")) {
        # For CJK languages, provide fallback fonts
        Write-Host "   🌐 Setting CJK language fallbacks for: $LanguageCode" -ForegroundColor Gray
        
        # Fallback CJK fonts (only used if not specified in frontmatter)
        $cjkFont = Get-BestAvailableFont -LanguageCode "zh" -FontType "main"
        $pandocArgs += "--variable", "CJKmainfont=$cjkFont"
        
        # Add Latin fallback font
        $latinFont = Get-BestAvailableFont -LanguageCode "en" -FontType "main"
        $pandocArgs += "--variable", "romanfont=$latinFont"
        
        Write-Host "   🔤 CJK fallback fonts - CJK: $cjkFont, Latin: $latinFont" -ForegroundColor Gray
    }
    else {
        # For Latin-based languages, provide fallback fonts
        Write-Host "   🌐 Setting Latin language fallbacks for: $LanguageCode" -ForegroundColor Gray
        
        # Add Arabic fallback for mixed-script documents
        $arabicFont = Get-BestAvailableFont -LanguageCode "ar" -FontType "main"
        $pandocArgs += "--variable", "arabicfont=$arabicFont"
        
        Write-Host "   🔤 Latin fallback fonts - Arabic: $arabicFont" -ForegroundColor Gray
    }
    
    # Add title metadata for PDF properties only
    if ($Metadata.title) {
        $pandocArgs += "--metadata", "title=$($Metadata.title)"
    }
    
    # Add author metadata using site-wide creators for cover page
    if ($SiteCreators -and $SiteCreators.Count -gt 0) {
        # Extract creator names from creator objects
        $creatorNames = @()
        foreach ($creator in $SiteCreators) {
            if ($creator -is [hashtable] -and $creator.Name) {
                $creatorNames += $creator.Name
            }
            elseif ($creator -is [string]) {
                $creatorNames += $creator
            }
        }
        
        if ($creatorNames.Count -gt 0) {
            $creatorString = $creatorNames -join ", "
            $pandocArgs += "--metadata", "author=$creatorString"
            Write-Host "   👥 Adding site creators to cover page: $creatorString" -ForegroundColor Gray
        }
        
        # Add creator variables for LaTeX template
        foreach ($key in $creatorVariables.Keys) {
            $pandocArgs += "--variable", "$key=$($creatorVariables[$key])"
            Write-Host "   📋 Added LaTeX variable: $key" -ForegroundColor Gray
        }
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
    
    # Language and fonts are now handled by frontmatter automatically
    # Add current date
    $currentDate = Get-Date -Format "yyyy-MM-dd"
    $pandocArgs += "--metadata", "date=$currentDate"
    
    try {
        & pandoc @pandocArgs
        if ($LASTEXITCODE -eq 0) {
            Write-Host "   ✅ Successfully generated: $(Split-Path $OutputFile -Leaf)" -ForegroundColor Green
            $success = $true
        }
        else {
            Write-Error "   ❌ Pandoc failed with exit code: $LASTEXITCODE"
            $success = $false
        }
    }
    catch {
        $errorMsg = $PSItem.Exception.Message
        Write-Error "   ❌ Failed to run pandoc`: $errorMsg"
        $success = $false
    }
    finally {
        # No temporary file cleanup needed since we use original file directly
    }
    
    return $success
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
    # Display creator names
    $creatorNames = @()
    foreach ($creator in $siteCreators) {
        if ($creator -is [hashtable] -and $creator.Name) {
            $creatorNames += $creator.Name
        }
        elseif ($creator -is [string]) {
            $creatorNames += $creator
        }
    }
    Write-Host "✅ Found $($siteCreators.Count) site creator(s): $($creatorNames -join ', ')" -ForegroundColor Green
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
    
    # Display creator names
    $creatorNames = @()
    foreach ($creator in $siteCreators) {
        if ($creator -is [hashtable] -and $creator.Name) {
            $creatorNames += $creator.Name
        }
        elseif ($creator -is [string]) {
            $creatorNames += $creator
        }
    }
    Write-Host "   👥 Site Creators: $($creatorNames -join ', ')" -ForegroundColor Gray
    
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
    $success = New-PDF -InputFile $inputFile -OutputFile $outputFile -Metadata $frontmatter -LanguageCode $langCode -SiteCreators $siteCreators -ScriptDir $scriptDir
    
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