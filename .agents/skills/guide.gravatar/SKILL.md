---
name: guide.gravatar
description: "Generate a normalized SHA-256 Gravatar hash and URL for a supplied contributor email."
---

Read [Core usage](../USAGE.md). Run `Get-GuideGravatar -Email $Email` and optionally pass `-Size`.

Return the hash and URL. The operation trims and lowercases the address before hashing and does not print or return the address. Do not write contributor files or change the clipboard unless separately requested. No consumer policy is needed for this pure operation.
