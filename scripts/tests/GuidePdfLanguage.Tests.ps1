BeforeAll {
    . (Join-Path $PSScriptRoot '../GuidePdfLanguage.ps1')
    $script:generator = Join-Path $PSScriptRoot '../Create-GuidePDFs.ps1'
}

Describe 'Guide PDF language resolution' {
    It 'resolves <File> to <Expected>' -ForEach @(
        @{ File = 'index.md'; Default = 'fr'; Expected = 'fr' }
        @{ File = 'index.fa.md'; Default = 'en'; Expected = 'fa' }
        @{ File = 'index.it.md'; Default = 'en'; Expected = 'it' }
        @{ File = 'index.es-ES.md'; Default = 'en'; Expected = 'es-ES' }
        @{ File = 'index.es-419.md'; Default = 'en'; Expected = 'es-419' }
        @{ File = 'index.zh-Hant.md'; Default = 'en'; Expected = 'zh-Hant' }
    ) {
        Get-GuidePdfLanguage -FileName $File -DefaultLanguage $Default | Should -BeExactly $Expected
    }

    It 'ignores non-guide files: <File>' -ForEach @(
        @{ File = '_index.md' }; @{ File = 'notes.md' }; @{ File = 'index.fa.md.bak' }
    ) {
        Get-GuidePdfLanguage -FileName $File -DefaultLanguage en | Should -BeNullOrEmpty
    }
}

Describe 'PDF generator language integration' {
    BeforeAll {
        # Isolated fixture: no published PDFs can be overwritten by these tests.
        $script:fixtureRoot = Join-Path $TestDrive 'site-fixture'
        $script:fixtureScript = Join-Path $fixtureRoot 'scripts/Create-GuidePDFs.ps1'
        New-Item -ItemType Directory -Path (Join-Path $fixtureRoot 'scripts') -Force | Out-Null
        New-Item -ItemType Directory -Path (Join-Path $fixtureRoot 'site/content/example/2026.1') -Force | Out-Null
        Copy-Item $generator $fixtureScript
        Copy-Item (Join-Path $PSScriptRoot '../GuidePdfLanguage.ps1') (Join-Path $fixtureRoot 'scripts')
        foreach ($file in @('index.md', 'index.fa.md', 'index.it.md', 'index.es-419.md', 'index.es-ES.md')) {
            @('---','title: Language test','---','','Non-empty guide body.') |
                Set-Content (Join-Path $fixtureRoot "site/content/example/2026.1/$file")
        }
        function hugo { }
        function pandoc { }
    }

    BeforeEach {
        $global:GuidePdfLanguageTestCalls = [Collections.Generic.List[object]]::new()
        Mock hugo { $global:LASTEXITCODE = 0; '{"defaultcontentlanguage":"fr"}' }
        Mock pandoc {
            $global:LASTEXITCODE = 0
            if ($args -notcontains '--version') { $global:GuidePdfLanguageTestCalls.Add(@($args)) }
        }
    }

    It 'passes all languages to Pandoc, including the configured default and numeric regions' {
        & $fixtureScript -GuideName example -Force
        $global:GuidePdfLanguageTestCalls.Count | Should -Be 5
        $languages = @($global:GuidePdfLanguageTestCalls | ForEach-Object {
            $metadataIndex = [Array]::IndexOf($_, '--metadata')
            $metadataIndex | Should -BeGreaterOrEqual 0
            $_[$metadataIndex + 1]
        })
        foreach ($language in @('fr','fa','it','es-419','es-ES')) {
            $languages | Should -Contain "lang=$language"
        }
    }

    It 'selects index.md when filtering by the configured default language' {
        & $fixtureScript -GuideName example -Language fr -Force
        $global:GuidePdfLanguageTestCalls.Count | Should -Be 1
        $global:GuidePdfLanguageTestCalls[0] | Should -Contain 'lang=fr'
        [IO.Path]::GetFileName($global:GuidePdfLanguageTestCalls[0][0]) | Should -BeExactly 'index.md'
    }

    It 'selects only the exact regional language' {
        & $fixtureScript -GuideName example -Language es-419 -Force
        $global:GuidePdfLanguageTestCalls.Count | Should -Be 1
        $global:GuidePdfLanguageTestCalls[0] | Should -Contain 'lang=es-419'
    }

    It 'fails before calling Pandoc if Hugo configuration cannot be read' {
        Mock hugo { $global:LASTEXITCODE = 1 }
        { & $fixtureScript -GuideName example -Force } | Should -Throw '*language configuration*'
        Should -Invoke pandoc -Times 0 -Exactly
    }
}

AfterAll { Remove-Variable -Name GuidePdfLanguageTestCalls -Scope Global -ErrorAction SilentlyContinue }
