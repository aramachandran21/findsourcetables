@echo off
IF EXIST op.txt DEL /F op.txt
setlocal EnableDelayedExpansion
sort intm1.txt /o intm.txt
set "prevLine="
for /F "delims=" %%a in (intm.txt) do (
   if /i "%%a" neq "!prevLine!" (
        echo %%a >> op.txt
	set "prevLine=%%a"
         )
)