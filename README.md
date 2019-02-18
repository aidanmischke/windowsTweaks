# Windows Tweaks
Windows tweaks made after a clean Windows 10 install

## Create Windows Libraries
Use *WindowsAPICodePack* and matching *...Shell* to create Windows Libraries, include folders, set DefaultSaveFolder location, and set the LibraryType: *Generic, Documents, Music, Pictures, Videos.*

## How to run
*I'm unsure why right clicking the PowerShell file and clicking "Run with PowerShell" returns the following error:*

```$lib.LibraryType = "$($gamesLibraryType)"```

```string is missing the terminator: "```

### Workaround
1. In the directory with the .dll files, (shift + right click) and "Open PowerShell window here".
1. Copy contents of PowerShell file (.ps1).
1. Paste into open PowerShell window.
1. Press Enter to run.

### Things I Got stuck on...

Unsure how to set
1. Icon using IconResourceId property.
1. Public Save Location as property isn't exposed.

*Consider these limitations and set manually using the UI*