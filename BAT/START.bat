set mypath=%cd%
start %mypath%\dynsim.exe -t %mypath%\cmd.txt > output.trace 2>&1

:LOOP
tasklist /FI "IMAGENAME eq dynsim.exe" 2>NUL | find /I /N "dynsim.exe">NUL
if not "%ERRORLEVEL%"=="0" GOTO END
call "%mypath%\TEMP.bat"
GOTO LOOP

:END 


exit