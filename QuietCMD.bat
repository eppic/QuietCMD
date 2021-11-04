@echo off
title QuietCMD by eppic
cls
echo QuietCMD - Mute Windows Copyright Information on CMD.
echo.
echo This Script hides the copyright information everytime cmd.exe starts by
echo setting CMD's AutoRun to "%APPDATA%\QuietCMD\init.cmd" which contains a "cls" command.
echo.
echo If something went wrong, delete the "AutoRun" Key in the Registry under
echo. "HKEY_CURRENT_USER\Software\Microsoft\Command Processor"
echo.
pause
echo. 

echo Adding Key to Registry...
reg add "HKCU\Software\Microsoft\Command Processor" /v AutoRun ^
  /t REG_EXPAND_SZ /d "%APPDATA%\QuietCMD\init.cmd" /f
echo.

echo Copying init.cmd...
mkdir %APPDATA%\QuietCMD\
copy nul %APPDATA%\QuietCMD\init.cmd
echo.

echo Writing to init.cmd...
echo @echo off> %APPDATA%\QuietCMD\init.cmd
echo cls>> %APPDATA%\QuietCMD\init.cmd
echo.

echo Finishing...
echo start "" "https://github.com/eppic/QuietCMD"> %APPDATA%\QuietCMD\Open-Repo.bat
echo.

echo Finished.
pause
