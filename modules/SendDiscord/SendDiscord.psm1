function Send-DiscordWebhook {

    param (
        [Parameter(Mandatory)]
        [string] $Url,
        
        [Parameter(Mandatory)]
        [string] $Content,

        [Parameter()]
        [string] $Username
    )

    $body = @{
        "content" = $Content
    };

    if ( -not [string]::IsNullOrEmpty($username)) {
        $body.Add("username", $username);
    };
    
    Invoke-WebRequest `
        -Method Post `
        -ContentType 'application/json' `
        -Body ($body | ConvertTo-Json) `
        -Uri $Url
}
