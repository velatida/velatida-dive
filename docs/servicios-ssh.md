# Servicios SSH

-----------

# Instalación de OpenSSH Server

Se ha instalado OpenSSH Server en `dive-server` para permitir la administración remota del servidor mediante el protocolo SSH.

El cliente OpenSSH ya estaba instalado en el sistema, pero era necesario instalar el componente servidor para aceptar conexiones entrantes.

-----------

# Gestión del servicio

Se ha utilizado `systemctl` para comprobar el estado del servicio SSH y verificar su configuración.

Se ha comprobado que:

- El servicio `ssh` se encuentra activo.
- El servicio está configurado para iniciarse automáticamente con el sistema.

La gestión de servicios mediante `systemctl` permite iniciar, detener, reiniciar y consultar el estado de los servicios del sistema.

-----------

# Registros del servicio

Se ha utilizado `journalctl` para consultar los registros generados por el servicio SSH.

Estos registros permiten comprobar la actividad del servicio y detectar posibles incidencias relacionadas con las conexiones y su funcionamiento.

-----------

# Administración remota

Se ha comprobado el acceso remoto desde `dive-client` hacia `dive-server` mediante SSH utilizando la dirección IP interna `192.168.10.10`.

La conexión se ha realizado correctamente y se ha verificado el acceso al servidor mediante `hostname`.

Esta configuración permite administrar `dive-server` de forma remota desde otro equipo de la red interna `velatida-lan`.
