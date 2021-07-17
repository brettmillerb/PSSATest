using namespace Microsoft.Windows.PowerShell.ScriptAnalyzer.Generic
using namespace System.Management.Automation.Language

function Measure-BackTick {
    <#
    .SYNOPSIS
    Removes backticks from your script and use "splatting" instead.

    .DESCRIPTION
    Backticks should only be used as escape characters and not for line continuation. If you are splitting a long command over multiple lines, consider using
    splatting instead. You can run "Get-Help about_splatting" to get more details.

    .INPUTS
    [System.Management.Automation.Language.Token[]]

    .OUTPUTS
    [Microsoft.Windows.Powershell.ScriptAnalyzer.Generic.DiagnosticRecord[]]

    .EXAMPLE
    Measure-Backtick -Token $Token

    #>
    [CmdletBinding()]
    [OutputType([Microsoft.Windows.PowerShell.ScriptAnalyzer.Generic.DiagnosticRecord[]])]
    param (
        [Token[]]$Token
    )

    process {
        $ruleName = $PSCmdlet.MyInvocation.InvocationName
        $Token.Where{
            $_.Kind -eq [System.Management.Automation.Language.TokenKind]::LineContinuation
        }.ForEach{
            [DiagnosticRecord]@{
                Message  = 'Line Continuation Backtick'
                Extent   = $_.Extent
                RuleName = $ruleName
                Severity = 'Warning'
            }
        }
    }
}