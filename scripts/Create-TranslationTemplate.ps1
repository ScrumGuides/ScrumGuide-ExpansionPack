#!/usr/bin/env pwsh
<#
.SYNOPSIS
Creates a new language translation template for the Hugo multilingual site.

.DESCRIPTION
This script helps set up a new language for the Scrum Guide Expansion Pack Hugo site by:
1. Adding the language configuration to hugo.yaml
2. Creating i18n translation files
3. Creating translated content files based on English defaults
4. Validating the setup

.PARAMETER LanguageCode
The ISO 639-1 language code (e.g., 'de', 'es', 'fr')

.PARAMETER LanguageName
The display name of the language (e.g., 'German', 'Spanish', 'French')

.PARAMETER Weight
The weight/order for the language menu (optional, defaults to next available)

.PARAMETER Title
The translated site title (optional, uses English title if not provided)

.PARAMETER Description
The translated site description (optional, uses English description if not provided)

.PARAMETER Keywords
The translated site keywords (optional, uses English keywords if not provided)

.PARAMETER Force
Overwrite existing files if they exist

.EXAMPLE
.\Create-TranslationTemplate.ps1 -LanguageCode "de" -LanguageName "German" -Title "Scrum Guide Erweiterungspaket"

.EXAMPLE
.\Create-TranslationTemplate.ps1 -LanguageCode "es" -LanguageName "Spanish" -Weight 3 -Force
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidatePattern('^[a-z]{2,3}(-[A-Z]{2})?$')]
    [string]$LanguageCode,
    
    [Parameter(Mandatory = $true)]
    [string]$LanguageName,
    
    [Parameter(Mandatory = $false)]
    [int]$Weight,
    
    [Parameter(Mandatory = $false)]
    [string]$Title,
    
    [Parameter(Mandatory = $false)]
    [string]$Description,
    
    [Parameter(Mandatory = $false)]
    [string]$Keywords,
    
    [Parameter(Mandatory = $false)]
    [switch]$Force
)

# Set error action preference
$ErrorActionPreference = "Stop"

# Get the script directory and project root
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Split-Path -Parent $scriptDir
$siteDir = Join-Path $projectRoot "site"

Write-Host "🌍 Creating translation template for language: $LanguageName ($LanguageCode)" -ForegroundColor Green

# Validate that we're in the right directory
if (-not (Test-Path (Join-Path $siteDir "hugo.yaml"))) {
    throw "Could not find hugo.yaml in $siteDir. Please run this script from the project root."
}

# Function to read YAML safely
function Get-YamlContent {
    param([string]$FilePath)
    
    if (-not (Test-Path $FilePath)) {
        throw "File not found: $FilePath"
    }
    
    return Get-Content -Path $FilePath -Raw
}

# Function to check if language exists in hugo.yaml
function Test-LanguageExists {
    param([string]$HugoYamlPath, [string]$LangCode)
    
    $content = Get-YamlContent -FilePath $HugoYamlPath
    return $content -match "(?m)^\s+$LangCode\s*:"
}

# Function to get next available weight
function Get-NextWeight {
    param([string]$HugoYamlPath)
    
    $content = Get-YamlContent -FilePath $HugoYamlPath
    $weights = @()
    
    # Extract existing weights
    $content -split "`n" | ForEach-Object {
        if ($_ -match '^\s+weight:\s*(\d+)') {
            $weights += [int]$matches[1]
        }
    }
    
    if ($weights.Count -eq 0) {
        return 1
    }
    
    return ($weights | Measure-Object -Maximum).Maximum + 1
}

# Function to add language to hugo.yaml
function Add-LanguageToHugo {
    param(
        [string]$HugoYamlPath,
        [string]$LangCode,
        [string]$LangName,
        [int]$LangWeight,
        [string]$LangTitle,
        [string]$LangDescription,
        [string]$LangKeywords
    )
    
    Write-Host "📝 Adding language configuration to hugo.yaml..." -ForegroundColor Yellow
    
    # Check if powershell-yaml module is available
    if (-not (Get-Module -ListAvailable -Name powershell-yaml)) {
        Write-Host "   Installing powershell-yaml module..." -ForegroundColor Yellow
        Install-Module -Name powershell-yaml -Force -Scope CurrentUser -AllowClobber -ErrorAction Stop
        Write-Host "   ✅ powershell-yaml module installed" -ForegroundColor Green
    }
    
    # Import the module
    Import-Module powershell-yaml -Force -ErrorAction Stop
    Write-Host "   ✅ powershell-yaml module loaded" -ForegroundColor Green
    
    # Read and parse the YAML file
    $yamlContent = Get-Content -Path $HugoYamlPath -Raw
    
    try {
        $config = ConvertFrom-Yaml $yamlContent -Ordered -ErrorAction Stop
    }
    catch {
        throw "Failed to parse hugo.yaml as valid YAML: $($_.Exception.Message). Please check the YAML syntax in $HugoYamlPath"
    }
    # Check if language already exists
    if ($config.languages -and $config.languages.Contains($LangCode)) {
        if (-not $Force) {
            Write-Warning "Language '$LangCode' already exists in hugo.yaml. Use -Force to overwrite."
            return
        }
        Write-Host "⚠️  Language exists, overwriting due to -Force flag..." -ForegroundColor Yellow
    }# Ensure languages section exists
    if (-not $config.languages) {
        $config.languages = [ordered]@{}
    }
    
    # Create the new language configuration
    $languageConfig = [ordered]@{
        languageName = $LangName
        weight       = $LangWeight
        title        = $LangTitle
        params       = [ordered]@{
            description = $LangDescription
            keywords    = $LangKeywords
        }
    }
    
    # Add or update the language
    $config.languages[$LangCode] = $languageConfig
    # Convert back to YAML and write to file
    try {
        $newYamlContent = ConvertTo-Yaml $config -Options EmitDefaults -ErrorAction Stop
        Set-Content -Path $HugoYamlPath -Value $newYamlContent -Encoding UTF8 -ErrorAction Stop
        Write-Host "✅ Language configuration added to hugo.yaml" -ForegroundColor Green
    }
    catch {
        throw "Failed to write updated YAML to $HugoYamlPath`: $($_.Exception.Message)"
    }
}

# Function to create i18n file
function New-I18nFile {
    param([string]$LangCode, [string]$LangName)
    
    Write-Host "📝 Creating i18n translation file..." -ForegroundColor Yellow
    
    $i18nDir = Join-Path $siteDir "i18n"
    $sourceFile = Join-Path $i18nDir "en.yaml"
    $targetFile = Join-Path $i18nDir "$LangCode.yaml"
    
    if (-not (Test-Path $sourceFile)) {
        throw "Source i18n file not found: $sourceFile"
    }
    
    if ((Test-Path $targetFile) -and -not $Force) {
        Write-Warning "i18n file already exists: $targetFile. Use -Force to overwrite."
        return
    }
    
    # Copy English file as template
    $content = Get-Content -Path $sourceFile -Raw
    $content = $content -replace '^# English translations', "# $LangName translations"
    
    Set-Content -Path $targetFile -Value $content -Encoding UTF8
    Write-Host "✅ Created i18n file: $targetFile" -ForegroundColor Green
    Write-Host "   📋 Remember to translate the content in this file!" -ForegroundColor Cyan
}

# Function to create translated content files
function New-TranslatedContent {
    param([string]$LangCode)
    
    Write-Host "📝 Creating translated content files..." -ForegroundColor Yellow
    
    $contentDir = Join-Path $siteDir "content"
    $createdFiles = @()
    
    # Find all English content files that need translation
    $englishFiles = Get-ChildItem -Path $contentDir -Recurse -Filter "*.md" | Where-Object {
        $_.Name -match '^(index|_index)\.md$'
    }
    foreach ($file in $englishFiles) {
        $relativePath = $file.FullName.Substring($contentDir.Length + 1)
        $directory = Split-Path $relativePath -Parent
        $fileName = Split-Path $relativePath -Leaf
        
        # Create translated filename
        $translatedFileName = $fileName -replace '\.md$', ".$LangCode.md"
        
        # Handle root directory files (where $directory is empty)
        if ([string]::IsNullOrEmpty($directory)) {
            $translatedPath = Join-Path $contentDir $translatedFileName
        }
        else {
            $translatedPath = Join-Path $contentDir (Join-Path $directory $translatedFileName)
        }
        
        if ((Test-Path $translatedPath) -and -not $Force) {
            Write-Host "   ⏭️  Skipping existing file: $translatedPath" -ForegroundColor DarkYellow
            continue
        }
        
        # Create directory if it doesn't exist
        $translatedDir = Split-Path $translatedPath -Parent
        if (-not (Test-Path $translatedDir)) {
            New-Item -ItemType Directory -Path $translatedDir -Force | Out-Null
        }
        
        # Copy content with basic metadata
        $content = Get-Content -Path $file.FullName -Raw
        Set-Content -Path $translatedPath -Value $content -Encoding UTF8
        
        $createdFiles += $translatedPath
        Write-Host "   ✅ Created: $translatedPath" -ForegroundColor Green
    }
    
    if ($createdFiles.Count -gt 0) {
        Write-Host "📋 Remember to translate the content in these files:" -ForegroundColor Cyan
        $createdFiles | ForEach-Object { Write-Host "   - $_" -ForegroundColor Cyan }
    }
}

# Function to validate the setup
function Test-LanguageSetup {
    param([string]$LangCode, [string]$LangName)
    
    Write-Host "🔍 Validating language setup..." -ForegroundColor Yellow
    
    $issues = @()
    
    # Check hugo.yaml
    $hugoYaml = Join-Path $siteDir "hugo.yaml"
    if (-not (Test-LanguageExists -HugoYamlPath $hugoYaml -LangCode $LangCode)) {
        $issues += "Language '$LangCode' not found in hugo.yaml"
    }
    
    # Check i18n file
    $i18nFile = Join-Path $siteDir "i18n" "$LangCode.yaml"
    if (-not (Test-Path $i18nFile)) {
        $issues += "i18n file not found: $i18nFile"
    }
    
    # Check for essential content files
    $essentialFiles = @(
        "content/_index.$LangCode.md",
        "content/creators/_index.$LangCode.md",
        "content/download/_index.$LangCode.md",
        "content/guide/index.$LangCode.md"
    )
    
    foreach ($file in $essentialFiles) {
        $fullPath = Join-Path $siteDir $file
        if (-not (Test-Path $fullPath)) {
            $issues += "Essential content file missing: $file"
        }
    }
    
    if ($issues.Count -eq 0) {
        Write-Host "✅ Language setup validation passed!" -ForegroundColor Green
        return $true
    }
    else {
        Write-Host "❌ Language setup validation failed:" -ForegroundColor Red
        $issues | ForEach-Object { Write-Host "   - $_" -ForegroundColor Red }
        return $false
    }
}

# Main execution
try {
    # Set defaults
    if (-not $Weight) {
        $Weight = Get-NextWeight -HugoYamlPath (Join-Path $siteDir "hugo.yaml")
    }
    
    if (-not $Title) {
        $Title = "Scrum Guide Expansion Pack"
    }
    
    if (-not $Description) {
        $Description = "ScrumExpansion.org hosts the Scrum Guide Expansion Pack—modern guidance for applying Scrum to complex work, AI, and adaptive strategy."
    }
    
    if (-not $Keywords) {
        $Keywords = "Scrum, ScrumExpansion.org, Scrum Guide Expansion Pack"
    }
    
    Write-Host "Configuration:" -ForegroundColor Cyan
    Write-Host "  Language Code: $LanguageCode" -ForegroundColor Cyan
    Write-Host "  Language Name: $LanguageName" -ForegroundColor Cyan
    Write-Host "  Weight: $Weight" -ForegroundColor Cyan
    Write-Host "  Title: $Title" -ForegroundColor Cyan
    Write-Host ""
    
    # Execute steps
    Add-LanguageToHugo -HugoYamlPath (Join-Path $siteDir "hugo.yaml") -LangCode $LanguageCode -LangName $LanguageName -LangWeight $Weight -LangTitle $Title -LangDescription $Description -LangKeywords $Keywords
    New-I18nFile -LangCode $LanguageCode -LangName $LanguageName
    New-TranslatedContent -LangCode $LanguageCode
    
    Write-Host ""
    $validationResult = Test-LanguageSetup -LangCode $LanguageCode -LangName $LanguageName
    
    Write-Host ""
    Write-Host "🎉 Translation template creation completed!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Next steps:" -ForegroundColor Yellow
    Write-Host "1. Translate the content in the i18n/$LanguageCode.yaml file" -ForegroundColor Yellow
    Write-Host "2. Translate the content in the created .$LanguageCode.md files" -ForegroundColor Yellow
    Write-Host "3. Test the site by running 'hugo server' from the site directory" -ForegroundColor Yellow
    Write-Host "4. Commit and push your changes" -ForegroundColor Yellow
    
    if (-not $validationResult) {
        Write-Host ""
        Write-Host "⚠️  Some validation issues were found. Please review and fix them." -ForegroundColor Yellow
        exit 1
    }
}
catch {
    Write-Error "❌ Error creating translation template: $($_.Exception.Message)"
    exit 1
}
