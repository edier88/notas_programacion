#!/bin/bash
# Ejemplo CASE

opcion=""

echo "Ejemplo sentencia CASE"
read -n1 -p "Ingrese opcion de la a-z: " opcion
echo -e "\n"

case $opcion in
	"a") echo -e "\nOperacion Guardar Archivo";;
	"b") echo "Operacion Eliminar Archivo";;
	[c-e]) echo "No esta implementada la operacion";;
	*) echo "Opcion incorrecta"
esac

