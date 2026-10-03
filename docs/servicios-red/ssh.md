# SSH

-----------

# Objetivo

Se configuró un servicio SSH en `dive-server` para permitir la administración remota desde `dive-client`.

SSH permite acceder a una terminal del servidor de forma remota y segura, sin necesidad de trabajar directamente desde la consola de la máquina virtual.

-----------

## Servicio utilizado

Se ha utilizado OpenSSH Server.

El servicio se ejecuta en `dive-server` y está gestionado mediante `systemd`.

El puerto utilizado por defecto es `TCP 22`.

En el sistema se distingue entre:

- *OpenSSH Client*: permite iniciar conexiones SSH hacia otros equipos.
- *OpenSSH Server*: permite aceptar conexiones SSH entrantes.

En `dive-server` se instaló el componente servidor para permitir las conexiones desde `dive-client`.

-----------

## Instalación

El servidor SSH se instaló mediante:

`sudo apt update`
`sudo apt install openssh-server`

-----------

## Comprobación del servicio

Para consultar el estado completo del servicio:

`systemctl status ssh`

También se pueden utilizar:

`systemctl is-active ssh`

para comprobar si el servicio está actualmente activo, y:

`systemctl is-enabled ssh`

para comprobar si está configurado para iniciarse automáticamente con el sistema.

-----------

## Conexión desde el cliente

Desde `dive-client` se estableció una conexión con:

`ssh raquel@192.168.10.10`

Una vez establecida la conexión, se comprobó el nombre del equipo mediante:

`hostname`

El resultado fue:

`dive-server`

Esto permitió verificar que la conexión remota se había establecido correctamente.

La sesión se cerró mediante:

`exit`

-----------

## Logs

Los registros relacionados con SSH se consultaron mediante:

`journalctl -u ssh --no-pager -n 20`

Estos registros permiten revisar los eventos relacionados con el servicio y detectar posibles problemas de funcionamiento o conexión.

-----------

## Administración del servicio

Se han practicado las principales operaciones de administración mediante:

`sudo systemctl start ssh`
`sudo systemctl stop ssh`
`sudo systemctl restart ssh`

También se comprobó su configuración de inicio mediante:

`systemctl is-enabled ssh`

Estas operaciones permiten controlar el estado del servicio mediante `systemd`.

-----------

## Aplicación en Velatida Dive

SSH se utiliza como mecanismo de administración remota del servidor.

La configuración permite administrar `dive-server` desde `dive-client` sin necesidad de acceder directamente a la consola de la máquina virtual.

La comunicación se realiza a través de la red interna `velatida-lan`, utilizando la dirección `192.168.10.10`.

-----------

# Resultado

Se instaló y configuró `OpenSSH Server` en `dive-server` y se comprobó correctamente una conexión remota desde `dive-client`.

También se verificaron el estado, la configuración de inicio y los registros del servicio mediante `systemctl` y `journalctl`.
