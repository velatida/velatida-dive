# DNS

-----------

# Objetivo

Se ha configurado un servicio DNS interno para proporcionar resolución de nombres dentro de la red `velatida-lan`.

El objetivo es poder identificar los equipos mediante nombres en lugar de utilizar únicamente sus direcciones IP.

Ejemplo:

- dive-server → 192.168.10.10
- dive-client → 192.168.10.20

-----------

## Servicio utilizado

Se ha utilizado *BIND9* como servidor DNS.

BIND9 permite gestionar zonas DNS y diferentes tipos de registros para proporcionar resolución de nombres dentro de la infraestructura.

-----------

## Instalación

La instalación se ha realizado mediante:

`sudo apt update`
`sudo apt install bind9 bind9-utils dnsutils`

-----------

## Configuración

El servidor DNS se ha ejecutado en `dive-server`.

Se configurardo una zona interna para la infraestructura de Velatida Dive.

Se han añadido registros de tipo A para asociar los nombres de los equipos con sus direcciones IPv4.

La configuración incluye:

`dive-server    A    192.168.10.10`
`dive-client    A    192.168.10.20`

-----------

## Comprobación del servicio

El estado del servicio se ha comprobado mediante:

`systemctl status bind9`

También se han utilizado:

`systemctl is-active bind9`
`systemctl is-enabled bind9`

El servicio se encontraba activo y configurado para iniciarse automáticamente.

-----------

## Consultas DNS

Se han realizado consultas directamente al servidor DNS mediante la herramienta `dig`:

`dig @192.168.10.10 dive-server`

También se ha utilizado:

`nslookup dive-server 192.168.10.10`

Las consultas devolvieron la dirección configurada para el servidor.

-----------

## Resolución desde el cliente

Desde `dive-client` se ha comprobado la resolución del nombre:

`ping -c 4 dive-server`

El nombre `dive-server` ha sido resuelto mediante el servicio DNS interno a:

`192.168.10.10`

Esto ha permitido utilizar el nombre del servidor en lugar de depender directamente de su dirección IP.

-----------

## Logs

Los registros del servicio se consultaron mediante:

`journalctl -u bind9 --no-pager -n 20`

-----------

## Aplicación en Velatida Dive

El DNS interno facilita la administración de la infraestructura al permitir utilizar nombres de host en lugar de memorizar direcciones IP.

También proporciona una base para que otros servicios de la infraestructura puedan utilizar nombres en sus configuraciones.

-----------

# Resultado

Se ha configurado un servicio DNS interno mediante BIND9 y se comprobó la resolución de los equipos de la red `velatida-lan`.

Las consultas se verificaron tanto directamente contra el servidor DNS como desde el equipo cliente.
