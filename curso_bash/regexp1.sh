#!/bin/bash
# Programa de evaluacion de expresiones regulares

Regex_ID='^[0-9]+$'
Regex_Country='^EC|CO|US$'
Regex_Birthdate='^19|20[0-9]{2}[1-12][1-31]$'

echo "Expresiones Regulares"
read -p "Ingrese numero de cedula: " cedula
read -p "Ingrese las iniciales de su pais (EC, CO, US): " country
read -p "Ingresar la fecha de nacimiento (yyyyMMdd): " birthdate

# Validacion cedula
if [[ $cedula =~ $Regex_ID ]]; then
	echo "Cedula $cedula valida"
else
	echo "Cedula $cedula invalida"
fi

# Validacion pais
if [[ $country =~ $Regex_Country ]]; then
	echo "Pais $country valido"
else
	echo "Pais $country invalido"
fi

# Validacion cumple
if [[ $birthdate =~ $Regex_Birthdate ]]; then
	echo "Cumple $birthdate valido"
else
	echo "Cumple $birthdate invalido"
fi
