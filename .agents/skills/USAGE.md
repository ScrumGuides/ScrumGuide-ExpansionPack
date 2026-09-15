# Using the shared publishing commands

Preview installation distributes these skills through bootstrap.ps1. In the consumer root, run $platform = ./Resolve-OpenGuidePlatform.ps1 -WorkspaceRoot $PWD and import "$platform/system/OpenGuidePlatform.PowerShell.Core/OpenGuidePlatform.PowerShell.Core.psd1". Stable adoption and independent agent controls remain unfinished in E07/E08. Do not import an arbitrary globally installed Core version or invent policy from test fixtures.

In the platform development checkout, load `system/OpenGuidePlatform.PowerShell.Core/OpenGuidePlatform.PowerShell.Core.psd1`. In an adopted site, load Core through its version-locked bootstrap. Set WorkspaceRoot to the consumer repository root and load its reviewed site policy with `Import-GuidePolicy -Path $PolicyPath`.

Site policy describes an unrestricted collection of guides; counts in fixtures are examples. Core decisions have no agent dependency. Agent instructions do not grant write authority or replace the independent E06 gate. Mutation commands support WhatIf and refuse protected resources under the supplied policy.

Use the shared Prepare report for readiness. Core supports reviewed wrapper Markdown, YAML catalogue and language-configuration edits; preserve the consumer's multilingual structure and bespoke wrapper. Build wiring for PDF environment receipts belongs to E04.

## Readiness shared with Prepare

For translation status, creation and reconciliation, run the installed consumer entry point and read its report. This uses exactly the same effective Hugo catalogues, fallback observations and Core decisions as CI:

```powershell
$readinessOutput = '.processing/translation-status/' + [guid]::NewGuid().ToString('N')
./build.ps1 -Stage Prepare -Target preview -OutputPath $readinessOutput
```

Even when Prepare fails, inspect `$readinessOutput/prepare/assessment.json` and `assessment.md` if they exist. Report the outcome, wrapper findings and the selected guide/edition/language inventory. Missing reports or effective evidence are blocked/unknown, never a substitute local-only pass. Required runtime routes/integration points remain pending Build/Validate; text resolution is not translation quality or complete plural-form coverage.

Get-GuideInventory and Get-GuideWrapperStatus are useful detailed diagnostics. A local catalogue-only observation must not replace the effective readiness result above. The platform development equivalent is `./build.ps1 -Product GuideSite -PolicyPath <reviewed-policy> -Stage Prepare -Target preview -OutputPath <fresh-output>`.

## Reviewed wrapper translation edits

Use Set-GuideWrapperTranslation for exact candidate text in a language-specific wrapper Markdown file, its i18n YAML catalogue, or a selected language entry in hugo.yaml/hugo.production.yaml. Supply WorkspaceRoot, Policy, Language, RelativePath and CandidateContent. Existing files require their reviewed ExpectedSha256; scaffolding never silently replaces a populated file. The command checks supplied protected-path policy and refuses guide content.

For a new language, first apply a reviewed production configuration candidate with that language disabled, then its main language configuration and wrapper/catalogue files. Configuration edits preserve all unrelated settings and other languages. Preserve the site's existing wrapper paths, metadata, rendering conventions and existing legacy aliases; do not create new shared download aliases. Translate the candidate text within the requested scope rather than inventing a universal wrapper layout.

Each file operation supports WhatIf and publishes through a staged write. Several files are not one transaction: inspect partial progress if an operation fails and rerun Prepare before claiming readiness. Resolved hashes prevent observed stale edits; cooperative locks are not independent enforcement. Run Build/Validate after the complete reviewed change.