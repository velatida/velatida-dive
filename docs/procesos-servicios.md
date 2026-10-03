# Procesos y servicios

Aprendizaje y administración de procesos y servicios en Linux.

-----------

## Procesos

Un proceso es una instancia de un programa que se encuentra en ejecución dentro del sistema.

Cada proceso dispone de un identificador único denominado PID (Process ID), que permite localizarlo y gestionarlo.

Durante esta fase se han utilizado diferentes herramientas para consultar y administrar procesos.

-----------

## Consulta de procesos

Se ha utilizado `ps` para consultar los procesos en ejecución.

También se ha utilizado `ps aux`

Esta variante permite consultar una lista más amplia de procesos junto con información como el usuario que los ejecuta, el PID y el consumo de recursos.

-----------

## Monitorización de procesos

Se han utilizado `top` y `htop` para observar los procesos del sistema de forma interactiva.

Estas herramientas permiten consultar información sobre:

* Procesos en ejecución.
* PID.
* Usuario propietario.
* Uso de CPU.
* Uso de memoria.
* Comando asociado al proceso.

`htop` proporciona una interfaz interactiva que facilita la inspección de los procesos.

-----------

## Búsqueda de procesos

Se ha utilizado `pgrep` para localizar procesos mediante su nombre y obtener su PID.

Por ejemplo: `pgrep cron`

El PID obtenido puede utilizarse posteriormente con otras herramientas de administración de procesos.

También se ha combinado `pgrep` con `ps` para consultar información específica de un proceso.

-----------

## Gestión de procesos

Se ha utilizado `sleep` para crear procesos de prueba en segundo plano.

Los procesos se han ejecutado utilizando `&` y posteriormente se han localizado mediante su PID.

Para finalizar un proceso se ha utilizado: `kill PID`

El comando `kill` envía una señal al proceso indicado. Por defecto, se utiliza `SIGTERM`, que solicita al proceso que finalice de forma ordenada.

Estas pruebas se han realizado sobre procesos de prueba para evitar afectar a servicios del sistema.

-----------

## Servicios

Los servicios del sistema son procesos o conjuntos de procesos gestionados por el sistema de inicialización y administración de servicios.

En Ubuntu se utiliza `systemd` para gestionar estos servicios.

La herramienta principal utilizada para su administración ha sido `systemctl`.

-----------

## Gestión de servicios

Se han practicado las principales operaciones de gestión de servicios:

- systemctl status servicio
- systemctl is-active servicio
- sudo systemctl start servicio
- sudo systemctl stop servicio
- sudo systemctl restart servicio
- systemctl is-enabled servicio

Estas operaciones permiten consultar el estado de un servicio, iniciarlo, detenerlo, reiniciarlo y comprobar si está configurado para iniciarse automáticamente con el sistema.

Durante las pruebas se ha utilizado el servicio `cron`.

-----------

## Inicio automático de servicios

Se ha comprobado la diferencia entre iniciar un servicio y configurarlo para el arranque del sistema.

`start` inicia el servicio en ese momento, mientras que `enable` configura el servicio para que se inicie automáticamente durante el arranque.

Esta diferencia permite controlar tanto el estado actual de un servicio como su comportamiento después de reiniciar el servidor.

-----------

## Registros del sistema

Se ha utilizado `journalctl` para consultar los registros generados por los servicios.

Por ejemplo:

`sudo journalctl -u cron --no-pager -n 20`

Los registros permiten analizar la actividad de un servicio y ayudan a identificar problemas durante la administración y resolución de incidencias.

-----------

## Procesos y servicios en Velatida Dive

Durante esta fase se ha establecido la diferencia entre la gestión de procesos y la gestión de servicios.

Las principales herramientas utilizadas han sido:

- `ps`          
- `top`, `htop` 
- `pgrep`       
- `kill`        
- `systemctl`   
- `journalctl`  

Estos conocimientos se utilizarán posteriormente en tareas de automatización, monitorización y administración de servicios dentro del proyecto.
