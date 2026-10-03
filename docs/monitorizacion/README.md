# Monitorización

-----------

# Objetivo

La monitorización permite comprobar de forma periódica el estado del servidor y detectar posibles problemas relacionados con los recursos del sistema, los procesos, los servicios, la red, los registros y los contenedores.

En Velatida Dive se utilizan herramientas propias de Linux para consultar el estado del sistema y se integran comprobaciones relacionadas con los servicios utilizados durante el proyecto.

-----------

## Aspectos monitorizados

La monitorización del servidor se divide en las siguientes áreas:

* Uso de CPU y memoria RAM.
* Uso del disco.
* Carga y tiempo de actividad del sistema.
* Procesos en ejecución.
* Estado de los servicios.
* Interfaces y conexiones de red.
* Registros del sistema.
* Estado de los contenedores Docker.

-----------

## Herramientas utilizadas

Entre las principales herramientas utilizadas se encuentran:

* `top`
* `free`
* `df`
* `uptime`
* `ps`
* `systemctl`
* `ss`
* `journalctl`
* `docker`

También se utiliza un script Bash para reunir varias comprobaciones en un único diagnóstico.

-----------

## Integración con Velatida Dive

La monitorización complementa el script `diagnostico-servidor.sh` desarrollado durante la fase de Bash.

De esta forma, el proyecto no solo permite consultar cada elemento individualmente, sino también realizar una comprobación general del estado del servidor.

-----------

# Resultado

La fase de monitorización permite obtener una visión general del estado del servidor y detectar de forma sencilla problemas relacionados con recursos, servicios, red, registros y Docker.
