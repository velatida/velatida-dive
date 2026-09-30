# Red interna

-----------

# Objetivo

Se configuró y documentó la red utilizada para conectar las máquinas virtuales de Velatida Dive y proporcionar comunicación entre los diferentes servicios.

-----------

# Arquitectura

La infraestructura utiliza una red interna de VirtualBox denominada:

`velatida-lan`

La red utiliza el rango:

`192.168.10.0/24`

La arquitectura es:

                 velatida-lan
                192.168.10.0/24
                       │
          ┌────────────┴────────────┐
          │                         │
     dive-server               dive-client
     192.168.10.10             192.168.10.20
          │                         │
       enp0s8                     enp0s8

-----------

# Direcciones IP

*dive-server*
- dive-server | enp0s3 | NAT | DHCP             
- dive-server | enp0s8 | velatida-lan | 192.168.10.10/24 

*dive-client*
- dive-client | enp0s3 | NAT | DHCP             
- dive-client | enp0s8 | velatida-lan | 192.168.10.20/24 

La interfaz interna no utiliza una puerta de enlace propia. 

El acceso a Internet se realiza mediante la interfaz NAT.

-----------

# Comprobación de conectividad

Desde `dive-server` se ha comprobado la comunicación con el cliente:

`ping -c 4 192.168.10.20`

Desde `dive-client` se ha comprobado la comunicación con el servidor:

`ping -c 4 192.168.10.10`

Las pruebas confirmaron la comunicación entre ambas máquinas.

-----------

# Servicios sobre la red interna

Los principales servicios de la infraestructura utilizan la red interna para comunicarse:

*SSH* 
dive-client → dive-server:22

*DNS*
dive-client → dive-server:53

*HTTP*
dive-client → dive-server:80

-----------

# Separación de redes

La utilización de dos interfaces permite separar las funciones:

enp0s3
   ↓
NAT
   ↓
Internet

enp0s8
   ↓
velatida-lan
   ↓
Comunicación interna

La interfaz NAT proporciona conectividad exterior, mientras que enp0s8 se utiliza para la comunicación entre las máquinas virtuales.

-----------

# Comprobación de interfaces

Las interfaces se han consultado mediante:

`ip addr`

También se han consultado las rutas mediante:

`ip route`

Estas herramientas permiten verificar las direcciones asignadas y las rutas disponibles.

-----------

# Aplicación en Velatida Dive

La red interna constituye la base de la infraestructura del laboratorio.

Sobre ella se ejecutan los servicios de administración remota, resolución de nombres y publicación web.

Esta arquitectura también sirve como base para las siguientes fases del proyecto, en las que se incorporarán Docker y Docker Compose.

-----------

# Resultado

Se dispone de una red interna aislada para la comunicación entre `dive-server` y `dive-client`.

Se mantenine una interfaz NAT independiente para la conectividad exterior.

La conectividad y las interfaces de ambas máquinas fueron verificadas mediante las herramientas de red de Linux.
