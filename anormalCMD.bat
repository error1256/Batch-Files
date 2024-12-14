@echo off
chcp 65001 >nul
title CMD.exe
:banner
echo.
echo                                          ██████╗███╗   ███╗██████╗ 
echo                                          ██╔════╝████╗ ████║██╔══██╗
echo                                          ██║     ██╔████╔██║██║  ██║
echo                                          ██║     ██║╚██╔╝██║██║  ██║
echo                                          ╚██████╗██║ ╚═╝ ██║██████╔╝
echo                                          ╚═════╝╚═╝     ╚═╝╚═════╝
echo. 
echo.
::SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS

:safety
CMD
goto start

:start
set /p input=""
echo.
echo %input%
pause
cls
goto banner