#!/usr/bin/bash

#CONTROL DE ERRORES
set -euo pipefail

#GUARDA LOS DATOS PORPORCIONADOS
ALTURA_CM=$1
PESO=$2

#REALIZA EL CÁLCULO
IMC=$(( PESO * 10000 / (ALTURA_CM * ALTURA_CM) ))

echo "IMC: $IMC"

#MUESTRA UN MENSAJE DEPENDIENDO DEL RESULTADO
if (( IMC < 18 )); then
  echo "Bajo peso"
elif (( IMC > 18 && IMC < 25 )); then
  echo "Peso normal"
elif (( IMC > 25 && IMC < 30 )); then
  echo "Sobrepeso"
else
  echo "Obesidad"
fi