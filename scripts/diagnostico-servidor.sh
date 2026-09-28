#!/bin/bash

errores=0

mostrar_servidor() {
    echo "=== DIAGNÓSTICO DEL SERVIDOR ==="
    echo
    echo "Servidor: $(hostname)"
    echo
}

comprobar_disco() {
    uso=$(df -h / | tail -1 | awk '{print $5}' | tr -d '%')

    echo "=== DISCO ==="
    echo "Uso del disco: $uso%"

    if [ "$uso" -ge 80 ]; then
        echo "ADVERTENCIA: el disco está casi lleno."
        errores=1
    else
        echo "Espacio de disco correcto."
    fi

    echo
}

comprobar_servicios() {
    echo "=== SERVICIOS ==="

    for servicio in "$@"; do
        estado=$(systemctl is-active "$servicio")

        if [ "$estado" = "active" ]; then
            echo "$servicio: funcionando"
        else
            echo "$servicio: no está funcionando"
            errores=1
        fi
    done

    echo
}

mostrar_resultado() {
    echo "=== RESULTADO ==="

    if [ "$errores" -eq 0 ]; then
        echo "Servidor correcto."
    else
        echo "Se han detectado problemas."
    fi
}

mostrar_servidor
comprobar_disco
comprobar_servicios "$@"
mostrar_resultado

exit "$errores"
