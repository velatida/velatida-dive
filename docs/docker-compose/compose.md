# Archivo compose.yml

-----------

# Objetivo

Se ha creado un archivo `compose.yml` para definir la infraestructura de la aplicación Velatida Dive.

El archivo permite describir los servicios, redes y volúmenes necesarios para ejecutar la aplicación.

-----------

# Ubicación

El archivo se encuentra en:

`/srv/asir/velatida-dive/docker/compose/compose.yml`

-----------

# Configuración

El archivo `compose.yml` utilizado es:

services:

  web:
    build:
      context: ../web
    container_name: velatida-web
    ports:
      - "8080:80"
    depends_on:
      - db
    networks:
      - velatida-net

  db:
    image: mariadb:11
    container_name: velatida-db
    environment:
      MARIADB_ROOT_PASSWORD: velatida_root
      MARIADB_DATABASE: velatida
      MARIADB_USER: velatida
      MARIADB_PASSWORD: velatida
    volumes:
      - velatida-data:/var/lib/mysql
    networks:
      - velatida-net

volumes:
  velatida-data:

networks:
  velatida-net:

-----------

# Servicios

La aplicación está formada por dos servicios:

* `web`: servidor web Apache.
* `db`: servidor de base de datos MariaDB.

Cada servicio se define dentro de la sección `services`.

El servicio `web` utiliza el `Dockerfile` creado en la fase anterior mediante:

build:
  context: ../web

El puerto `8080` del servidor se conecta con el puerto `80` del contenedor:

ports:
  - "8080:80"

El servicio `db` utiliza la imagen `mariadb:11`.

Los dos servicios están conectados a la red `velatida-net`, lo que permite que puedan comunicarse entre ellos.

-----------

# Volumen

Se ha definido un volumen denominado `velatida-data`:

volumes:
  velatida-data:

El volumen se utiliza en el servicio de base de datos:

volumes:
  - velatida-data:/var/lib/mysql

De esta forma, los datos de MariaDB se mantienen almacenados aunque el contenedor se detenga o se elimine.

-----------

# Red

Se ha definido una red Docker propia:

networks:
  velatida-net:

Los servicios `web` y `db` están conectados a esta red.

Esto permite que los contenedores se comuniquen entre ellos utilizando el nombre del servicio, sin depender de las direcciones IP de los contenedores.

-----------

# Gestión de la aplicación

La aplicación completa se inicia mediante:

`docker compose up -d`

La opción `-d` permite ejecutar los servicios en segundo plano.

Para consultar el estado:

`docker compose ps`

Para consultar los registros:

`docker compose logs`

Para consultar únicamente los registros del servicio web:

`docker compose logs web`

Para detener los servicios:

`docker compose stop`

Para volver a iniciarlos:

`docker compose start`

Para detenerlos y eliminar los contenedores y la red:

`docker compose down`

El volumen de datos no se elimina con este comando de forma predeterminada.

Para eliminar también el volumen:

`docker compose down -v`

Este último comando elimina los datos almacenados en el volumen.

-----------

# Resultado

El archivo `compose.yml` permite definir la infraestructura de la aplicación de forma declarativa y gestionar todos sus servicios mediante Docker Compose.

La configuración incluye los servicios, el puerto de publicación, la red y el almacenamiento persistente utilizados por la aplicación.
