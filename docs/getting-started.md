# Getting started with ScrumExpansion

The [OGP contributor guide](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.6/system/OpenGuidePlatform.Agents.Integration/contributor-guide/README.md) supplies plain-English explanations, diagrams and technical reference for this site's shared tooling. Begin with [setup](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.6/system/OpenGuidePlatform.Agents.Integration/contributor-guide/setup.md), or [review wording without developer tools](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.6/system/OpenGuidePlatform.Agents.Integration/contributor-guide/review-wording.md).

## Site policy and structure

Discuss a proposed change with the community and relevant guide owner before implementing it. Follow [contributing policy](./contributing.md), [translation policy](./translations.md) and [content conventions](./content-management.md).

The core guide is under `site/content/scrum-guide-expanded/`. Extensions have independent guide and edition directories. The homepage, extension catalogues, categories, creator profiles and template overrides are bespoke site features. Use OGP discovery for the actual guide/edition inventory.

Preserve formal academic style, citations, licensing, partial translations, fallback behavior and supplied PDFs. New languages stay excluded from production. Preserve Klingon's production exclusion and the current guide-specific environment cascades.

## Environment configurations

Site settings and hostnames live in [settings.yaml](../.OpenGuidePlatform/settings.yaml). Local development, PR canary, preview and production are distinct targets. A local production build validates output without publishing it. Use the shared [validation guide](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.6/system/OpenGuidePlatform.Agents.Integration/contributor-guide/validation.md) for root entry-point commands, submission evidence and handoffs.

Production publication requires explicit approval. A fork PR cannot deploy automatically under the current caller; ask maintainers to arrange review through the normal contribution discussion. Shared workflow explanations and diagrams are maintained in OGP.
