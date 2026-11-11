# ScrumExpansion translation guidance

## Start here

You can translate words without knowing how to change website files. Start with the team before installing anything.

1. Open [ScrumExpansion translation discussions](https://github.com/ScrumGuides/ScrumGuide-ExpansionPack/discussions) and search for your language and guide. A free GitHub account lets you post and reply. Join the existing discussion if there is one; otherwise choose **New discussion** and use a title such as **Kannada translation help**.
2. Send the message below, replacing the words in square brackets. The team will identify the person who approves the work and the person who reviews the language. Keep using that same discussion for setup questions and your final submission link.
3. Read the [translation Code of Conduct](translations-code-of-conduct.md), then agree the guide, edition (version), language and review team before translating. If you do not know the edition or language code, say so; ask the team to confirm them.

> I want to help translate [Scrum Guide Expanded or the named extension] into [language and regional variant]. I would like to [start a translation / improve an existing translation]. I am new to the tools and want an agent to handle the files. Please confirm the work, the wording reviewer and the person who approves it. Please provide the supported agent setup and help opening my own working copy. If that cannot be arranged, please give me a review sheet and identify someone who will apply my words and submit the translation. I can help with [translation / reviewing / both].

**What happens next:** follow the shared walkthrough below using this site's installed OGP skills. If the website already works in your language, keep it and work only on the agreed guide text. For a new language, the team first arranges translated menus and introductory pages. Existing translations, credits and supplied PDFs stay intact.

**If you prefer the manual commands:** say so in the same discussion and ask for the module's published version, supported tool versions and administrator installation help before following shared setup. You can supply words while another volunteer handles the files.

**Manual setup:** the shared guide describes the PowerShell Gallery install. The module is not currently published there. Ask the team to arrange the supported agent setup or a review-sheet handoff.

## Shared translation instructions

Start with OGP's [first translation walkthrough](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.6-Preview.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/first-translation.md). It explains the tasks, roles and handoffs with diagrams. To help without developer tools, use [reviewing wording](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.6-Preview.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/review-wording.md). Technical volunteers use [setup](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.6-Preview.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/setup.md) and the [shared task index](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.6-Preview.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/README.md).

These shared explanations ship with OGP. This page records ScrumExpansion's policy and site details; it does not duplicate the technical procedure.

## Agree the work

Read the [translation Code of Conduct](./translations-code-of-conduct.md) and contact the translation guardian before starting. Use the repository's [new translation request](../.github/ISSUE_TEMPLATE/new-translation.yml) to coordinate the language, team and review. The relevant guide owner must approve translation changes.

Agree the language or regional variant, glossary, website scope and selected guide editions. The core guide is `scrum-guide-expanded`; extension guides have their own editions and owners. Selecting one body does not select every extension or historical edition. OGP discovery identifies the actual inventory.

Preserve meaning, formal academic style, footnote citations, references and licensing. Preserve categories, tags, machine values and placeholders. Agree terminology and script conventions with the owner rather than silently changing them. Record incomplete translations accurately.

## Site boundaries

The bespoke wrapper, core/extension catalogues and creator profiles are site-owned. Guide editions live under `site/content/{guide}/{edition}/`; the surrounding website and interface messages also need review when adding a language. Do not copy another language's file list as a creation recipe.

Keep new languages excluded from production during review. Preserve Klingon's production exclusion and the existing cascades excluding Adaptive Enterprise and Emergent Strategy and Depoyment from preview/production, and Planguage from production. Preserve current public paths, fallback behavior, partial translations and supplied PDFs.

Guide and translation credits belong in `site/data/contributions/`; PDF presentation belongs in `site/pdf/` under the shared contract. Changes to existing attribution or supplied PDF content require separate owner review. See [site PDF policy](./simple-pdf-generation.md).

## Review and publication

Follow the Code of Conduct's native-speaker review, acknowledgement, consent and reserved-term requirements. Submit the agreed scope, source/candidate evidence, unresolved language decisions and rendered review results with the PR. Automated checks establish technical readiness, not language approval.

Use OGP's [validation and submission guide](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.6-Preview.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/validation.md). Local production validation does not publish anything. Review the bespoke wrapper, navigation, credits and target-script rendering on narrow and wide screens.

Delivery destinations are in [settings.yaml](../.OpenGuidePlatform/settings.yaml). The [workflow caller](../.github/workflows/main.yaml) permits PR deployment only for branches in this repository; maintainers must arrange review for fork contributions. Canary uses `canary-{pr}`, preview is separate, and production publication requires explicit approval. A preview link or passing build does not approve publication.


## Complete your submission

A pull request (PR) is the submission asking this site's team to review your changed files. It does not publish them. Include the link to the discussion where you agreed the work.

If your agent or technical volunteer can submit, ask them for the PR link and a website review link. Open the PR and confirm it names the right language, guide and edition, includes the agreed files and records actual checks and unfinished work. If a review website cannot be provided, record that review as missing.

If someone else must submit, reply in the same [ScrumExpansion discussion](https://github.com/ScrumGuides/ScrumGuide-ExpansionPack/discussions): “My reviewed words for [guide, edition and language] are at [link or agreed handoff]. Here are the review decisions, consented credits, actual check results and open questions: [details]. Please confirm who will submit this work and reply with the PR and website review links.” Do not post passwords or private contact details. If no existing discussion can be found, use [the site discussions](https://github.com/ScrumGuides/ScrumGuide-ExpansionPack/discussions); [open issues](https://github.com/ScrumGuides/ScrumGuide-ExpansionPack/issues) can show whether the work is already tracked.

Your submission is confirmed when you can open its PR link and find the intended changes. If you have only handed over words, record the named person making the PR and keep the submission pending until that link is supplied. The site team then completes its required technical and language review and decides publication separately.
