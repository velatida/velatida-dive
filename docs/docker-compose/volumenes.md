# Volúmenes Docker Compose

-----------

# Objetivo

En esta fase se ha utilizado un volumen Docker para mantener los datos del servicio de base de datos independientemente del ciclo de vida de su contenedor.

-----------

# Volumen utilizado

Se ha definido el volumen:

`velatida-data`

El volumen se encuentra declarado en `compose.yml`:

volumes:
  velatida-data:

El servicio db utiliza este volumen mediante:

volumes:
  - velatida-data:/var/lib/mysql

Los datos de MariaDB se almacenan dentro del volumen en:

`/var/lib/mysql`

-----------

# Persistencia

El volumen permite separar los datos del ciclo de vida del contenedor.

La relación utilizada es:

velatida-db
     │
     ▼
velatida-data
     │
     ▼
Datos de MariaDB

Si el contenedor se elimina y posteriormente se vuelve a crear utilizando el mismo volumen, los datos almacenados permanecen disponibles.

----------- 

# Consulta

Los volúmenes disponibles se pueden consultar mediante:

`docker volume ls`

La información del volumen se puede consultar mediante:

`docker volume inspect velatida-data`

-----------

# Eliminación de la aplicación

La aplicación se puede detener y eliminar mediante:

`docker compose down`

El volumen no se elimina con este comando de forma predeterminada.

Si también se desea eliminar el volumen:

`docker compose down -v`

Este comando elimina los datos almacenados en el volumen.

-----------

# Resultado

Se ha configurado almacenamiento persistente para MariaDB mediante un volumen Docker gestionado por Compose.

La configuración permite recrear el contenedor de base de datos sin perder los datos almacenados mientras el volumen se conserve.