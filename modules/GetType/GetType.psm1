function Get-Type(
    [Parameter(
        Mandatory = $true,
        ValueFromPipeline = $true
    )]
    $Object
) {
    return $Object.GetType()
}

Set-Alias typeof Get-Type
