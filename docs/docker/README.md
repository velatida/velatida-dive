# Docker

-----------

# Objetivo

En esta fase se ha incorporado Docker al entorno de Velatida Dive con el objetivo de trabajar con contenedores y conocer los principales elementos de una plataforma de virtualización a nivel de sistema operativo.

Se han trabajado los conceptos de:

* Imágenes.
* Contenedores.
* Ciclo de vida de los contenedores.
* Dockerfile.
* Persistencia de datos.
* Redes Docker.
* Logs y estado de los contenedores.

La práctica se ha realizado sobre el servidor `dive-server`.

-----------

## Entorno

El servidor utilizado dispone de:

* Sistema operativo: Ubuntu Server.
* Nombre del servidor: `dive-server`.
* Red interna: `velatida-lan`.
* Dirección IP interna: `192.168.10.10`.
* Directorio del proyecto: `/srv/asir/velatida-dive`.

Docker utiliza su propia infraestructura de almacenamiento y redes, independiente de la red interna configurada para las máquinas virtuales.

-----------

## Estructura

La configuración y documentación relacionada con Docker se organiza en:

docs/
└── docker/
    ├── README.md
    ├── instalacion.md
    ├── contenedores.md
    ├── dockerfile.md
    ├── volumenes.md
    └── red.md

-----------

## Aplicación en Velatida Dive

Se ha creado un entorno Docker de prueba relacionado con el proyecto Velatida Dive.

La práctica incluye una imagen personalizada para un servicio web, almacenamiento persistente mediante un montaje y una red Docker propia para separar la comunicación de los contenedores.

-----------

# Resultado

Al finalizar la fase, Docker se encuentra instalado y operativo en `dive-server`.

Se han creado y administrado contenedores, se ha construido una imagen personalizada mediante un `Dockerfile`, se ha configurado almacenamiento persistente y se ha creado una red Docker propia.

Esta configuración sirve como base para la siguiente fase, en la que se trabajará con Docker Compose para gestionar varios servicios de forma conjunta.
