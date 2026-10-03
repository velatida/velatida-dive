# Procesos y servicios

Aplicación de la monitorización al servidor Velatida Dive.

-----------

# Objetivo

Comprobar el estado de los procesos y servicios relevantes para el funcionamiento de Velatida Dive.

La monitorización permite detectar rápidamente si un servicio necesario ha dejado de funcionar o si existen procesos que requieren atención.

-----------

## Procesos

La actividad de los procesos puede consultarse mediante herramientas como `ps` y `top`.

En esta fase se utilizan principalmente para observar el estado actual del servidor y detectar procesos con un consumo elevado de recursos.

Para localizar un proceso concreto puede utilizarse:

`pgrep nombre_proceso`

-----------

## Servicios

Los servicios gestionados mediante `systemd` se comprueban mediante:

`systemctl is-active servicio`

También puede comprobarse si están configurados para iniciarse automáticamente:

`systemctl is-enabled servicio`

-----------

## Servicios monitorizados

Entre los servicios relevantes para Velatida Dive se encuentran:

- `ssh`
- `cron`
- `docker`

SSH permite la administración remota del servidor.

Cron se utiliza para ejecutar tareas programadas, como el sistema de backups.

Docker se utiliza para ejecutar los contenedores del proyecto.

-----------

## Comprobación

Los servicios pueden comprobarse individualmente:

`systemctl is-active ssh`
`systemctl is-active cron`
`systemctl is-active docker`

También pueden comprobarse mediante el script de diagnóstico:

`./diagnostico-servidor.sh ssh cron docker`

El script comprueba el estado de los servicios indicados y utiliza un código de salida para indicar el resultado:

- 0 → todas las comprobaciones son correctas
- 1 → se ha detectado algún problema

-----------

# Resultado

La monitorización de procesos y servicios permite comprobar de forma rápida el estado de los componentes necesarios para el funcionamiento del servidor.

Esta comprobación se integra con el diagnóstico general de Velatida Dive, que también permite revisar recursos, red y Docker.
