#!/bin/bash
# Programa que exporta una variable a otro programa Bash

opcion=0
nombre=Marco

echo "Opcion: $opcion y Nombre $nombre"

# Se exporta a otro programa la variable "nombre"
export nombre

# Llama al siguiente Script que recuperara la variable:
sh variables_target.sh
