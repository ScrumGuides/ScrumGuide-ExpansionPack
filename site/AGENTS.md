# Scrum Expansion site instructions

Use the root ./build.ps1 entry point. Read docs/content-management.md and docs/translations.md before content changes.

- Preserve the formal academic style, footnote citations, references and licensing.
- Translation changes require approval from the relevant guide owner; preserve meaning and record incomplete translations accurately.
- Keep the core scrum-guide-expanded relationship and bespoke extension catalogues, categories, creators and markup overrides.
- Preserve guide paths, edition history, partial translations, intentional fallbacks and supplied PDF bytes. Never put lang in Hugo front matter; the PDF tooling passes Pandoc metadata separately.
- Preserve production language exclusions, including Klingon. Preserve the cascades excluding adaptive-enterprise and emergent-strategy-and-depoyment from preview/production and planguage from production.
- Keep responsive Bootstrap styling and i18n keys. Template, configuration and pipeline changes require maintainer-scoped work and validation.
- Do not publish production without explicit approval. Preview evidence is separate from production approval.

Historical instructions are retained in docs/adoption-history for traceability; use current platform commands and these site rules.