@echo off
title Quiet CMD
cls
echo Quiet CMD - Mute Windows Copyright Information on CMD.
echo.
echo This Script hides the copyright information everytime cmd.exe starts by
echo setting CMD's Autorun to "init.cmd" which contains a "cls" command.
echo.
echo If something went wrong, delete the "AutoRun" Key in the Registry under
echo. "HKEY_CURRENT_USER\Software\Microsoft\Command Processor"
echo.
pause
echo.

echo Adding Key to Registry...
reg add "HKCU\Software\Microsoft\Command Processor" /v AutoRun ^
  /t REG_EXPAND_SZ /d "init.cmd" /f
echo.

echo Copying init.cmd...
copy nul init.cmd
echo.

echo Writing to init.cmd...
echo @echo off> %USERPROFILE%\init.cmd
echo cls>> %USERPROFILE%\init.cmd
echo.

echo Finished.
pause