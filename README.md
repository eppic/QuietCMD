# QuietCMD
Mute Windows Copyright Information on CMD.  

This Script hides the copyright information everytime `cmd.exe` starts by setting CMD's AutoRun to `init.cmd` which contains a `cls` command.  

## Troubleshooting
If something went wrong, delete the `AutoRun` Key in the Registry.  
It is located under: `HKEY_CURRENT_USER\Software\Microsoft\Command Processor`

## Compatibility
 - This script works with Windows 10 and above (probably also Windows 7, but i never checked)
 - Other programs in CMD's AutoRun (like Clink) get overwritten by QuietCMD. However, QuietCMD can get added without overwriting existing entries.

## Adding QuietCMD without overwriting existing AutoRun entries
 1. Open regedit.exe
 2. Locate `HKEY_CURRENT_USER\Software\Microsoft\Command Processor`
 3. Open the `AutoRun` Key
 4. Add ` & "%APPDATA%\QuietCMD\init.cmd"` to the end of the key data
 5. Run `QC-No-Reg.bat`
 6. Finished

## Uninstall
 1. Delete %APPDATA%\QuietCMD
 2. Locate `HKEY_CURRENT_USER\Software\Microsoft\Command Processor`
 3. Delete the `AutoRun` Key
 4. Finished
