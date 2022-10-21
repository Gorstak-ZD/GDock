:: Title
Title GDock & color 0b

:: Active folder
pushd %~dp0

:: Firefox
echo == Installing Firefox
Start /wait "" "NiniteFirefoxInstaller.exe"
Reg.exe import Mozilla.reg

:: Dock replacement
Start /wait "" "EmergeDesktop-6.1.3.exe" /S
xcopy "Emerge Desktop" "%userprofile%\Appdata\Roaming\Emerge Desktop" /Y /C /E /H /R /I
Reg import EmergeCore.reg
Start /wait "" "RocketDock-v1.3.5.exe" /verysilent
Reg import RocketDock.reg

:: PatchMyPC Home Updater
cls
echo == Downloading PatchMyPC Home Updater
curl -# https://patchmypc.com/freeupdater/PatchMyPC.exe -o %systemdrive%\users\Public\Desktop\PatchMyPC.exe
