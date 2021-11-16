# QuietCMD
Mute Windows Copyright Information on CMD.  

This Script hides the copyright information everytime `cmd.exe` starts by setting CMD's AutoRun to a `cls` command.

## Compatibility
 - This script works with Windows 10 and above (probably also Windows 7, but i never checked)
 - Other programs in CMD's AutoRun (like Clink) get overwritten by QuietCMD. However, QuietCMD can get added without overwriting existing entries.

## Muting CMD without overwriting existing AutoRun entries
 1. Open regedit.exe
 2. Locate `HKEY_CURRENT_USER\Software\Microsoft\Command Processor`
 3. Open the `AutoRun` Key
 4. Add ` & cls` to the end of the key data
 6. Finished

## Uninstall manually
 1. Open regedit.exe
 2. Locate `HKEY_CURRENT_USER\Software\Microsoft\Command Processor`
 3. Delete the `AutoRun` Key
 4. Finished

## Troubleshooting
If something went wrong, delete the `AutoRun` Key in the Registry.  
It is located under: `HKEY_CURRENT_USER\Software\Microsoft\Command Processor`

