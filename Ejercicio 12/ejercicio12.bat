@echo off

REM Borra todo el contenido de la consola
cls

REM La ejecución se va a salta
goto salta

REM estod dos comandos no se ejecutan porque tenemos goto salta anteriormente
echo que pasa aqui
cls

REM :salta
:salta

REM La ejecución se va a fin
goto fin

REM :fin
:fin