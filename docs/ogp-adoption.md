# OpenGuidePlatform adoption

## Status — 15 September 2026

Adoption preparation is in progress on `codex/ogp-adoption`, based on main
`7ce0683dd1548af108e391a31e34fe43c6f10d90`. Platform installation and deployment
are not complete. Existing workflows, native module dependency, instructions,
guide content and PDFs remain unchanged.

The remote bootstrap selected and verified `v0.5.4-Preview.2`, source
`1dca12a5a42f7a9a7fbc2cc2f5eb73a56cbb43c0`. Its GuideSite archive SHA256 is
`a57fb86cac28d2995e24a6cc9f6f32dd6d44c1b3e260155486199039ca1cdd2f`.

## Acceptance baseline

Follow platform E11 and the first-adoption contract. Keep the site's 15 guides,
edition structure, partial translations, supplied PDFs, custom homepage,
core/extension catalogues, categories, creators and markup overrides.

- Preserve canary, preview and production as distinct targets. Canary currently
  permits expired content. Adaptive Enterprise and Emergent Strategy and Depoyment
  are excluded from preview and production; Planguage is excluded from production.
  Preserve the existing spelling in public paths.
- Preserve production language enablement, including Klingon's exclusion. This
  does not authorise a new permanent all-target prohibition.
- Update native module identity, checksums, platform tooling and workflow version
  together. Do not leave a module-only adoption or edit installation hashes by hand.
- Preserve unrelated wiki, discussion, stale-issue and PDF language test workflows.
  Reconcile the main workflow, PR cleanup and agent guidance deliberately.
- Verify routes, catalogue exclusions, downloads, source/PDF hashes, language
  fallbacks and appearance. Production deployment requires separate approval.

## Existing-site diagnostic baseline

Hugo Extended 0.164.0 built the unchanged source with its existing
`github.com/nkdAgility/HugoGuides/module v0.8.3` dependency.

| Target | Exit | ERROR lines | Output files | HTML files | PDF files |
| --- | --- | --- | --- | --- | --- |
| canary | 0 | 0 | 499 | 210 | 31 |
| preview | 0 | 0 | 483 | 202 | 31 |
| production | 0 | 0 | 329 | 132 | 22 |

These are direct Hugo diagnostic builds, not OGP acceptance builds or browser
verification. Existing warnings include deprecated language configuration,
contributor-template `IsSet` type warnings, debug logging and missing translation
keys. They require comparison/disposition during adoption; a successful build
does not establish their correctness.

Local evidence is under `.processing/ogp-adoption/baseline/`: source hashes,
per-target build logs and output path/hash inventories. All captured Markdown
and PDF source hashes were unchanged after the builds. Evidence is ignored by
Git and must be retained or reproduced for the eventual adoption review.

Reproduce from the baseline revision using PowerShell. A short cache path avoids
the Windows Git `$GIT_DIR too big` failure encountered with a deep cache path:

```powershell
$baseline = Join-Path $PWD '.processing/ogp-adoption/baseline'
$env:HUGO_RESOURCEDIR = "$baseline/resources"
$baselineCache = Join-Path $env:TEMP 'ogp-scrum-cache'
foreach ($target in @('canary', 'preview', 'production')) {
    hugo --source site --config "hugo.yaml,hugo.$target.yaml" `
        --environment $target --destination "$baseline/$target/public" `
        --cacheDir $baselineCache
    if ($LASTEXITCODE -ne 0) { throw "$target baseline failed" }
}
```

## Installation findings

The verified installer with `-Install -WhatIf` stops on three managed-file
conflicts: `.github/workflows/main.yaml`, `AGENTS.md` (the existing lowercase
`agents.md` on Windows), and `.github/copilot-instructions.md`. No managed files
were installed.

The package's root entry point was also exercised with `-Product GuideSite
-Stage Prepare -Target preview`. It reports `PREPARE_INPUT_UNAVAILABLE` because
the canonical OGP module is not yet a dependency. This is an expected sequencing
failure, not evidence of a guide defect. The report is in
`.processing/ogp-adoption/preview/prepare/assessment.md`.

### OGP integration contract to resolve

The release generates and hashes `main.yaml`, the canonical agent instructions
and Copilot instructions as managed files. Update rejects edits to those files;
the installed guidance also forbids editing generated adapters by hand. Meanwhile,
first-adoption documentation tells maintainers to configure the shared workflow's
deployment inputs and secret mapping. This site's merge-group trigger and bespoke
guidance also need deliberate preservation.

Before replacing these files, establish an update-safe ownership contract:
site-owned workflow wiring and site-specific instructions must survive platform
updates, while shared implementation and dependency versions remain coordinated.
Do not bypass conflict detection, discard site guidance or alter recorded hashes
to simulate support. Canary itself is supported by the released delivery resolver;
the target distinction is an integration requirement, not a missing platform target.

## Remaining work

- [x] Fast-forward latest main and create the adoption branch.
- [x] Capture existing-site diagnostic builds and source/output hashes.
- [x] Preview the verified release installation and record conflicts.
- [ ] Resolve the OGP managed-file ownership contract.
- [ ] Install the coordinated release and migrate site integration/instructions.
- [ ] Configure delivery and cleanup, preserve triggers, and lock workflow dependencies.
- [ ] Run root-entry-point Prepare, Build and Validate for all three targets.
- [ ] Compare routes, catalogues, downloads, hashes and browser output; disposition
      existing link/avatar findings rather than silently accepting them.
- [ ] Independently review the exact implementation and verification evidence.
- [ ] Verify an adoption preview separately from any production approval.
