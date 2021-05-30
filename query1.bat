
@echo off
setlocal disableDelayedExpansion
IF EXIST intm.txt DEL /F intm.txt
IF EXIST intm1.txt DEL /F intm1.txt
for /f delims^=^ eol^= %%A in ('type code.txt ^| findstr /I "from"') do (
    set "ln=%%A"
    setlocal enableDelayedExpansion
    set "ln=!ln:*:=!"
    if /i "!ln:~0,5!" equ "from" (set "ln=!ln:~5!") else set "ln=!ln:*from=!"
    for /f %%B in ("!ln!") do if "%%B" neq "" echo %%B >> intm1.txt
endlocal
)
if exist query2.bat goto RUNB
goto END
:RUNB
query2.bat
:END