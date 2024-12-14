@echo off
chcp 65001 >nul
title Amazon ┐(︶▽︶)┌ Generator

:Normal
setlocal enabledelayedexpansion
set /p amount="[32mEnter How Much Keys To Generate >>[0m"
set length=15
:: Define the characters to use in the random string
set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

:: Loop to generate 10 different random strings
for /L %%n in (1,1,%amount%) do (
    :: Initialize the random string variable for each iteration
    set "randomString="

    :: Generate the random string
    for /L %%i in (1,1,%length%) do (
        set /a "randIndex=!random! %% 36"
        for %%j in (!randIndex!) do (
            set "randomString=!randomString!!chars:~%%j,1!"  :: Append character to the string
        )
    )
    :: Display the generated random string
	set /a number=number + 1
	if !number! EQU 1 cd keys
	echo.
	echo !number!: !randomString! 
    echo !randomString!>> NotUsedAmazonKeys.txt
	echo. >> NotUsedAmazonKeys.txt
)

endlocal
echo.
echo.
echo Complete
set /p input="[32mGo Again? (Y,N,L)[0m"
if %input% EQU Y cls & goto Normal
if %input% EQU N exit
if %input% EQU L cls & goto loop
if %input% EQU y cls & goto Normal
if %input% EQU n exit
if %input% EQU l cls & goto loop
pause






:loop
::echo TEST
::pause
setlocal enabledelayedexpansion

:: Specify the desired length of the random string
set length=15

:: Define the characters to use in the random string
set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

:: Loop to generate 10 different random strings

set "amount=1"
for /L %%n in (1,1,%amount%) do (
    :: Initialize the random string variable for each iteration
    set "randomString="

    :: Generate the random string
    for /L %%i in (1,1,%length%) do (
        set /a "randIndex=!random! %% 36"
        for %%j in (!randIndex!) do (
            set "randomString=!randomString!!chars:~%%j,1!"  :: Append character to the string
        )
    )
    :: Display the generated random string
	set /a number2=number2 + 1
	if !number2! EQU 1 cd keys
	
	echo.
	echo !number2!: !randomString! 
	echo !randomString! >> NotUsedAmazonKeys2.txt
)



goto loop

