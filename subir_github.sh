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

git config --global user.email "int.marisma@gmail.com"
git config --global user.name "intmarisma"

cd /home/pcboot/Documentos/prueba
cd /home/pcboot/documentos/prueba/*.sh .

git add .
git commit -m "Agregar archivos .sh de la actividad"
git push -u origin master

git remote set-url origin https://github.com/$username/prueba.gif
git push -u origin master

