
::See my code if you want
::  _____   _____              _ _      _____               
:: |_   _| |  __ \            ( ) |    / ____|              
::   | |   | |  | | ___  _ __ |/| |_  | |     __ _ _ __ ___ 
::   | |   | |  | |/ _ \| '_ \  | __| | |    / _` | '__/ _ \
::  _| |_  | |__| | (_) | | | | | |_  | |___| (_| | | |  __/
:: |_____| |_____/ \___/|_| |_|  \__|  \_____\__,_|_|  \___|


::       ██████  
::██     ██   ██ 
::       ██████  
::██     ██      
::       ██      
::


@echo off
::mode con: cols=38 lines=20
chcp 65001 >nul
title (　-_･) ︻デ═一 Multitool 

set direct=%~dp0
cd %direct%

:banner
[0m
cls
echo.
echo.
echo   [32m███    ███ ██    ██ ██      ████████ ██ ████████  ██████   ██████  ██             ██  
        echo   ████  ████ ██    ██ ██         ██    ██    ██    ██    ██ ██    ██ ██          ██  ██ 
        echo   ██ ████ ██ ██    ██ ██         ██    ██    ██    ██    ██ ██    ██ ██              ██ 
        echo   ██  ██  ██ ██    ██ ██         ██    ██    ██    ██    ██ ██    ██ ██          ▄█  ██ 
        echo   ██      ██  ██████  ███████    ██    ██    ██     ██████   ██████  ███████     ▀  ██  [0m
		goto menu

:menu
echo.
echo [91mAny thing with q will close this window; r to refresh[0m
echo.
echo [33mNormal				Generators				Special Things[0m
echo [96m1) [94mCmd[0m				[96m11) [94mStand Key Gen[0m			[96m21) [94mCurrent Weather[0m
echo [96m2) [94mNetwork[0m 			[96m12) [94mAmazon Key Gen[0m			[96m22) [94mWIP[0m
echo [96m3) [94mView Batch Colors[0m 		[96m13) [94mWIP[0m					[96m23) [94mWIP[0m
echo [96m4) [94mFake Stand (Encrypted)[0m 	[96m14) [94mWIP[0m 				[96m24) [94mWIP[0m
echo [96m5) [94mFake Stand (Regular)[0m 	[96m15) [94mWIP[0m 				[96m25) [94mWIP[0m
echo.
echo.
echo [96m0) [94mAll[0m

set /p input="[32m>>[7m"

if %errorlevel%==1 echo No Input Detected & timeout -t 1 >nul 

if %input% EQU S goto shutdow
if %input% EQU Sq goto shutdow & goto quit

if %input% EQU 0 start cmd /c "cd C:\Windows\System32 & echo. & echo                                          ██████╗███╗   ███╗██████╗  & echo                                          ██╔════╝████╗ ████║██╔══██╗ & echo                                          ██║     ██╔████╔██║██║  ██║ & echo                                          ██║     ██║╚██╔╝██║██║  ██║ & echo                                          ╚██████╗██║ ╚═╝ ██║██████╔╝ & echo                                          ╚═════╝╚═╝     ╚═╝╚═════╝ & echo.  & echo. & title CMD & prompt CMD $G & cmd" echo. & start cmd /c "cd Random & network.bat" & start cmd /c "cd Random & colors.bat" & start cmd /c "cd !(STANDMENU.NotReally & StandMenuCrackedModified.bat" & start cmd /c "cd !(STANDMENU.NotReally & StandMenuCrackedUnModified.bat" & start cmd /c "cd Gens & RandomStandKey.bat" & start cmd /c "cd Gens & AmazonKeyGen.bat" & start cmd /c "cd Special & CurrentWeather.bat" 
if %input% EQU 0q start cmd /c "cd C:\Windows\System32 & echo. & echo                                          ██████╗███╗   ███╗██████╗  & echo                                          ██╔════╝████╗ ████║██╔══██╗ & echo                                          ██║     ██╔████╔██║██║  ██║ & echo                                          ██║     ██║╚██╔╝██║██║  ██║ & echo                                          ╚██████╗██║ ╚═╝ ██║██████╔╝ & echo                                          ╚═════╝╚═╝     ╚═╝╚═════╝ & echo.  & echo. & title CMD & prompt CMD $G & cmd" echo. & start cmd /c "cd Random & network.bat" & start cmd /c "cd Random & colors.bat" & start cmd /c "cd !(STANDMENU.NotReally & StandMenuCrackedModified.bat" & start cmd /c "cd !(STANDMENU.NotReally & StandMenuCrackedUnModified.bat" & start cmd /c "cd Gens & RandomStandKey.bat" & start cmd /c "cd Gens & AmazonKeyGen.bat" & start cmd /c "cd Special & CurrentWeather.bat" & goto quit



if %input% EQU q goto quit
if %input% EQU r goto banner



if %input% EQU 1 start cmd /c "cd C:\Windows\System32 & echo. & echo                                          ██████╗███╗   ███╗██████╗  & echo                                          ██╔════╝████╗ ████║██╔══██╗ & echo                                          ██║     ██╔████╔██║██║  ██║ & echo                                          ██║     ██║╚██╔╝██║██║  ██║ & echo                                          ╚██████╗██║ ╚═╝ ██║██████╔╝ & echo                                          ╚═════╝╚═╝     ╚═╝╚═════╝ & echo.  & echo. & title CMD & prompt CMD $G & cmd" echo.
if %input% EQU 1q start cmd /c "cd C:\Windows\System32 & echo. & echo                                          ██████╗███╗   ███╗██████╗  & echo                                          ██╔════╝████╗ ████║██╔══██╗ & echo                                          ██║     ██╔████╔██║██║  ██║ & echo                                          ██║     ██║╚██╔╝██║██║  ██║ & echo                                          ╚██████╗██║ ╚═╝ ██║██████╔╝ & echo                                          ╚═════╝╚═╝     ╚═╝╚═════╝ & echo.  & echo. & title CMD & prompt CMD $G & cmd" echo. & goto quit

if %input% EQU 2 start cmd /c "cd Random & network.bat"
if %input% EQU 2q start cmd /c "cd Random & network.bat" & goto quit

if %input% EQU 3 start cmd /c "cd Random & colors.bat"
if %input% EQU 3q start cmd /c "cd Random & colors.bat" & goto quit

if %input% EQU 4 start cmd /c "cd !(STANDMENU.NotReally & StandMenuCrackedModified.bat"
if %input% EQU 4q start cmd /c "cd !(STANDMENU.NotReally & StandMenuCrackedModified.bat"  & goto quit

if %input% EQU 5 start cmd /c "cd !(STANDMENU.NotReally & StandMenuCrackedUnModified.bat"
if %input% EQU 5q start cmd /c "cd !(STANDMENU.NotReally & StandMenuCrackedUnModified.bat"  & goto quit

::Generators
if %input% EQU 11 start cmd /c "cd Gens & RandomStandKey.bat"
if %input% EQU 11q start cmd /c "cd Gens & RandomStandKey.bat"  & goto quit

if %input% EQU 12 start cmd /c "cd Gens & AmazonKeyGen.bat"
if %input% EQU 12q start cmd /c "cd Gens & AmazonKeyGen.bat" & goto quit

if %input% EQU 13 goto error
if %input% EQU 13q goto error

if %input% EQU 14 goto error
if %input% EQU 14q goto error

if %input% EQU 15 goto error
if %input% EQU 15q goto error

::SPECIAL Stuff

if %input% EQU 21 start cmd /c "cd Special & CurrentWeather.bat"
if %input% EQU 21q start cmd /c "cd Special & CurrentWeather.bat" & goto quit

if %input% EQU 22 goto error
if %input% EQU 22q goto error

if %input% EQU 23 goto error
if %input% EQU 23q goto error

if %input% EQU 24 goto error
if %input% EQU 24q goto error

if %input% EQU 25 goto error
if %input% EQU 25q goto error
cls
goto banner

:error
cls
echo I SAID IT IS WORK IN PROGRESS
TIMEOUT /t 3 >nul
goto banner

:shutdow
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; $result = [System.Windows.Forms.MessageBox]::Show('Are you Sure You Want to Shutdown?', 'Windows', 'YesNo', [System.Windows.Forms.MessageBoxIcon]::Information); if ($result -eq [System.Windows.Forms.DialogResult]::Yes) { exit 0 } else { exit 1 }}"
if %errorlevel%==1 goto banner
Shutdown -s
TIMEOUT /t 3 >nul
goto banner

:quit
exit
