# Guide-site contributor instructions

The generated installation record is .OpenGuidePlatform/installation.json; do not edit it by hand. User-owned platform selection, site source and delivery destinations are in .OpenGuidePlatform/settings.yaml. Prepare infers the site inventory from Hugo configuration and source content; do not maintain a page or translation inventory by hand.
Use ./build.ps1 to prepare, build and validate after content, template or configuration changes.
Use ./build.ps1 -Stage Serve -Target local for local development. Run a full build before committing.

Preserve the bespoke wrapper, supplied/protected PDFs and deliberate multilingual guide structure.
Do not put lang in Hugo front matter; PDF generation passes Pandoc language metadata separately.
Never enable permanently excluded languages in production.
Do not modify generated platform adapters, skills or the installation record by hand.
Workflow callers are site-owned. Preserve site triggers, inputs and secrets; use the coordinated update to change OGP release references and regenerate the Actions lockfile.
Update them using ./build.ps1 Update -ring preview on a review branch and review the complete diff.
For first installation, use the remote bootstrap command documented in the platform README.

Shared skills are in .agents/skills. To load the installed Core module in PowerShell:
    $platform = ./.OpenGuidePlatform/Resolve-OpenGuidePlatform.ps1 -WorkspaceRoot $PWD
    Import-Module "$platform/system/OpenGuidePlatform.PowerShell.Core/OpenGuidePlatform.PowerShell.Core.psd1"
Run Prepare and use its generated discovered-site.json inventory for Core operations. Review any intended publishing change before applying it.

These instructions guide Codex, Claude and GitHub Copilot; they do not enforce permissions.
Independent managed agent controls remain an explicit adoption blocker.
