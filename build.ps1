#Requires -Version 7.4
[CmdletBinding(SupportsShouldProcess)]
param(
    [Parameter(Position=0)][ValidateSet('All','Prepare','Build','Validate','Serve','Deploy','Verify','Update','Dependencies')][string]$Stage='All',
    [ValidateSet('auto','local','canary','preview','production')][string]$Target='auto',
    [ValidateSet('Auto','Local','Preview','Production','Path')][string]$PlatformSource='Auto',
    [string]$PlatformPath,[string]$PlatformRelease,
    [ValidateSet('preview','production')][string]$Ring,
    [switch]$Deploy,[string]$DeploymentAdapter,
    [int]$PullRequestNumber,[string]$OutputPath,[string]$BaseUrl,[string]$DeploymentUrl,[string]$DeploymentEnvironment
)
$ErrorActionPreference='Stop'
$lock=Get-Content "$PSScriptRoot/.OpenGuidePlatform/installation.json" -Raw|ConvertFrom-Json
if($Stage -eq 'Update'){
    $platform=& "$PSScriptRoot/.OpenGuidePlatform/Resolve-OpenGuidePlatform.ps1" -WorkspaceRoot $PSScriptRoot -UseInstalled
    Import-Module "$platform/system/OpenGuidePlatform.PowerShell.GuideSiteAdoption/OpenGuidePlatform.PowerShell.GuideSiteAdoption.psm1" -Force
    Update-GuideSitePlatform -WorkspaceRoot $PSScriptRoot -PlatformSource $PlatformSource -PlatformPath $PlatformPath -PlatformRelease $PlatformRelease -Ring $Ring -WhatIf:$WhatIfPreference
    return
}
if($Stage -in @('Build','Validate','Deploy','Verify') -and $PlatformSource -eq 'Auto' -and -not $PlatformPath -and -not $PlatformRelease){
    if(-not $OutputPath -or $OutputPath -notmatch '^\.processing/[A-Za-z0-9/_-]+$'){throw 'Resuming a build requires -OutputPath pointing to its prepared evidence directory.'}
    $context=Get-Content "$PSScriptRoot/$OutputPath/platform-context.json" -Raw|ConvertFrom-Json
    if($context.platformRoot -notmatch '^\.processing/[A-Za-z0-9/_-]+$'){throw 'Prepared platform path is invalid. Rerun Prepare.'}
    $PlatformPath=Join-Path $PSScriptRoot $context.platformRoot
    $metadata=Get-Content "$PlatformPath/platform.json" -Raw|ConvertFrom-Json
    if($metadata.version -cne $context.version -or $metadata.sourceCommit -cne $context.sourceCommit){throw 'Prepared platform identity changed. Rerun Prepare.'}
}
$platform=& "$PSScriptRoot/.OpenGuidePlatform/Resolve-OpenGuidePlatform.ps1" -WorkspaceRoot $PSScriptRoot -PlatformSource $PlatformSource -PlatformPath $PlatformPath -PlatformRelease $PlatformRelease
Import-Module "$platform/system/OpenGuidePlatform.PowerShell.GuideSiteBuild/OpenGuidePlatform.PowerShell.GuideSiteBuild.psm1" -Force
$settings=& "$PSScriptRoot/.OpenGuidePlatform/Resolve-OpenGuidePlatform.ps1" -WorkspaceRoot $PSScriptRoot -ReadSettings
$source=if($settings){$settings.site.source}else{$lock.sourcePath}
$arguments=@{}+$PSBoundParameters
foreach($name in @('PlatformSource','PlatformPath','PlatformRelease','Ring')){$arguments.Remove($name)}
Invoke-GuideSiteBuild -WorkspaceRoot $PSScriptRoot -SourcePath $source @arguments
