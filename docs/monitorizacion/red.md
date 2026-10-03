# Monitorización de red

-----------

# Objetivo

Comprobar el estado de las interfaces de red, las direcciones configuradas y las conexiones activas del servidor.

-----------

## Interfaces de red

Para consultar las interfaces disponibles:

`ip addr`

En el servidor de Velatida Dive se utilizan dos interfaces:

- `enp0s3`: conexión NAT de VirtualBox.
- `enp0s8`: red interna `velatida-lan`.

La interfaz interna utiliza la dirección:

`192.168.10.10`

-----------

## Conectividad

La conectividad con el cliente puede comprobarse mediante:

`ping 192.168.10.20`

Esto permite comprobar que el servidor puede comunicarse con `dive-client` dentro de la red interna.

-----------

## Conexiones y puertos

Para consultar los puertos y conexiones de red:

`ss -tuln`

La opción `-t` muestra conexiones TCP, `-u` conexiones UDP, `-l` puertos en escucha y `-n` las direcciones y puertos sin resolver nombres.

También se puede consultar:

`ss -tulpn`

Esta variante permite relacionar los puertos en escucha con los procesos correspondientes cuando se dispone de los permisos necesarios.

-----------

## Servicios de red

Los principales servicios que pueden observarse en el servidor incluyen:

* SSH mediante el puerto 22.
* Apache mediante el puerto 80, cuando esté instalado y activo.
* Docker y sus redes internas.

Los puertos disponibles dependen de los servicios instalados y activos en cada momento.

-----------

# Resultado

La monitorización de red permite comprobar que las interfaces están configuradas correctamente, que existe conectividad con el cliente y que los servicios de red están escuchando en los puertos esperados.
