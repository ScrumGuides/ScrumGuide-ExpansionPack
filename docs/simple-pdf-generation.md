# ScrumExpansion PDF policy

Use OGP's [credits and PDF guide](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.6/system/OpenGuidePlatform.Agents.Integration/contributor-guide/credits-pdfs.md) for eligibility, supported operations, font requirements and rendering review. These procedures ship with the installed package; this repository owns presentation choices and publication approval.

Existing supplied PDFs are protected source resources. A package or documentation update must preserve their bytes. Do not run legacy scripts over them or replace them with newly generated copies. New generation requires an explicitly selected eligible guide, edition and language and owner-approved presentation settings.

Review target-script shaping, fonts, direction, covers, attribution, citations, links and pagination before proposing publication. Keep font licensing and availability evidence with presentation decisions. Generated PDF settings belong in `site/pdf/` under the shared contract; guide front matter is not the place for author lists, translation teams or font/direction settings.

The retained `scripts/Create-GuidePDFs.ps1` and PDF language test workflows are legacy site tools. Their presence does not make them the current OGP contributor workflow or authorise overwriting supplied PDFs. Any migration of existing content metadata or attribution needs its own reviewed scope.

See [translation policy](./translations.md) for guardian review and [content conventions](./content-management.md) for licensing and citations. Production approval remains separate from successful local builds or PDF rendering.
