@echo off
::mode con: cols=38 lines=20
chcp 65001 >nul
title Network Stats
for /f "tokens=2 delims=:" %%z in ('netsh wlan show interface ^| find "SSID" ^| findstr /v "BSSID"') do set ssid=%%z
set "profileName=%ssid%"
set "profilename=%profilename:~1%"





::███████ ███    ██      ██  ██████  ██    ██     ███    ███ ██    ██      ██████  ██████  ██████  ███████        ██  
::██      ████   ██      ██ ██    ██  ██  ██      ████  ████  ██  ██      ██      ██    ██ ██   ██ ██          ██  ██ 
::█████   ██ ██  ██      ██ ██    ██   ████       ██ ████ ██   ████       ██      ██    ██ ██   ██ █████           ██ 
::██      ██  ██ ██ ██   ██ ██    ██    ██        ██  ██  ██    ██        ██      ██    ██ ██   ██ ██          ▄█  ██ 
::███████ ██   ████  █████   ██████     ██        ██      ██    ██         ██████  ██████  ██████  ███████     ▀  ██  







echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                            ██╗      ██████╗  █████╗ ██████╗ ██╗███╗   ██╗ ██████╗          
echo                            ██║     ██╔═══██╗██╔══██╗██╔══██╗██║████╗  ██║██╔════╝          
echo                            ██║     ██║   ██║███████║██║  ██║██║██╔██╗ ██║██║  ███╗         
echo                            ███████╗╚██████╔╝██║  ██║██████╔╝██║██║ ╚████║╚██████╔╝██╗██╗██╗
echo                            ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.

setlocal enabledelayedexpansion
:loop
::                                           Network Tab
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| find "SSID" ^| findstr /v "BSSID"') do set ssid=%%a

::echo SSID Complete
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| find "Description"') do set description=%%a
::echo Description Complete
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| find "State"') do set state=%%a
::echo State Complete
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| find "Signal"') do set signal=%%a
::echo Signal Complete
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| find "Channel"') do set channel=%%a
::echo Channel Complete
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| find "Band"') do set band=%%a
::echo Band Complete


:: Retrieve Wi-Fi Password
for /f "tokens=2 delims=:" %%a in ('netsh wlan show profile name^="%profileName%" key^=clear ^| findstr /C:"Key Content"') do (
    set "pass=%%a"
)

set "pass=!pass!"  :: Remove leading space

::                                           Speed Tab
ping -n 3 8.8.8.8>%temp%\ping.txt
for /f "tokens=4 delims==" %%a in ('type %temp%\ping.txt ^| find "Average"') do set ping=%%a
::echo Average Ping Complete
for /f "tokens=10 delims= " %%a in ('type %temp%\ping.txt ^| find "Lost"') do set plost=%%a
::echo Lost Packets Complete
for /f "tokens=2 delims= " %%a in ('netstat -e ^| find "Bytes"') do set rbytes=%%a
::echo Bytes Complete
for /f "tokens=3 delims= " %%a in ('netstat -e ^| find "Bytes"') do set sbytes=%%a
::echo Sent Bytes Complete

::What is Shown
cls
echo.
echo  [36mNetwork:[0m
echo  [91m---------------[0m
echo  [93mName:[0m%ssid%
echo  [93mPassword:[0m!pass!
echo  [93mDescription:[0m%description%
echo  [93mState:[0m%state%
echo  [93mSignal Strenth:[0m%signal%
echo  [93mChannel:[0m%channel%
echo  [93mBand:[0m%band%
echo.
echo  [36mSpeed:[0m
echo  [91m---------------[0m
echo  [93mPing:[0m%ping%
echo  [93mPackets Lost:[0m %plost%
echo  [93mSent:[0m %rbytes%
echo  [93mReceived:[0m %sbytes%
goto  loop