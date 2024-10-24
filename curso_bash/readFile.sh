#!/bin/bash
# Leer un archivo

echo "Leer un archivo"

cat $1

echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

# Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacios en blanco sean tomados como finales
echo -e "\nLeer archivos linea por linea usando while"
while IFS= read linea
do
	echo "$linea"
done < $1   # Se lee con <
