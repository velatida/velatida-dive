# Servicios Docker Compose

-----------

# Objetivo

En esta parte de la fase se han definido y administrado los servicios que forman la aplicación Velatida Dive.

La aplicación utiliza dos contenedores principales:

- velatida-web
- velatida-db

-----------

# Servicio web

El servicio web proporciona el servidor web Apache.

La imagen utilizada se construye mediante el Dockerfile creado en la fase anterior de Docker.

El contenedor se identifica como:

`velatida-web`

El servicio publica el `puerto 8080` del servidor y lo conecta con el `puerto 80` del contenedor.

La aplicación web se puede comprobar desde el servidor mediante:

`curl http://localhost:8080`

-----------

# Servicio de base de datos

El servicio `db` utiliza MariaDB.

El contenedor se identifica como:

`velatida-db`

La base de datos se utiliza como servicio independiente dentro de la aplicación.

No se ha publicado el `puerto 3306` directamente en el servidor, ya que la comunicación con MariaDB se realiza mediante la red interna de Docker Compose.

-----------

# Dependencia

El servicio web se ha definido con una dependencia respecto al servicio de base de datos:

depends_on:
  - db

Esto establece el orden de inicio de los servicios definido por Compose.

-----------

# Estado de los servicios

El estado de todos los servicios se consulta mediante:

`docker compose ps`

El resultado permite comprobar si los contenedores se encuentran activos.

-----------

# Registros

Los registros de todos los servicios se consultan mediante:

`docker compose logs`

También se pueden consultar individualmente:

`docker compose logs web`
`docker compose logs db`

-----------

# Reinicio

Los servicios pueden reiniciarse individualmente:

`docker compose restart web`

o:

`docker compose restart db`

También se puede reiniciar toda la aplicación:

`docker compose restart`

-----------

# Resultado

La aplicación se ha dividido en dos servicios independientes, cada uno con una función concreta.

Docker Compose permite administrar ambos servicios conjuntamente y también controlar cada uno de forma individual.
