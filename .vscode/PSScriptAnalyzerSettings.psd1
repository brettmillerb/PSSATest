@{
    CustomRulePath = @(
        '~/git/gitpersonal/ScriptAnalyserRules/PSScriptAnalyzer/CustomRules'
    )

    IncludeDefaultRules = $true

    IncludeRules   = @(
        'Measure-*'
    )
}
