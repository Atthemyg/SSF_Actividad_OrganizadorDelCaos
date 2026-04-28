#!/usr/bin/bash

#CONTROL DE ERRORES
set -euo pipefail

#LEE LOS DATOS PROPORCIONADOS
echo -n "Base: "
read BASE

echo -n "Altura: "
read ALTURA

#HACE EL CÁLCULO
AREA=$(( BASE * ALTURA / 2 ))

echo "Área: $AREA"
echo

#REALIZA EL DIBUJO
for (( i=1; i<=ALTURA; i++ ))
do
  for (( j=1; j<=i; j++ ))
  do
    echo -n "*"
  done
  echo
done