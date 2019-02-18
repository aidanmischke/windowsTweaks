#Note Limitations: need to manually set in UI
	#library icons
	#public save location

#LibraryType values
#"Generic"
#"Documents"
#"Music"
#"Pictures"
#"Videos"

Add-type -path Microsoft.WindowsAPICodePack.Shell.dll

$onExternalDrivePath = "F:\__On 931"

$userAccount = "Enny"
$documentsPath = "F:\__NOT On Mini Backup"
$musicPath = "$($onExternalDrivePath)"
$mp3Path = "E:\mp3"
$mp3LibraryType = "Music"
$picturesPath = "$($onExternalDrivePath)"
$videosPath = "E:\"
$videoVaultPath = "$($onExternalDrivePath)\_Video Vault"

$applicationsPath = "$($onExternalDrivePath)"
$downloadsPath = "C:\Users\$($userAccount)\Downloads"
$applicationsLibraryType = "Generic"
$gamesPath = "E:\"
$steamPath = "D:\Steam\steamapps\common"
$gamesLibraryType = "Generic"

$libName = "Documents"

$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "_$($libName)",$true

$lib.Add("$($documentsPath)\$($libName)")
$lib.Add("C:\Users\$($userAccount)\$($libName)")
$lib.Add("C:\Users\Public\$($libName)")

$lib.DefaultSaveFolder = "$($documentsPath)\$($libName)"

$lib.LibraryType = "$($libName)"

$lib.Close()


$libName = "Music"

$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "_$($libName)",$true

$lib.Add("$($musicPath)\$($libName)")
$lib.Add("C:\Users\$($userAccount)\$($libName)")
$lib.Add("C:\Users\Public\$($libName)")

$lib.DefaultSaveFolder = "$($musicPath)\$($libName)"

$lib.LibraryType = "$($libName)"

$lib.Close()


$libName = "mp3"

$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "_$($libName)",$true

$lib.Add("$($mp3Path)")

$lib.DefaultSaveFolder = "$($mp3Path)"

$lib.LibraryType = "$($mp3LibraryType)"

$lib.Close()


$libName = "Pictures"

$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "_$($libName)",$true

$lib.Add("$($picturesPath)\$($libName)")
$lib.Add("C:\Users\$($userAccount)\$($libName)")
$lib.Add("C:\Users\Public\$($libName)")

$lib.DefaultSaveFolder = "$($picturesPath)\$($libName)"

$lib.LibraryType = "$($libName)"

$lib.Close()


$libName = "Videos"

$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "_$($libName)",$true

$lib.Add("$($videosPath)\$($libName)")
$lib.Add("$($videoVaultPath)")
$lib.Add("C:\Users\$($userAccount)\$($libName)")
$lib.Add("C:\Users\Public\$($libName)")

$lib.DefaultSaveFolder = "$($videosPath)\$($libName)"

$lib.LibraryType = "$($libName)"

$lib.Close()



$libName = "Applications"

$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "_$($libName)",$true

$lib.Add("$($applicationsPath)\$($libName)")
$lib.Add("$downloadsPath")

$lib.DefaultSaveFolder = "$($applicationsPath)\$($libName)"

$lib.LibraryType = "$($applicationsLibraryType)"

$lib.Close()



$libName = "Games"

$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "_$($libName)",$true

$lib.Add("$($gamesPath)\$($libName)")
$lib.Add("$($steamPath)")

$lib.DefaultSaveFolder = "$($gamesPath)\$($libName)"

$lib.LibraryType = "$($gamesLibraryType)"

$lib.Close()