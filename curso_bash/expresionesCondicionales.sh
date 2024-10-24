#!/bin/bash
# Ejemplo condicionales

edad=0
pais=""
pathFile=""

echo "Ejemplo condicionales"

read -p "Ingrese edad: " edad
read -p "Ingrese pais: " pais
read -p "Ingrese path de archivo: " path

echo -e "\nExpresiones condicionales con numeros"

if [ $edad -lt 10 ]; then
	echo "La persona es un nino"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
	echo "La persona es un adolescente"
else
	echo "La persona es mayor de edad"
fi

if [ $pais = "EEUU" ]; then
	echo "La persona es gringa"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
	echo "La persona es de sur america"
else
	echo "Se desconoce la nacionalidad"
fi

echo -e "\nExpresiones condicionales con archivos"

if [ -d $pathFile ]; then # -d evalua si existe un directorio
	echo "El directorio $pathFile existe"
else
	echo "El directorio $pathFile no existe"
fi

