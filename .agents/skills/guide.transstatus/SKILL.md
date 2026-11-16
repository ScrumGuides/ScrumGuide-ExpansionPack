---
name: guide.transstatus
description: "Report declared guide translation states and missing resources without changing files."
---

Read [Core usage](../USAGE.md) and follow its shared Prepare readiness procedure. Report the resulting assessment; use Get-GuideInventory only for additional detail.

Report wrapper files separately from every guide, edition and language. Filter the returned inventory if the user selected a language or guide; do not hard-code the current sites' guide counts or names. Show declared intent, observed body state, downloads and findings. A populated body is not proof of translation quality. PDF-only and source-language fallback are legitimate declared states.

This skill is read-only. Do not repair aliases, reorder languages by speaker counts, enable publication or rewrite existing content. Separate effective i18n findings from runtime route/integration checks, which remain pending Build/Validate.

Follow Core usage for effective Prepare evidence. Get-GuideWrapperStatus is an additional diagnostic; local-only catalogue findings must not replace the shared assessment.
