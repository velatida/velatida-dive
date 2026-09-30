# SSH

-----------

# Objetivo

Se configuró un servicio SSH en `dive-server` para permitir la administración remota desde `dive-client`.

SSH permite acceder a una terminal del servidor de forma remota y segura, sin necesidad de trabajar directamente desde la consola de la máquina virtual.

-----------

# Servicio utilizado

Se ha utilizado OpenSSH Server.

El servicio se ejecuta en `dive-server` y está gestionado mediante `systemd`.

El puerto utilizado por defecto es `TCP 22`

-----------

# Instalación

El servidor SSH se instaló mediante:

`sudo apt update`
`sudo apt install openssh-server`

-----------

# Comprobación del servicio

Para consultar el estado:

`systemctl status ssh`

También se pueden utilizar:

`systemctl is-active ssh`
`systemctl is-enabled ssh`

El objetivo es comprobar que el servicio está activo y configurado para iniciarse automáticamente.

-----------

# Conexión desde el cliente

Desde `dive-client` se estableció una conexión con:

`ssh raquel@192.168.10.10`

Una vez establecida la conexión, se comprobó el nombre del equipo:

`hostname`

El resultado fue:

`dive-server`

Esto permitió verificar que la conexión remota se había establecido correctamente.

La sesión se cerró mediante:

`exit`

-----------

# Logs

Los registros relacionados con SSH se consultaron mediante:

`journalctl -u ssh --no-pager -n 20`

Estos registros permiten revisar los eventos relacionados con el servicio y detectar posibles problemas de conexión.

-----------

# Administración del servicio

Se han practicado las principales operaciones de administración mediante:

`sudo systemctl start ssh`
`sudo systemctl stop ssh`
`sudo systemctl restart ssh`

También se comprobado su configuración de inicio:

`systemctl is-enabled ssh`

-----------

# Aplicación en Velatida Dive

SSH se utiliza como mecanismo de administración remota del servidor.

Esta configuración permite administrar `dive-server` desde `dive-client` sin necesidad de acceder directamente a la consola de la máquina virtual.

-----------

# Resultado

Se instaló y configuró `OpenSSH Server` y se comprobó correctamente una conexión remota desde `dive-client` hacia `dive-server`.

También se verificaron el estado del servicio y sus registros mediante `systemctl` y `journalctl`.
