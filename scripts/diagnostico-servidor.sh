#!/bin/bash

errores=0

mostrar_servidor() {
    echo "=== DIAGNÓSTICO DEL SERVIDOR ==="
    echo
    echo "Servidor: $(hostname)"
    echo "Fecha: $(date '+%Y-%m-%d %H:%M:%S')"
    echo
}

comprobar_recursos() {
    echo "=== RECURSOS ==="

    echo
    echo "Carga del sistema:"
    uptime

    echo
    echo "Memoria RAM:"
    free -h

    echo
    echo "Disco:"
    df -h /

    uso=$(df -h / | tail -1 | awk '{print $5}' | tr -d '%')

    if [ "$uso" -ge 80 ]; then
        echo "ADVERTENCIA: el disco está casi lleno."
        errores=1
    else
        echo "Espacio de disco correcto."
    fi

    echo
}

comprobar_procesos() {
    echo "=== PROCESOS ==="
    echo
    ps aux --sort=-%cpu | head -6
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

comprobar_red() {
    echo "=== RED ==="

    echo
    echo "Interfaces:"
    ip -br addr

    echo
    echo "Puertos en escucha:"
    ss -tuln

    echo
}

comprobar_docker() {
    echo "=== DOCKER ==="

    if systemctl is-active --quiet docker; then
        echo "Docker: funcionando"

        echo
        echo "Contenedores:"
        docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
    else
        echo "Docker: no está funcionando"
        errores=1
    fi

    echo
}

mostrar_resultado() {
    echo "=== RESULTADO ==="

    if [ "$errores" -eq 0 ]; then
        echo "Servidor correcto."
    else
        echo "Se han detectado problemas."
    fi

    echo
}

mostrar_servidor
comprobar_recursos
comprobar_procesos
comprobar_servicios "$@"
comprobar_red
comprobar_docker
mostrar_resultado

exit "$errores"
