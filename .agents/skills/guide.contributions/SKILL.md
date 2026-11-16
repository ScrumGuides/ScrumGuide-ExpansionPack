---
name: guide.contributions
description: "Create guide contributor YAML or apply a reviewed update to one existing contributor."
---

Read [Core usage](../USAGE.md), load the consumer policy, and select the declared guide. Use `New-GuideContributions -WorkspaceRoot $WorkspaceRoot -Policy $policy -GuideId $GuideId -Contributors $Contributors` for a new file. Existing .yml and .yaml filenames are preserved; two matching files are ambiguous and require reconciliation.

Records need a name and non-empty role. Preserve site-specific roles such as reviewer, supplied URLs, edition references and other contributor metadata; do not invent affiliations or contributions. Use `Get-GuideGravatar` only for an address the user supplied for that purpose.

For an authorized update, read the original bytes and SHA-256 and prepare CandidateYaml with the minimal requested diff. Preserve comments, formatting, contributor order and every unselected record. Apply with `Update-GuideContributions -WorkspaceRoot $WorkspaceRoot -Policy $policy -GuideId $GuideId -ContributorName $Name -ExpectedSha256 $OriginalHash -CandidateYaml $CandidateYaml`. The command validates semantic scope and writes the candidate text exactly; it does not reconstruct formatting for you. Review the diff for comment/format preservation.

The update must select exactly one existing name; it cannot rename, add, remove or reorder contributors. A stale hash means re-read and review the changed file, never refresh the hash blindly to bypass the refusal. The cooperative lock cannot prevent edits by programs that ignore it. Use WhatIf to inspect the operation and run the consumer build after an authorized change. Report the changed path and verification result.