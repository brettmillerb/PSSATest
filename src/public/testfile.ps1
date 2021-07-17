Get-ChildItem -Path /users/brett.miller/Desktop -Filter *.jpg -File

Get-ChildItem -Path /users/brett.miller/Desktop `
-Filter *.jpg `
-File

gci -Path /Users/brett.miller/Desktop

gci -Path /Users/brett.miller/Desktop | ? name -match ''
