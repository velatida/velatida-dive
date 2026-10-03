# Docker Compose

-----------

# Objetivo

En esta fase se ha incorporado Docker Compose al entorno de Velatida Dive para gestionar varios contenedores como una única aplicación.

Docker Compose permite definir servicios, redes y almacenamiento mediante un archivo de configuración, evitando tener que crear y configurar cada contenedor de forma independiente.

Se han trabajado los siguientes conceptos:

* Archivo `compose.yml`.
* Servicios.
* Imágenes.
* Contenedores.
* Redes.
* Volúmenes.
* Variables de configuración.
* Ciclo de vida de una aplicación Compose.

-----------

## Entorno

La práctica se ha realizado sobre el servidor:

- Servidor: dive-server
- Sistema operativo: Ubuntu
- Red interna: 192.168.10.0/24
- IP del servidor: 192.168.10.10

La configuración de Docker Compose se encuentra dentro del proyecto:

`/srv/asir/velatida-dive/`

-----------

## Arquitectura

Se ha creado una aplicación compuesta por dos servicios:

              Docker Compose
                    │
          ┌─────────┴─────────┐
          │                   │
      velatida-web        velatida-db
       Apache              MariaDB
          │                   │
          └─────────┬─────────┘
                    │
              velatida-net
                    │
             velatida-data

El servicio web proporciona la aplicación web de prueba y el servicio de base de datos proporciona almacenamiento para la aplicación.

Los dos servicios se encuentran conectados mediante una red Docker propia.

La información de la base de datos se almacena mediante un volumen persistente.

-----------

## Estructura

La configuración se organiza de la siguiente forma:

docker/
  compose/
    compose.yml

-----------

## Gestión de la aplicación

La aplicación completa se puede iniciar mediante:

`docker compose up -d`

El estado de los servicios se consulta mediante:

`docker compose ps`

Los registros se pueden consultar mediante:

`docker compose logs`

Para detener la aplicación:

`docker compose stop`

Y para eliminar los contenedores y la red creada por Compose:

`docker compose down`

El volumen de datos se mantiene independiente de los contenedores.

-----------

# Resultado

Se ha creado y administrado una aplicación de varios contenedores utilizando Docker Compose.

La configuración centralizada permite levantar, detener y eliminar los servicios de la aplicación mediante un único archivo y un conjunto reducido de comandos.
