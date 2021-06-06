@echo off

IF "%1" == "ayuda" (

  IF NOT "%2" == "" (
    help %2 > ayudaAuto.txt
  )

  ELSE (
    echo "No me has dado el comando (2º parametro)"
  )
)

ELSE (
  echo "No me has introducido el primer parametro correctamente"
)

pause