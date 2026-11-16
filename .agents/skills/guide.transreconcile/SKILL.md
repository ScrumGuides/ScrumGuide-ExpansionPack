---
name: guide.transreconcile
description: "Audit translation readiness or reconcile an existing guide translation against an explicitly selected source revision, preserving translated content and publication intent."
---

Read [Core usage](../USAGE.md). Follow the resolved package's `system/OpenGuidePlatform.PowerShell.Core/TranslationReadiness/README.md`. An audit remains read-only; an explicit repair or translation-update request authorizes scoped edits.

Start a site-language audit with Get-GuideSiteTranslationWork and the effective Prepare assessment. Separate configuration, wrapper/catalogue, site-owned localized data and empty scaffold work from guide body reconciliation. Adding a language uses guide.transcreate's site-scoped workflow; auditing one existing guide does not authorize expanding to other editions.

Use Get-GuideTranslationWork for each selected guide, edition and language. For source-change reconciliation, obtain the user's explicit comparison revision or an already agreed revision from task context and pass SourceRevision. If missing, ask for the comparison point while continuing the readiness audit. Do not infer the last translated source revision from file dates, Git history or a populated body. If the source moved, use its explicitly identified SourcePathAtRevision; do not silently select another guide. Missing command support is reported with the installed version and affected operation; never substitute an improvised direct edit.

Review the historical/current source diff alongside the existing target. Start the candidate from the target, preserving useful translated passages and incorporating only authorized changes. Use Test-GuideTranslation to check metadata/body constraints and inspect review findings. Heading differences and source-identical passages are not grounds for automatic deletion. The check does not establish semantic accuracy or full Markdown correctness.

Apply with Set-GuideTranslation using the captured source and target hashes and resolved comparison commit/path. Preserve all metadata except authorized title, description and summary translations. Never add lang, prefix aliases automatically, reorder languages by popularity, or enable production. Report the comparison used as evidence of this review, without claiming it was the translation's prior baseline.

For an authorized missing translation, use New-GuideTranslation and refresh Prepare before applying content. New-GuideTranslationScaffold remains available for scaffold-only repairs. Existing populated targets are preserved by creation operations.

Review wrapper/i18n and download findings. Use Set-GuideWrapperTranslation for scoped wrapper candidates. Preserve supplied PDFs and declared fallback/PDF-only intent. Rerun Prepare and both target builds after the complete change, inspect rendered output, and report completed changes, unresolved findings and remaining editorial review separately. The commands do not deploy or approve production publication.
