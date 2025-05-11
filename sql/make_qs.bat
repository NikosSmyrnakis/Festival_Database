@echo off
for /L %%i in (1,1,15) do (
    set "num=0%%i"
    setlocal enabledelayedexpansion
    set "num=!num:~-2!"

    echo Running Q!num!.sql...
    mysql -u root -ppassword db1 < Q!num!.sql > Q!num!_out.txt

    endlocal
)
echo Done.
pause