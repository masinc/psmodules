function Test-Directory(
    [Parameter(
        Mandatory = $true,
        ValueFromPipeline = $true
    )]
    $Path
) {    
    $type = $Path.GetType()
    if ( ($type.Name -eq "DirectoryInfo") ) {        
        return $Path.Exists
    }

    if ( $type.Name -eq "String" ) {
        $Path = [System.IO.Path]::GetFullPath($Path, (Get-Location) )

        if ( [System.IO.Directory]::Exists($Path) ) {
            return $true
        }
    }

    return $false    
}
