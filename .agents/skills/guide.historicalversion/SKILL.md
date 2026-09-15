---
name: guide.historicalversion
description: "Create a draft snapshot of an explicitly selected guide edition without overwriting history."
---

Read [Core usage](../USAGE.md). Select the source edition from policy and an explicit target edition ID and path relative to that guide's content root. Do not assume latest/ or history/ layouts.

Run `New-GuideEdition -WorkspaceRoot $WorkspaceRoot -Policy $policy -GuideId $GuideId -SourceEditionId $SourceEditionId -NewEditionId $NewEditionId -TargetPath $TargetPath`.

The command refuses conflicting targets and protected guide content. It copies edition resources, preserves source bodies, sets the new snapshot to draft, updates its version and removes inherited live aliases. It does not change the original edition or promote the snapshot. Review the resulting metadata and declared publication intent before adding it to published history. Do not restore live aliases or clear draft flags without the requested publication review.

Run the consumer build and report the new path, files and remaining publication work.
