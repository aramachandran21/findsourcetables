@echo off
setlocal disableDelayedExpansion
for /f delims^=^ eol^= %%A in ('type code.txt ^| findstr /I "join"') do (
    set "ln=%%A"
    setlocal enableDelayedExpansion
    set "ln=!ln:*:=!"
    if /i "!ln:~0,5!" equ "join" (set "ln=!ln:~5!") else set "ln=!ln:*join=!"
    for /f %%B in ("!ln!") do if "%%B" neq "" echo %%B >> intm1.txt
endlocal
)
if exist query3.bat goto RUNB
goto END
:RUNB
query3.bat
:END