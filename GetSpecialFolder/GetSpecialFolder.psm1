function Get-SpecialFolder(
    [ValidateSet(
        "AdminTools",
        "ApplicationData",
        "CDBurning",
        "CommonAdminTools",
        "CommonApplicationData",
        "CommonDesktopDirectory",
        "CommonDocuments",
        "CommonMusic",
        "CommonOemLinks",
        "CommonPictures",
        "CommonProgramFiles",
        "CommonProgramFilesX86",
        "CommonPrograms",
        "CommonStartMenu",
        "CommonStartup",
        "CommonTemplates",
        "CommonVideos",
        "Cookies",
        "Desktop",
        "DesktopDirectory",
        "Favorites",
        "Fonts",
        "History",
        "InternetCache",
        "LocalApplicationData",
        "LocalizedResources",
        "MyComputer",
        "MyDocuments",
        "MyMusic",
        "MyPictures",
        "MyVideos",
        "NetworkShortcuts",
        "Personal",
        "PrinterShortcuts",
        "ProgramFiles",
        "ProgramFilesX86",
        "Programs",
        "Recent",
        "Resources",
        "SendTo",
        "StartMenu",
        "Startup",
        "System",
        "SystemX86",
        "Templates",
        "UserProfile",
        "Windows"
    )] 
    $FolderName
) {
    $SpecialFolder = [System.Environment]::GetFolderPath($FolderName)
    if ( Test-Directory($SpecialFolder) ) {
        return $SpecialFolder
    }
    throw "The folder '$FolderName' does not exist"
}
