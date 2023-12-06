#!/bin/bash

# Verifica que se proporcione el nombre de usuario como parámetro
if [ -z "$1" ]; then
   echo "Por favor, proporciona el nombre de usuario de GitHub como parámetro."
   exit 1
fi

# Nombre de usuario de GitHub
username=$1

# Token de acceso personal
token="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"

# Clonar el repositorio
git clone https://github.com/$username/nombre_del_repositorio.gif

# Agregar los archivos de ejercicios
cd /home/pcboot/Documentos/t1a2
cp /home/pcboot/Documentos/t1a2/*.sh .

# hacer commit y push
git add .
git commit -m "Agregar archivos .sh de la actividad"
git push origin master

