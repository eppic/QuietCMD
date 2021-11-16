@echo off
title QuietCMD by eppic - No Registry Installer
cls
echo QuietCMD - Mute Windows Copyright Information on CMD.
echo.
echo No Registry Edition
echo.
pause
echo.

echo Copying init.cmd...
mkdir %APPDATA%\QuietCMD\
copy nul %APPDATA%\QuietCMD\init.cmd
echo.

echo Writing to init.cmd...
echo @echo off> %APPDATA%\QuietCMD\init.cmd
echo cls>> %APPDATA%\QuietCMD\init.cmd
echo.

echo Finished.
pause