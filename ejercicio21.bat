@echo off

choice /c ABC /m = "Que desea hacer? "

IF %ERRORLEVEL% == 1 (
    dir %HOMEPATH%\Desktop
)

IF %ERRORLEVEL% == 2 (
    dir
)

IF %ERRORLEVEL% == 3 (
    dir C:\
)