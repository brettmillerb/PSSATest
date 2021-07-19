Get-ChildItem -Path /users/brett.miller/Desktop -Filter *.jpg -File

Get-ChildItem -Path /users/brett.miller/Desktop `
    -Filter *.jpg `
    -File

Get-ChildItem -Path /Users/brett.miller/Desktop

Get-ChildItem -Path /Users/brett.miller/Desktop | Where-Object name -Match ''

function FunctionName {
    param (
        [switch]$switch = $true
    )
    $switch

}
