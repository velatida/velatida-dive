#!/bin/bash

errores=0

for servicio in "$@"; do
    estado=$(systemctl is-active "$servicio")

    if [ "$estado" = "active" ]; then
        echo "$servicio: funcionando"
    else
        echo "$servicio: no está funcionando"
        errores=1
    fi
done

exit "$errores"