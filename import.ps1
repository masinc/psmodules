Get-ChildItem "${PSScriptRoot}\modules" -Attributes Directory
| ForEach-Object { Import-Module $_.FullName }