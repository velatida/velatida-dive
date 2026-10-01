# Procesos y servicios

-----------

# Objetivo

Comprobar que los procesos y servicios necesarios para Velatida Dive están funcionando correctamente.

-----------

# Procesos

Para consultar los procesos activos:

`ps aux`

También se puede utilizar:

`top`

Para localizar un proceso concreto:

`pgrep nombre_proceso`

Cada proceso tiene un identificador denominado PID, que permite identificarlo y gestionarlo.

-----------

# Servicios

El estado de los servicios administrados mediante systemd se puede consultar con:

`systemctl status ssh`

Para realizar una comprobación más sencilla:

`systemctl is-active ssh`

También se puede comprobar si un servicio está configurado para iniciarse automáticamente:

`systemctl is-enabled ssh`

-----------

# Servicios de Velatida Dive

Entre los servicios relevantes del proyecto se encuentran:

* `ssh`
* `cron`
* `docker`

El servicio SSH permite la administración remota del servidor.

Cron se utiliza para ejecutar tareas programadas, como el sistema de backups.

Docker se utiliza para ejecutar los contenedores del proyecto.

-----------

# Comprobación

Los servicios pueden comprobarse individualmente:

`systemctl is-active ssh`
`systemctl is-active cron`
`systemctl is-active docker`

También pueden comprobarse mediante el script:

`./comprobar-servicios.sh ssh cron docker`

El script devuelve código de salida `0` cuando todos los servicios indicados están funcionando y `1` cuando detecta algún problema.

-----------

# Resultado

La comprobación de procesos y servicios permite detectar rápidamente si algún componente necesario del servidor ha dejado de funcionar.
