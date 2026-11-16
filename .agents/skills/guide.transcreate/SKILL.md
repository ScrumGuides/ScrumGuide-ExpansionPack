---
name: guide.transcreate
description: "Add a language across a guide site's configuration, interface and localized wrapper, then create empty eligible guide scaffolds; translate selected guide bodies only when separately requested."
---

Read [Core usage](../USAGE.md). Follow the resolved package's `system/OpenGuidePlatform.PowerShell.Core/TranslationReadiness/README.md` for the same complete procedure available without an agent.

Treat adding a language as a site-scoped workflow. Use Get-GuideSiteTranslationWork with WorkspaceRoot, Policy and Language to inspect the discovered site before selecting individual guide operations. Never reduce the request to one edition or assume English, a latest/ directory, fixed guide counts or another consumer's wrapper layout.

Follow this order: apply reviewed production configuration with the new language disabled; add its main language configuration; translate the i18n catalogue and site wrapper, including the homepage, guide roots, history and translations pages; handle site-owned localized data according to its actual schema; then create empty eligible guide scaffolds from the report. Preserve populated targets, protected paths, supplied PDFs and declared fallback/PDF-only intent. Report exclusions and unsupported operations explicitly. Missing tooling or an unsupported writer is a blocker for that operation, not permission to invent a direct-edit bypass.

Use Set-GuideWrapperTranslation for supported wrapper/catalogue/configuration candidates with reviewed hashes. Review site-specific data contracts and report any operation the installed commands cannot perform. Refresh Prepare and the site report after configuration and scaffolding changes. Show translated wrapper work, empty guide scaffolds, preserved targets and unresolved work separately. A completed site scaffold does not mean guide bodies have been translated.

For a separately requested body translation, select the actual guide, edition and language and use Get-GuideTranslationWork to inspect its source, target, downloads and remaining work. The per-edition command boundary does not narrow the site-scoped creation workflow above.

Use New-GuideTranslation for each eligible absent target selected by the site workflow or an explicit individual request. It delegates to the retained New-GuideTranslationScaffold, requires explicit production exclusion and preserves existing content. Leave the body empty during site creation. If a separate request authorizes body translation, refresh Prepare, start a candidate from the discovered target and translate against the source. A missing production exclusion requires the scoped configuration prerequisite; never enable production as a workaround.

The candidate may translate the body, title, description and summary. Preserve structural/custom metadata, aliases, fonts and edition relationships. Do not add lang or extend legacy shared download aliases. Use Test-GuideTranslation and review its findings, source/candidate outlines and the actual language. Preserve links, shortcodes, code examples and deliberate multilingual behavior. Source-identical passages are a review signal, not permission to delete content.

Apply authorized candidates through Set-GuideTranslation using the source and target hashes captured before editing. A stale input requires reconciliation, not a new hash applied to an old candidate. Existing populated translations should be revised only within the user's requested scope; use source comparisons where relevant.

Use Set-GuideWrapperTranslation for authorized wrapper/i18n/configuration work. Preserve supplied/protected PDFs; generated PDFs use the existing explicit plan, generation and receipt workflow. Rerun Prepare and full preview/production builds and inspect rendered output. Report changed files, editorial limitations, verification results and remaining work separately. A candidate check never certifies translation quality or approves publication.
