#!/bin/bash
# Operaciones de archivos

echo "Operaciones de archivo"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMover el directorio backupScripts a otra ubicacion: $HOME"
mv backupScripts $HOME
