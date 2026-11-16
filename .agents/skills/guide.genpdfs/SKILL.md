---
name: guide.genpdfs
description: "Plan, generate or replace a declared generated guide PDF using declared filenames, explicit language metadata and installed tools."
---

Read [Core usage](../USAGE.md). Select guide, edition, language and the exact download path declared in policy. Only generated downloads are eligible; supplied/protected resources are preserved.

Use `Get-GuidePdfPlan` to inspect source, destination, arguments, fonts and fingerprints. Use `Get-GuidePdfToolchain` for diagnostics, then `New-GuidePdf` with the same selections. HeaderPaths, LuaFilterPaths and FontOverrides are explicit choices; preserve the consumer's approved PDF recipe. Do not silently substitute fonts or install packages. The command passes the filename/default language to Pandoc metadata and never needs lang in Hugo front matter.

For an authorized replacement, pass the reviewed existing PDF SHA-256 as ExpectedOutputSha256 to New-GuidePdf. A stale hash requires fresh review, not deleting the old file or blindly refreshing the hash. Failed generation preserves the previous PDF. Test-GuidePdfCache accepts the current plan, prior receipt and observed toolchain. Reuse requires an EnvironmentSha256 covering approved fonts, TeX packages and indirect resources; without that evidence it refuses reuse. Never invent this digest or use timestamps as proof of freshness. Cooperative locks do not prevent other editors ignoring them.

After generation, inspect the actual PDF and render representative pages, including RTL/CJK cases when applicable. A successful native command or PDF header is not visual approval. Record source/config/toolchain fingerprints and any font/tool warnings; keep published filenames unchanged.
