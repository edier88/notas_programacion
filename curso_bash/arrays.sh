#!/bin/bash
# Arrays

array1=(1 2 3 4 5 6)
array2=(ana, maria, pedro, sandra)
array3=({A..Z} {10..20})

# Imprime todos los valores
echo "Arreglo de Numeros: ${array1[*]}"
echo "Arreglo de cadenas: ${array2[*]}"
echo "Arreglo de rangos: ${array3[*]}"

# Imprime tamano de los arrays
echo "Tamano de Array1: ${#array1[*]}"
echo "Tamano de Array2: ${#array2[*]}"
echo "Tamano de Array3: ${#array3[*]}"

# Imprime la posicion 3 de los arrays
echo "Array numeros, posicion 3: ${array1[3]}"
echo "Array strings, posicion 3: ${array2[3]}"
echo "Array rangos, posicion 3: ${array3[3]}"

# Agregar y eliminar valores en un array
array1[6]=20
unset array1[0]
echo "Array de numeros: ${array1[*]}"
echo "tamano array numeros: ${#array1[*]}"
