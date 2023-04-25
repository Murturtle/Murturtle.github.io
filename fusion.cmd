@echo off

color f
echo:
echo [INFO] Using murturtle's Fusion360 jailbreak
echo:
echo [INFO] going into temp folder
cd  "C:\Users\PhotonUser\My Files\Temporary Files"

CHOICE /C YN /M "kill fusion?"
IF %ERRORLEVEL% EQU 2 goto sub_hard_drive
IF %ERRORLEVEL% EQU 1 continue

echo [KILL] killing fusion...
taskkill /f /im Fusion360.exe
echo [INFO] killed fusion
echo:
echo [KILL] killing Photon...
taskkill /f /im PhotonWindowsCustomShell.exe
taskkill /f /im PhotonWindowsAppSwitcher.exe
taskkill /f /im PhotonWindowsCustomShellBackground.exe
echo [INFO] killed photon
echo:
echo [INFO] you can now minimize windows
echo:
echo [INFO] proceding to download programs
pause

mkdir firefox
xcopy "C:\Program Files (x86)\Mozilla Firefox" ".\firefox" /d
cd firefox
move firefox.exe a.exe
goto finished

:finished
color a
echo:
echo [DONE] Setup complete! Press any key to open firefox and file explorer.
pause
start explorer "C:\Users\PhotonUser\My Files\Temporary Files"
cd firefox
start a
