function Convert-DocxToPdf(
    [Parameter(
        Mandatory = $true,
        ValueFromPipeline = $true
    )]
    [string] $InputPath,

    [Parameter()]
    [string] $OutputPath
) {
    $word = New-Object -ComObject Word.Application;
    try {        
        $inputFullPath = $(Convert-Path $InputPath);
        $doc = $word.Documents.OpenNoRepairDialog($inputFullPath);
        
        if ([String]::IsNullOrEmpty($OutputPath)) {
            $outputFullPath = $([System.IO.Path]::ChangeExtension($inputFullPath, "pdf"));
        }
        else {
            $outputFullPath = $(Convert-Path $OutputPath);
        }

        # 17 is PDF
        # https://learn.microsoft.com/ja-jp/office/vba/api/word.wdsaveformat
        $doc.SaveAs($outputFullPath, 17);
    }
    finally {
        $doc.Close()
        $word.Quit()
    }    
}