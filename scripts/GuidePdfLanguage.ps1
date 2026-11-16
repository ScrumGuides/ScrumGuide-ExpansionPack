function Get-GuidePdfLanguage {
    <#
    .SYNOPSIS
    Resolves a guide file's language using the same filename/default convention as the site.
    #>
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)][string]$FileName,
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string]$DefaultLanguage
    )

    if ($FileName -ceq 'index.md') { return $DefaultLanguage }
    # Preserve regional/script subtags, including numeric regions such as es-419.
    if ($FileName -cmatch '^index\.([A-Za-z]{2,8}(?:-[A-Za-z0-9]{1,8})*)\.md$') {
        return $Matches[1]
    }
    return $null
}
