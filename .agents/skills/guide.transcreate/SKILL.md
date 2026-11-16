---
name: guide.transcreate
description: "Scaffold an empty guide translation while preserving existing content and production exclusion."
---

Read [Core usage](../USAGE.md). Select the consumer's declared guide and edition and the requested language; do not assume English or a latest/ directory.

Run `New-GuideTranslationScaffold -WorkspaceRoot $WorkspaceRoot -Policy $policy -GuideId $GuideId -EditionId $EditionId -Language $Language` for the explicitly selected editions. Existing files are preserved. The operation requires an explicit disabled production language entry before it creates anything. If that prerequisite is missing, report the exact configuration change needed; never enable production as a workaround.

New files contain source front matter and an empty body. Translate metadata only within the user's requested scope; never copy/translate the guide body as scaffolding. Do not add lang front matter or language-prefix existing aliases. The historical /download/, /downloads/ and /translationsdirectory/ aliases remain only where already implemented; do not copy them into new language scaffolds or require them for new languages. Preserve existing legacy declarations and unrelated guide-specific aliases. Keep structural metadata, fonts, slugs and edition relationships intact. Create and reconcile bespoke-wrapper/catalogue/configuration candidates with Set-GuideWrapperTranslation following [Core usage](../USAGE.md). Keep production disabled and use the existing wrapper conventions; guide scaffolding alone is not a complete wrapper translation.

Run the shared Prepare readiness procedure in Core usage, then Build/Validate after the complete change. Report remaining findings from the same assessment as CI.
