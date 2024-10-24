#!/bin/bash
# Validacion numero de caracteres y guardado de clave

option=o
backupName=""
clave=""

echo "Acepta el ingreso de informacion de un solo caracter"
read -n1 -p "Ingresar una opcion: " option
echo -e "\n"
echo "Acepta el ingreso de informacion de 10 caracteres"
read -n10 -p "Ingresar el nombre del archivo backup: " backupName
echo -e "\n"
echo "Opcion: $option, backupName: $backupName"
read -s -p "Clave: " passwort   # La -s permite que lo que se escriba no se vea en la pantalla (bueno cuando se escriben contrasenas)
echo "La clave es: $passwort $passwort2"
