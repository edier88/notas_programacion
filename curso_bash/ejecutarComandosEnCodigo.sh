#!/bin/bash
# Programa para probar la ejecucion de comandos de Linux dentro del Script de Bash

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo -e "\n"
echo "Tu ubicacion actual en el servidor es: "
echo $ubicacionActual
echo "Informacion del Kernel: "
echo -e "$infoKernel \n"
