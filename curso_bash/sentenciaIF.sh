#!/bin/bash
# Practica de IF

notaClase=0
edad=0

echo "Ejemplo sentencia IF-ELSE"
read -n1 -p "Indique cual es su nota (1-10): " notaClase
echo -e "\n"

if (( $notaClase >= 7 )); then
	echo "El alumno aprueba la materia"
else
	echo "El alumno reprueba la materia"
fi

read -p "Indique cual es su edad: " edad

if [ $edad -le 18 ]; then
	echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
	echo "La persona es adulta"
else
	echo "La persona es adulto mayor"
fi

