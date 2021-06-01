@echo off

REM Desarrolla un fichero por lotes que implemente el uso de una agenda telefónica.
REM Al ejecutar mostrará un menu
REM
REM a) Listar telefonos
REM b) Añadir un telefono
REM c) Buscar Persona
REM d) Buscar telefono
REM e) Borrar telefono
REM f) Vaciar agenda
REM g) salir
REM

:inicio
cls
echo a) Listar telefonos
echo b) Añadir un telefono
echo c) Buscar Persona
echo d) Buscar telefono
echo e) Borrar telefono
echo f) Vaciar agenda
echo g) salir
REM
REM El formato de la agenda será el siguiente:
REM
REM Luis Garcia 952345435
REM Antonio Lopex 954324562
REM
REM Toda la información se almacenará en un fichero llamado agenda.txt

choice /c abcdefg /m "Elige una opcion: "

REM Opcion a
IF %ERRORLEVEL% == 1 (
    type datos.txt
)

REM Opcion b
IF %ERRORLEVEL% == 2 (

    SET /P nombre="Introduce el nombre> "
    SET /P apellido="Introduce el apellido> "
    SET /P telefono="Introduce el telefono> "

    echo %nombre% %apellido% %telefono% >> datos.txt
)

REM Opcion c
IF %ERRORLEVEL% == 3 (

    SET /P buscaPersona = "A quien busca"
    find %buscaPersona% datos.txt | more +2

    IF %ERRORLEVEL% == 1 (
        echo "No existe una persona con ese nombre"
    )
)

REM Opcion d
IF %ERRORLEVEL% == 4 (

)

REM Opcion e
IF %ERRORLEVEL% == 5 (
    SET /P nombre = "Introduce ek nombre> "
    find /v "%nombre%" agenda.txt | more +2 > tmp.txts
    copy tmp.txt agenda.txt
)

REM Opcion f
IF %ERRORLEVEL% == 6 (
    del datos.txt
)

REM Opcion g
IF %ERRORLEVEL% == 7 (
    goto fin
)

REM ...
pause

:fin
echo "Hasta la próxima pringao"
