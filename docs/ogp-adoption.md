# OpenGuidePlatform adoption

## Current v1 adoption — 15 September 2026

The supported updater installed `v1.0.0`. Settings select floating stable `v1`, and the shared build caller uses `@v1`. Version-tag, PR, main, merge-group and manual triggers remain present. Existing destination settings migrated into `.OpenGuidePlatform/settings.yaml`; `deploy: false` remains explicit.

All 171 baseline Markdown/PDF source hashes match. Workflow YAML assertions and all seven tool-supported Actions lock checks pass. Root acceptance builds were attempted: canary fails on a relative-base-URL platform exception; with an absolute BaseUrl it reaches validation. Preview and production reach validation but fail required translated scaffolding/latest-alias checks against existing source. No translations, guide aliases or supplied PDFs were changed to bypass these checks. These builds do not establish deployment readiness.

The maintainer explicitly requested the v1 change through a PR and merge after these blockers were disclosed. The unresolved platform compatibility and site-validation findings remain follow-up work. The v1 copy-link issue identified in other consumers is also under platform review. No site deployment or production release tag was requested or performed as part of this migration.

## Earlier adoption evidence and unresolved checklist

The following records the earlier preview adoption work; it is historical evidence, not a claim that v1 acceptance has passed.
## Status — 15 September 2026

Installation succeeded on `codex/ogp-adoption` using `v0.5.6-Preview.1`, source
`6e85901bebeca53a002be88b2d011b9060706cd7`. The native Hugo dependency,
installation record, launcher, managed skills and instruction shims were updated together.
No guide content or supplied PDF has been edited. No site has been deployed.

The site-owned main caller preserves PR, main, merge-group and manual validation,
concurrency and the hosting-secret mapping. Deployment remains disabled. Existing
cleanup is retained while its environment naming is reconciled with OGP.
Historical agent instructions, the embedded main workflow and the manually disabled
duplicate-key Azure workflow are byte-preserved under `docs/adoption-history/`.
Site-specific rules are in `site/AGENTS.md`, `.github/AGENTS.md` and the scoped
Copilot instruction file. Root shims are platform-managed symbolic links.

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


## Current acceptance blockers

1. **Existing Polish alias rejected by OGP schema.** Prepare discovers
   `pl/pl/downloads/index.html` and `pl/pl/download/index.html` from the existing
   Polish translations aliases. The baseline actually contains these paths.
   The released `site-policy.schema.json` permits only one optional path segment
   before `download(s)`, so it rejects its own discovered inventory at
   `/wrapper/legacyAliases/12/targets/0`. Preserve the source aliases and public
   paths; OGP must support this existing Hugo output in discovery validation.
2. **Shared cleanup does not preserve the site environment name.** The existing
   site cleanup targets `canary-<PR>`. Released OGP `guide-site-close-pr.yaml`
   hardcodes `<PR>` and exposes no environment input. Add a supported environment
   input or shared delivery-context resolution before migrating cleanup and
   enabling preview deployment. Delivery configuration retains `canary-{pr}`;
   the canary URL must be confirmed against the actual Azure deployment before
   acceptance.

Installed Prepare reports are under `.processing/ogp-adoption/installed-*/prepare/`.
Diagnostic rendering against the new native module is under
`.processing/ogp-adoption/native-diagnostics/`; these direct Hugo builds do not
replace the blocked root-entry-point acceptance builds. No generated discovery
file, schema or installation checksum was edited to bypass a check.

## Native-module diagnostic comparison

All three diagnostic builds completed with exit code 0 and no ERROR lines.
Their complete output-path sets match the preserved baseline: canary has 499
files (210 HTML, 31 PDF), preview 483 (202 HTML, 31 PDF), and production 329
(132 HTML, 22 PDF). Every output PDF hash matches. All 171 captured Markdown
and PDF source hashes remain unchanged.

Some HTML, JSON and XML hashes differ. The preview homepage difference is the
expected module identity/version in its debug table; the remaining differences
still require disposition, followed by browser checks. Path and PDF equivalence
alone does not establish rendered-content or visual equivalence.

The workflow lockfile was generated with `gh actions-lock --no-narrow` and
`gh actions-lock --verify-local` passed for all seven active workflows. This
covers tool-supported action dependencies; it does not lock the reusable OGP
workflow reference. The main caller retains automatic GitVersion-based target
selection, with an explicit manual override, and `deploy: false`.
## Remaining work

- [x] Preserve current-main baseline and create the agreed adoption branch.
- [x] Install the released coordinated platform and migrate the main caller.
- [x] Preserve bespoke site rules and archive inactive legacy files.
- [ ] Resolve OGP alias-schema support and configurable cleanup environment.
- [ ] Pass root-entry-point Prepare, Build and Validate for all three targets.
- [ ] Verify route/catalogue/download equivalence and browser appearance.
- [ ] Reconcile contributor getting-started commands with the root entry point.
- [ ] Resolve the independent agent-control enforcement requirement in managed adoption guidance.
- [ ] Complete independent review of acceptance evidence and commit the verified migration.
- [ ] Verify the adoption preview separately from production approval.