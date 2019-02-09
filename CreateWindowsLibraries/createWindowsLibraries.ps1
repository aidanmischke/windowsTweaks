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

$libName = "Documents"

$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "_$($libName)",$true

$lib.Add("D:\$($libName)")
$lib.Add("C:\Users\tosh\$($libName)")
$lib.Add("C:\Users\Public\$($libName)")

$lib.DefaultSaveFolder = "D:\$($libName)"

$lib.LibraryType = "$($libName)"

$lib.Close()


$libName = "Music"

$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "_$($libName)",$true

$lib.Add("D:\$($libName)")
$lib.Add("C:\Users\tosh\$($libName)")
$lib.Add("C:\Users\Public\$($libName)")

$lib.DefaultSaveFolder = "D:\$($libName)"

$lib.LibraryType = "$($libName)"

$lib.Close()


$libName = "Pictures"

$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "_$($libName)",$true

$lib.Add("D:\$($libName)")
$lib.Add("C:\Users\tosh\$($libName)")
$lib.Add("C:\Users\Public\$($libName)")

$lib.DefaultSaveFolder = "D:\$($libName)"

$lib.LibraryType = "$($libName)"

$lib.Close()


$libName = "Videos"

$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "_$($libName)",$true

$lib.Add("D:\$($libName)")
$lib.Add("C:\Users\tosh\$($libName)")
$lib.Add("C:\Users\Public\$($libName)")

$lib.DefaultSaveFolder = "D:\$($libName)"

$lib.LibraryType = "$($libName)"

$lib.Close()