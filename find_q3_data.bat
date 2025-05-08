@echo off
set count=0

:loop
set /a count+=1
echo ====================================
echo [Attempt #%count%] Restarting database...
mysql -u root -ppassword db1 < restart.sql

echo Running Python script...
python data_creator2304.py

echo Running query...
mysql -u root -ppassword db1 < Q03.sql > output.txt

REM Ελέγχει αν το output.txt είναι άδειο (μόνο με κενά/νέα γραμμή)
findstr /R /C:"[^ ]" output.txt >nul
if %ERRORLEVEL%==1 (
    echo Empty result on attempt #%count%, restarting loop...
    goto loop
) else (
    echo Q03 returned data on attempt #%count%. Done!
)
pause
