function Test-Module(
    [Parameter(
        Mandatory = $true,
        ValueFromPipeline = $true
    )]
    $Name
) {   
    return $null -ne (Get-Module $Name)
}