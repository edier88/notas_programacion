#!/bin/bash
# Programa de ejemplo que muestra como pasar argumentos
# Para pasar argumentos se debe poner en la terminal el comando: $ sh argumentos.sh "argumento1" "argumento2"

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es $nombreCurso dictado en el horario de $horarioCurso"
echo "El numero de parametros enviados es: $#"
echo "Los parametros enviados son: $*"
