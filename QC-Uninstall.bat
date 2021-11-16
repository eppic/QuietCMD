@echo off
title QuietCMD by eppic - Uninstaller
cls
echo QuietCMD - Mute Windows Copyright Information on CMD.
echo.
echo Run this Script to remove QuietCMD from your PC.
echo (This will delete the CMD Autorun Entry)
echo.
pause
echo. 

echo Removing Key from Registry...
reg delete "HKCU\Software\Microsoft\Command Processor" /v AutoRun 
echo.

echo Finished.
pause