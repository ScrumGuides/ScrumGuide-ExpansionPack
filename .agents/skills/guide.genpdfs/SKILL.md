---
name: guide.genpdfs
description: "Plan, generate or replace a declared generated guide PDF from the site's committed PDF configuration, contributor data and installed tools."
---

Read [Core usage](../USAGE.md). Select guide, edition, language and the exact download path. Only downloads declared `handling: generated` in `<site>/pdf/<guide>/<edition>/pdf.yaml` are eligible; every other PDF is supplied or protected and is preserved.

The recipe is committed configuration, never per-run choices. Settings, templates and filters are layered: platform defaults, then `<site>/pdf/`, `<site>/pdf/<guide>/` and `<site>/pdf/<guide>/<edition>/`, with `.<lang>` variants (`pdf.fa.yaml`, `cover.ja.tex`) at any level. `pdf.yaml` keys merge; `cover.tex`, `licence.tex`, `back.tex`, `page-header.tex`, `page-footer.tex` and `style.tex` are Pandoc templates replaced by the most specific file; `filters/<name>.lua` replaces a same-named filter and may have a companion `filters/<name>.tex` preamble. Cover credits come from contributor data (see guide.contributions) and labels from the site i18n `pdf_*` ids. Fonts and direction never come from front matter; Japanese needs `CJKmainfont`.

Use `Get-GuidePdfPlan` to inspect source, destination, resolved recipe files, settings, cover metadata, arguments, fonts and fingerprints. Use `Test-GuidePdfFonts` to see every required font, whether it is installed and where to get it (record sources under `fontSources` in `pdf.yaml`), and `Get-GuidePdfToolchain` for diagnostics, then `New-GuidePdf` with the same selections. Change the look by editing the site's PDF configuration in a reviewed change, not by passing options. Do not silently substitute fonts or install packages. The command passes the filename/default language to Pandoc metadata and never needs lang in Hugo front matter.

For an authorized replacement, pass the reviewed existing PDF SHA-256 as ExpectedOutputSha256 to New-GuidePdf. A stale hash requires fresh review, not deleting the old file or blindly refreshing the hash. Failed generation preserves the previous PDF. Test-GuidePdfCache accepts the current plan, prior receipt and observed toolchain. Reuse requires an EnvironmentSha256 covering approved fonts, TeX packages and indirect resources; without that evidence it refuses reuse. Never invent this digest or use timestamps as proof of freshness. Cooperative locks do not prevent other editors ignoring them.

After generation, inspect the actual PDF and render representative pages, including the cover and RTL/CJK cases when applicable. A successful native command or PDF header is not visual approval. Record source/config/toolchain fingerprints and any font/tool warnings; keep published filenames unchanged.
