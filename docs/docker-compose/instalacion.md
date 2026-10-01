# Instalación de Docker Compose

-----------

# Objetivo

Se ha comprobado la disponibilidad de Docker Compose en `dive-server` y se ha verificado que puede utilizarse junto con Docker Engine.

-----------

# Comprobación


Docker Compose se utiliza actualmente como subcomando del propio cliente Docker:

`docker compose`

Se ha comprobado la versión instalada mediante:

`docker compose version`

El comando devuelve la versión de Docker Compose disponible en el sistema.

También se ha comprobado que Docker Engine se encuentra operativo:

`docker --version`

Y que el servicio está activo:

`sudo systemctl is-active docker`

-----------

# Funcionamiento

Docker Compose utiliza Docker Engine para crear y administrar los contenedores.

La relación entre ambos componentes es:

Docker Compose
      │
      ▼
Docker Engine
      │
 ┌────┼────┐
 ▼    ▼    ▼
Web   DB  Redes/volúmenes

Compose define la aplicación y Docker Engine se encarga de ejecutar los contenedores.

-----------

# Resultado

Se ha comprobado que Docker Compose está disponible en `dive-server` y puede utilizarse junto con Docker Engine para gestionar la aplicación Velatida Dive.
