@echo off
setlocal enabledelayedexpansion

set "ROOT=%~dp0"
set "APPDATA=%ROOT%data"
set "DATA=%ROOT%data\.minecraft"
set "BIN=%DATA%\versions\1.0\1.0.jar"
set "NATIVES=%DATA%\versions\1.0\natives"
set "CONFIG_FILE=%ROOT%data\config.txt"

if not exist "%CONFIG_FILE%" (
    (
    echo NOM=Player
    echo RAM=1024
    echo MESA=No
	echo :: DO NOT CHANGE THIS IF YOU DONT KNOW WHAT ARE YOU DOING!!!
    ) > "%CONFIG_FILE%"
)
for /f "usebackq delims=" %%a in ("%CONFIG_FILE%") do set "%%a"

:MENU
title [#] UsbMC 1.1 [#]

if "%MESA%"=="Yes" (
    set "JAVA_EXE=%ROOT%data\runtime\binopengl\java.exe"
) else (
    set "JAVA_EXE=%ROOT%data\runtime\bin\java.exe"
)

cls
echo UsbMC 1.1
echo Made by Andresqwq
echo https://github.com/AndresBDW/UsbMC/
echo ==========================
echo Minecraft Version: 1.0.0
echo Name: %NOM%
echo OpenGL Mesa: %MESA%
echo RAM: %RAM%mb
echo ==========================
echo 1) Play
echo 2) Change your nickname
echo 3) Use OpenGL Mesa
echo 4) Adjust RAM
echo 5) Exit
echo ==========================
set /p opt="Select a option: "

if "%opt%"=="1" goto LAUNCH
if "%opt%"=="2" goto NICKNAME
if "%opt%"=="3" goto OPENGL
if "%opt%"=="4" goto ADJUST_RAM
if "%opt%"=="5" exit
goto MENU

:NICKNAME
cls
echo === NEW NICKNAME ===
set /p NOM="Put your new nickname: "
goto SAVE

:OPENGL
cls
echo === OPENGL MESA ===
echo 1) Enable (For old graphics cards or no video drivers)
echo 2) Disable
set /p g_opt="(1/2): "
if "%g_opt%"=="1" set "MESA=Yes"
if "%g_opt%"=="2" set "MESA=No"
goto SAVE

:ADJUST_RAM
cls
echo === ADJUST RAM ===
echo (DONT PUT MORE THAN 1024MB)
set /p RAM="MB: "
goto SAVE

:SAVE
(
echo NOM=%NOM%
echo RAM=%RAM%
echo MESA=%MESA%
) > "%CONFIG_FILE%"
goto MENU

:LAUNCH
cls
title [#] DONT CLOSE THIS WINDOW [#]
echo Scanning libraries...
set "CP="
for /r "%DATA%\libraries" %%i in (*.jar) do (set "CP=!CP!%%i;")

if not exist "%APPDATA%\.minecraft" mkdir "%APPDATA%\.minecraft"

echo Starting Minecraft: 1.0.0
echo Java: %JAVA_EXE%
"%JAVA_EXE%" -Xmx%RAM%M -Dsun.java2d.noddraw=true -Djava.library.path="%NATIVES%" -cp "%CP%%BIN%" net.minecraft.client.Minecraft %NOM%

if %ERRORLEVEL% neq 0 (
    echo.
    echo [ERROR] The game could not be started.
    echo Verify that the Java path is correct.
    pause
)
goto MENU