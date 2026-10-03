# Servicios de red

-----------

# Objetivo

En esta fase se han implementado y administrado diferentes servicios de red dentro de la infraestructura de Velatida Dive.

El servidor `dive-server` proporciona servicios a `dive-client`, que se comunica con él mediante la red interna *velatida-lan*.

-----------

## Infraestructura

La infraestructura está formada por dos máquinas virtuales conectadas mediante una red interna:

                 velatida-lan
                192.168.10.0/24
                       │
              ┌────────┴────────┐
              │                 │
        dive-server         dive-client
       192.168.10.10       192.168.10.20
              │                 │
              └────────┬────────┘
                       │
              Servicios de red

El servidor y el cliente disponen además de una interfaz NAT para acceder a Internet y realizar tareas de administración y actualización.

-----------

## Servicios implementados

Durante esta fase se ha trabajado con los siguientes servicios:

- SSH : Administración remota del servidor     
- DNS : Resolución de nombres dentro de la red 
- Web : Publicación de contenido mediante HTTP 
- Red interna : Comunicación entre servidor y cliente  

-----------

## SSH

Se ha instalado y configurado OpenSSH Server en `dive-server`.

El servicio permite administrar el servidor remotamente desde `dive-client` mediante una conexión SSH.

La conexión se realiza mediante la dirección IP interna del servidor:

`ssh raquel@192.168.10.10`

El servicio es gestionado mediante `systemd` y utiliza el puerto `TCP 22`.

-----------

## DNS

Se ha instalado BIND9 en `dive-server` y se ha configurado un servicio DNS interno para la red de Velatida Dive.

El servicio permite resolver los nombres de los equipos mediante sus direcciones IP internas.

- dive-server → 192.168.10.10
- dive-client → 192.168.10.20

Las consultas se han comprobado mediante herramientas como `dig` y `nslookup`.

-----------

## Servidor web

Se ha instalado Apache HTTP Server en `dive-server`.

El servicio publica contenido mediante HTTP y es accesible desde `dive-client` a través de la red interna.

La página web se aloja en:

`/var/www/html`

-----------

## Red interna

La comunicación entre las máquinas se realiza mediante la red interna `velatida-lan`.

Las direcciones utilizadas son:

- dive-server : 192.168.10.10/24
- dive-client : 192.168.10.20/24

Esta red permite que los servicios internos sean accesibles entre las máquinas virtuales sin depender de la interfaz NAT.

-----------

## Herramientas utilizadas

* Ubuntu Linux
* VirtualBox
* OpenSSH
* BIND9
* Apache HTTP Server
* systemd
* journalctl
* curl
* dig
* nslookup
* ping

-----------

# Resultado

Se ha implementado una infraestructura básica de servicios de red en la que `dive-server` proporciona servicios a `dive-client`.

Estos servicios constituyen la base para las siguientes fases del proyecto, especialmente Docker y Docker Compose.
