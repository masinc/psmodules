function Test-Command(
    [Parameter(        
        Mandatory = $true
    )]
    $Name
) {
    Get-Command "$Name" >$null 2>$null
    return $?
}
