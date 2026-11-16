---
name: guide.transreconcile
description: "Audit guide translations and optionally create missing scaffolds without replacing populated translations."
---

Read [Core usage](../USAGE.md) and follow its shared Prepare readiness procedure. Default to reporting. An explicit repair request authorizes the scoped repair operations.

For authorized missing guide scaffolds, use `New-GuideTranslationScaffold` with explicit guide, edition and language. It preserves existing files and requires production to be explicitly disabled for new scaffolds. A populated translation is not an accidental English copy merely because it has text. Do not delete its body.

Do not add lang front matter, prefix aliases automatically, reorder languages by global speaker counts, or enable production. Use Set-GuideWrapperTranslation for reviewed wrapper/i18n candidates following Core usage; existing files require the reviewed source hash. Report unresolved findings after Prepare rather than inferring readiness from file creation. Supplied PDFs and declared fallbacks remain valid.

Rerun inventory and the consumer build after authorized edits. Report what was created, what was preserved, and what remains unresolved.

Follow Core usage for effective Prepare evidence. Get-GuideWrapperStatus is an additional diagnostic; local-only catalogue findings must not replace the shared assessment.
