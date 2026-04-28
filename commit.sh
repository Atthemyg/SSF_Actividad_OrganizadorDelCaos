#!/usr/bin/bash

#CONTROL DE ERRORES
set -euo pipefail

#GUARDA EL MENSAJE
MENSAJE="$*"

#EJECUTA LOS COMANDOS CON EL MENSAJE PROPORCIONADO
git add .
git commit -m "$*"
git push