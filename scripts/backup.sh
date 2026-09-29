#!/bin/bash

origen="/srv/asir/velatida-dive"
destino="/srv/asir/backups"
fecha=$(date +"%Y-%m-%d_%H-%M-%S")
archivo="$destino/velatida-dive_$fecha.tar.gz"

if tar -czf "$archivo" "$origen"; then
    echo "Backup creado correctamente:"
    echo "$archivo"
else
    echo "Error al crear el backup."
    exit 1
fi

find "$destino" -type f -name "velatida-dive_*.tar.gz" -mtime +7 -delete

echo "Limpieza de backups antiguos completada."

exit 0