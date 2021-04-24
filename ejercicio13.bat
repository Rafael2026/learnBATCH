@echo off

IF EXIST %1 (

  IF EXIST %2 (
    copy %1 %2
  )

  ELSE (
    echo "El fichero %1 no existe"
  )
)

ELSE (
  echo "El fichero %2 no existe"
)
