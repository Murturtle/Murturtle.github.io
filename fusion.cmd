@echo off

color f

echo [INFO] Using murturtle's Fusion360 jailbreak

echo [INFO] creating and going into folder
cd  "C:\Users\PhotonUser\My Files\Temporary Files"

echo [KILL] killing fusion...
taskkill /f /im Fusion360.exe
echo [INFO] killed fusion

echo [KILL] killing Photon...
taskkill /f /im PhotonWindowsCustomShell.exe
taskkill /f /im PhotonAppSwitcher.exe
taskkill /f /im PhotonWindowsCustomShellBackground.exe
echo [INFO] killed PhotonCustomAgent
echo [INFO] you can now minimize windows

choice /c yn /m "Start Firefox?"
IF %ERRORLEVEL% EQU 1 goto firefox
IF %ERRORLEVEL% EQU 2 goto finished

:firefox
copy "C:\Program Files (x86)\Mozilla Firefox" ".\ff"
cd ff
move firefox.exe furryfox.exe
start furryfox.exe
goto finished

:finished
echo [DONE] Setup complete!
echo                       [INFO] Use the temporary files folder as the main folder for all your files
pause
exit
