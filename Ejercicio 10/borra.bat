@echo off

IF EXIST %1 (

  IF EXIST %2 (
    del %1, %2
  )

  ELSE (
    echo No se puede borrar el fichero, porque %2 no existe
  )
)

ELSE (
  echo No se puede borrar el fichero, porque %1 no existe
)
