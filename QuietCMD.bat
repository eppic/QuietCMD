@echo off
title QuietCMD by eppic
cls
echo QuietCMD - Mute Windows Copyright Information on CMD.
echo.
echo This Script hides the copyright information everytime cmd.exe starts by
echo setting CMD's AutoRun to a "cls" command.
echo.
echo If something went wrong, delete the "AutoRun" Key in the Registry under
echo. "HKEY_CURRENT_USER\Software\Microsoft\Command Processor"
echo.
pause
echo. 

echo Adding Key to Registry...
reg add "HKCU\Software\Microsoft\Command Processor" /v AutoRun ^
  /t REG_EXPAND_SZ /d "cls" /f
echo.

echo Finished.
pause
