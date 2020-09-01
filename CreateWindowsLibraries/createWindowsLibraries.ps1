#Note Limitations: 
#Need to manually set in UI
	#library icons
	#public save location
#Recommend library names differ to default library names
	#i.e. underscore prefix
	#They don't reliablely create with default names and 
	#Windows keeps re-adding default Windows library names after updates

#libType values
#"Generic"
#"Documents"
#"Music"
#"Pictures"
#"Videos"

#Helper lines to query libraries https://blogs.technet.microsoft.com/heyscriptingguy/2012/11/11/weekend-scripter-working-with-windows-libraries/
#Add-type -path Microsoft.WindowsAPICodePack.Shell.dll
#[Microsoft.WindowsAPICodePack.Shell.KnownFolders]::Libraries | Select-Object Name,ParsingName
#$doc = [Microsoft.WindowsAPICodePack.Shell.ShellLibrary]::Load("Documents", $false)
#Select-Object –InputObject $doc –Property Name, Count, DefaultSaveFolder, LibraryType

Add-type -path Microsoft.WindowsAPICodePack.Shell.dll

#Create different libraries depending on user account
$userAccount = "Enny"
#$userAccount = "tosh"

$libNamePrefix = "_"

if ("$($userAccount)" -eq "Enny")
{
	#Custom Library
	$libName = "Applications"
	$libType = "Generic"
	$libPath1 = "F:\__Jumbo Applications [original] backed up to Tachi and Sammy"
	$libPath2 = "E:\Downloads"
	#$libPath3 = "C:\Users\$($userAccount)\Downloads"

	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Add("$($libPath2)")
	#$lib.Add("$($libPath3)")
	$lib.Close()

	#Custom Library
	$libName = "Cloud"
	$libType = "Generic"
	$libPath1 = "E:\Google Drive"
	$libPath2 = "E:\Dropbox"
	$libPath3 = "E:\OneDrive"

	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Add("$($libPath2)")
	$lib.Add("$($libPath3)")
	$lib.Close()

	#Custom Library
	$libName = "Code"
	$libType = "Generic"
	$libPath1 = "E:\__Cuda Code [original] backed up to Tiny"

	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Close()

	#Default Library
	$libName = "Documents"
	$libType = "$($libName)"
	$libPath1 = "F:\__Jumbo Documents [original] backed up to Tiny"
	$libPath2 = "C:\Users\$($userAccount)\$($libName)"
	$libPath3 = "C:\Users\Public\$($libName)"

	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Add("$($libPath2)")
	$lib.Add("$($libPath3)")
	$lib.Close()
	
	#Custom Library
	$libName = "Downloads"
	$libType = "Generic"
	$libPath1 = "E:\Downloads"
	$libPath2 = "E:\Soulseek Downloads"
	#$libPath3 = "C:\Users\$($userAccount)\Downloads"

	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Add("$($libPath2)")
	#$lib.Add("$($libPath3)")
	$lib.Close()

	#Custom Library
	$libName = "Games"
	$libType = "Generic"
	$libPath1 = "F:\__Jumbo Games [original] backed up to Bitachi"
	$libPath2 = "D:\Steam\steamapps\common"
	$libPath3 = "D:\Program Files"
	$libPath4 = "D:\Program Files (x86)"
	$libPath5 = "C:\Users\$($userAccount)\Documents"

	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Add("$($libPath2)")
	$lib.Add("$($libPath3)")
	$lib.Add("$($libPath4)")
	$lib.Add("$($libPath5)")
	$lib.Close()

	#Custom Library
	$libName = "mp3"
	$libType = "Music"
	$libPath1 = "E:\__Cuda mp3 [original] backed up to Tachi"

	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Close()

	#Default Library
	$libName = "Music"
	$libType = "$($libName)"
	$libPath1 = "F:\__Jumbo Music [original] backed up to Tiny"
	$libPath2 = "C:\Users\$($userAccount)\$($libName)"
	$libPath3 = "C:\Users\Public\$($libName)"

	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Add("$($libPath2)")
	$lib.Add("$($libPath3)")
	$lib.Close()

	#Default Library
	$libName = "Pictures"
	$libType = "$($libName)"
	$libPath1 = "F:\__Jumbo Aidan's Pictures [original] backed up to Tachi"
	$libPath2 = "E:\Screenshots"
	$libPath3 = "C:\Users\$($userAccount)\$($libName)"
	$libPath4 = "C:\Users\Public\$($libName)"

	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Add("$($libPath2)")
	$lib.Add("$($libPath3)")
	$lib.Add("$($libPath4)")
	$lib.Close()

	#Custom Library
	$libName = "Program Files"
	$libType = "Generic"
	$libPath1 = "C:\Program Files"
	$libPath2 = "C:\Program Files (x86)"
	$libPath3 = "D:\Program Files"
	$libPath4 = "D:\Program Files (x86)"
	
	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Add("$($libPath2)")
	$lib.Add("$($libPath3)")
	$lib.Add("$($libPath4)")
	$lib.Close()

	#Default Library
	$libName = "Videos"
	$libType = "$($libName)"
	$libPath1 = "F:\__Jumbo Video Vault [original] backed up to Tachi"
	$libPath2 = "F:\__Jumbo Videos [original] backed up to Shiba"
	$libPath3 = "F:\__Jumbo Videos 1900-1989 [original] backed up to Tiny"
	$libPath4 = "C:\Users\$($userAccount)\$($libName)"
	$libPath5 = "C:\Users\Public\$($libName)"

	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Add("$($libPath2)")
	$lib.Add("$($libPath3)")
	$lib.Add("$($libPath4)")
	$lib.Add("$($libPath5)")
	$lib.Close()
}
if ("$($userAccount)" -eq "tosh")
{
	#Custom Library
	$libName = "Applications"
	$libType = "Generic"
	$libPath1 = "D:\__Tosh Cargo [original] backed up to Sammy\Applications"
	$libPath2 = "C:\Users\$($userAccount)\Downloads"

	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Add("$($libPath2)")
	$lib.Close()

	#Custom Library
	$libName = "Cloud"
	$libType = "Generic"
	$libPath1 = "C:\Users\tosh\Google Drive"
	$libPath2 = "C:\Users\tosh\Dropbox"
	$libPath3 = "C:\Users\tosh\OneDrive"

	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Add("$($libPath2)")
	$lib.Add("$($libPath3)")
	$lib.Close()

	#Default Library
	$libName = "Documents"
	$libType = "$($libName)"
	$libPath1 = "D:\__Tosh Cargo [original] backed up to Sammy\Documents"
	$libPath2 = "C:\Users\$($userAccount)\$($libName)"
	$libPath3 = "C:\Users\Public\$($libName)"

	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Add("$($libPath2)")
	$lib.Add("$($libPath3)")
	$lib.Close()
	
	#Custom Library
	$libName = "Downloads"
	$libType = "Generic"
	$libPath1 = "C:\Users\$($userAccount)\Downloads"
	$libPath2 = "D:\Soulseek Downloads"

	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Add("$($libPath2)")
	$lib.Close()

	#Custom Library
	$libName = "Games"
	$libType = "Generic"
	$libPath1 = "D:\__Tosh Cargo [original] backed up to Sammy\Emulators"
	$libPath2 = "D:\__Tosh Cargo [original] backed up to Sammy\Frets On Fire"

	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Add("$($libPath2)")
	$lib.Close()

	#Default Library
	$libName = "Music"
	$libType = "$($libName)"
	$libPath1 = "D:\__Tosh Cargo [original] backed up to Sammy\Music"
	$libPath2 = "C:\Users\$($userAccount)\$($libName)"
	$libPath3 = "C:\Users\Public\$($libName)"

	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Add("$($libPath2)")
	$lib.Add("$($libPath3)")
	$lib.Close()

	#Default Library
	$libName = "Pictures"
	$libType = "$($libName)"
	$libPath1 = "D:\__Tosh Cargo [original] backed up to Sammy\Pictures"
	$libPath2 = "D:\__Tosh Cargo [original] backed up to Sammy\Screenshots"
	$libPath3 = "C:\Users\$($userAccount)\$($libName)"
	$libPath4 = "C:\Users\Public\$($libName)"

	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Add("$($libPath2)")
	$lib.Add("$($libPath3)")
	$lib.Add("$($libPath4)")
	$lib.Close()

	#Custom Library
	$libName = "Program Files"
	$libType = "Generic"
	$libPath1 = "C:\Program Files"
	$libPath2 = "C:\Program Files (x86)"
	
	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Add("$($libPath2)")
	$lib.Close()

	#Default Library
	$libName = "Videos"
	$libType = "$($libName)"
	$libPath1 = "D:\__Tosh Cargo [original] backed up to Sammy\Videos"

	$lib = New-Object Microsoft.WindowsAPICodePack.Shell.ShellLibrary –Argument "$($libNamePrefix)$($libName)",$true
	$lib.Add("$($libPath1)")
	$lib.DefaultSaveFolder = "$($libPath1)"
	$lib.Close()
}
