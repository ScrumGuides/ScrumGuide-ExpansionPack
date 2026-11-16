# Using the shared publishing commands

This is a technical reference for installed agent skills and maintainers. People following the no-agent route should start with [manual setup](https://github.com/nkdAgility/OpenGuidePlatform/blob/f9b7c3037489388bbe2b9311c523b9147e7ecf5a/system/OpenGuidePlatform.Agents.Integration/contributor-guide/setup.md#i-do-not-have-an-agent-and-want-to-do-this-manually) and its task pages. The contributor module handles the loading/discovery code below internally; its installation notes state whether publication is available. Agents must still invoke the site's installed named skills for their tasks, not substitute a generic workflow.

Installation and Update distribute these skills and the matching Core module. Follow the "Correct an existing guide" workflow in the resolved package's `system/OpenGuidePlatform.PowerShell.Core/README.md` for module loading, discovery, exact selection, editing and verification. The same commands work without an agent. Do not import an arbitrary globally installed Core version or invent inventory from test fixtures.

In an adopted site, resolve `$platform` through `./.OpenGuidePlatform/Resolve-OpenGuidePlatform.ps1 -WorkspaceRoot $PWD -UseInstalled`, then import Core from that package. Run Prepare with a fresh output directory and `-PlatformSource Path -PlatformPath $platform` to use that same version. Load `<output>/discovered-site.json` with Import-GuidePolicy. Keep WorkspaceRoot set to the consumer repository root. Explicit policy inputs remain supported for callers that use them; ordinary contributors use discovery.

```powershell
$workspace = $PWD.Path
$platform = ./.OpenGuidePlatform/Resolve-OpenGuidePlatform.ps1 -WorkspaceRoot $workspace -UseInstalled
Import-Module "$platform/system/OpenGuidePlatform.PowerShell.Core/OpenGuidePlatform.PowerShell.Core.psd1" -Force
Get-Content "$platform/platform.json"
Get-Command Get-GuideSiteTranslationWork, Get-GuideTranslationWork, Set-GuideWrapperTranslation, Set-GuideTranslation
```

Read the instructions and Core README from that resolved package, and identify its version in the report. If the installed version lacks a required command, report the exact unsupported operation and use the coordinated Update procedure when authorized. Do not import a different version or improvise a direct-write substitute to get past a missing operation.

The discovered inventory describes an unrestricted collection of guides; counts in fixtures are examples. Core decisions have no agent dependency. Agent instructions do not grant write authority. Independent enforcement requires an externally configured AgentControls evaluator or managed client; installation alone does not enable it. Mutation commands support WhatIf and refuse protected resources under the supplied policy.

Use the shared Prepare report for readiness. Core supports reviewed wrapper Markdown, YAML catalogue and language-configuration edits; preserve the consumer's multilingual structure and bespoke wrapper. Prepare validates declared generated-PDF receipts; generation and receipt recording are explicit operations.

## Readiness shared with Prepare

For translation status, creation and reconciliation, run the installed consumer entry point and read its report. This uses exactly the same effective Hugo catalogues, fallback observations and Core decisions as CI:

```powershell
$readinessOutput = '.processing/translation-status/' + [guid]::NewGuid().ToString('N')
./build.ps1 -Stage Prepare -Target preview -OutputPath $readinessOutput -PlatformSource Path -PlatformPath $platform
```

Even when Prepare fails, inspect `$readinessOutput/prepare/assessment.json` and `assessment.md` if they exist. Report the outcome, wrapper findings and the selected guide/edition/language inventory. Missing reports or effective evidence are blocked/unknown, never a substitute local-only pass. Required runtime routes/integration points remain pending Build/Validate; text resolution is not translation quality or complete plural-form coverage.

Get-GuideInventory and Get-GuideWrapperStatus are useful detailed diagnostics. Get-GuideContent provides exact guide/edition/language selection for content corrections. A local catalogue-only observation must not replace the effective readiness result above. The platform development equivalent is `./build.ps1 -Product GuideSite -SourcePath examples/reference-guide-site -Stage Prepare -Target preview -OutputPath <fresh-output>`.

## Reviewed wrapper translation edits

`guide.transcreate` adds a language to the site, not just one guide edition. After Prepare, load `$policy = Import-GuidePolicy -Path "$readinessOutput/discovered-site.json"` and run `Get-GuideSiteTranslationWork -WorkspaceRoot $workspace -Policy $policy -Language 'your-language'`. Review configuration, catalogue, wrapper Markdown (including guide roots, history and translations pages), site-owned localized data and eligible guide scaffolds. This diagnostic does not mutate files or certify readiness. Follow the site-first procedure in the installed TranslationReadiness README: production exclusion first, localized site experience next, empty eligible guide bodies last. Body translation is a separately selected stage. Preserve declared PDF-only/fallback intent and populated targets; do not manufacture a fixed file list from a different site.


For guide translation creation and reconciliation, read `system/OpenGuidePlatform.PowerShell.Core/TranslationReadiness/README.md` in the resolved package. Get-GuideTranslationWork reports source/target content and optional explicit Git comparisons; New-GuideTranslation starts scaffolding; Test-GuideTranslation checks candidates; Set-GuideTranslation applies against reviewed source/target hashes. Both humans and skills use these commands. Refresh Prepare after scaffolding rather than editing discovered inventory. Source comparisons are review evidence, not inferred translator provenance.

Use Set-GuideWrapperTranslation for exact candidate text in a language-specific wrapper Markdown file, its i18n YAML catalogue, or a selected language entry in hugo.yaml/hugo.production.yaml. Supply WorkspaceRoot, Policy, Language, RelativePath and CandidateContent. Existing files require their reviewed ExpectedSha256; scaffolding never silently replaces a populated file. The command checks supplied protected-path policy and refuses guide edition bodies and resources.

For discovered localized JSON data, the same command requires `ExpectedSourceSha256` and explicit `JsonTextPaths` selecting reviewed RFC 6901 string leaves. Preserve machine values and all unselected content. Other unsupported site-owned resources must be reported explicitly, not silently omitted or edited through a bypass.

For a new language, first apply a reviewed production configuration candidate with that language disabled, then its main language configuration and wrapper/catalogue files. Configuration edits preserve all unrelated settings and other languages. Preserve the site's existing wrapper paths, metadata, rendering conventions and existing legacy aliases; do not create new shared download aliases. Translate the candidate text within the requested scope rather than inventing a universal wrapper layout.

Each file operation supports WhatIf and publishes through a staged write. Several files are not one transaction: inspect partial progress if an operation fails and rerun Prepare before claiming readiness. Resolved hashes prevent observed stale edits; cooperative locks are not independent enforcement. Run Build/Validate after the complete reviewed change.

## Short requests for people using an agent

- "Use guide.transstatus to show what remains for Kannada across this site. Report the installed version, Prepare evidence, wrapper work and guide bodies separately. Do not edit."
- "Use guide.transcreate to add Kannada to this site, disabled in production. Localize the site wrapper and create eligible empty guide scaffolds. Keep guide body translation for later; show blocked operations and review outputs."
- "Use guide.transcreate to translate the body of the guide and edition I select into Kannada, using the reviewed source and target hashes. Show the outline, candidate findings and build results."
- "Use guide.transreconcile to compare this selected translation with the source revision I provide. Report the differences before applying changes."

These requests route work to the same installed commands used by a person in PowerShell. They do not grant publication approval or provide independent permission enforcement.

For the team journey, review handoffs and context-rich skill requests, follow `system/OpenGuidePlatform.Agents.Integration/translation-playbook.md` in the resolved installed package. This usage file is also copied into consumer `.agents/skills`; the playbook remains in the package:

```powershell
Get-Content "$platform/system/OpenGuidePlatform.Agents.Integration/translation-playbook.md"
```

In the resolved installed package, open `system/OpenGuidePlatform.Agents.Integration/contributor-guide/README.md` for human-facing setup, task explanations and SVG diagrams. The same pages are browsable in OGP at the package source commit. Keep site-specific policy in the consumer repository.
