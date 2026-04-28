#!/usr/bin/bash

#CONTROL DE ERRORES
set -euo pipefail

#LEE LOS DATOS PROPORCIONADOS
while true
do
  read -p "Introduce contraseña: " PASS1
  read -p "Confirma contraseña: " PASS2

#MUESTRA UN MENSAJE DEPENDIENDO DE SI LOS DATOS COINCIDEN O NO
  if [ "$PASS1" = "$PASS2" ]; then
    echo "OK - Contraseña guardada"
    break
  else
    echo "ERROR - No coinciden. Inténtalo de nuevo."
  fi
done