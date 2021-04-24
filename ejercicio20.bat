@echo off

IF "%1" == "t" (

    IF "%2" == "" (
        echo "Sintaxis incorrecta"
        echo "Falta el nombre del fichero"
    )

    else (
        echo "Se va a mostrar el fichero"
        MORE %2
    )
)

IF "%1" == "d" (

    IF "%2" == "" (
        echo "Sintaxis incorrecta"
        echo "Falta el nombre del fichero"
    )

    else (
        echo "Se va a borrar el fichero"
        del %2
    )
)

ELSE (
    echo "Sintaxis incorrecta"
    echo "Ejercicio20 d | t <nombrefichero>"
)