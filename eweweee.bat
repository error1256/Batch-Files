    @echo off

    

    for /f "tokens=2" %%a in ('ipinfo --loc') do (

        set city=%%a

    )

    

    echo Your current city: %city%
pause