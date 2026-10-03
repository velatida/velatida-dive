# Imágenes y contenedores Docker

-----------

# Objetivo

En esta parte de la fase se ha trabajado con imágenes y contenedores Docker, diferenciando ambos conceptos y practicando las principales operaciones de administración.

-----------

## Imágenes

Una imagen contiene los elementos necesarios para crear un contenedor.

Las imágenes disponibles en el sistema se pueden consultar mediante:

`sudo docker images`

Para descargar una imagen sin crear un contenedor se utiliza:

`sudo docker pull nginx`

La imagen descargada queda disponible localmente para crear nuevos contenedores.

-----------

## Creación de un contenedor

Se ha creado un contenedor utilizando una imagen existente:

`sudo docker run -d --name velatida-nginx nginx`

La opción `-d` permite ejecutar el contenedor en segundo plano.

La opción `--name` permite asignarle un nombre identificativo.

El estado de los contenedores activos se consulta mediante:

`sudo docker ps`

Para consultar también los contenedores detenidos:

`sudo docker ps -a`

-----------

## Estado y logs

Se ha consultado la información de un contenedor mediante:

`sudo docker inspect velatida-nginx`

Los mensajes generados por el contenedor se pueden consultar mediante:

`sudo docker logs velatida-nginx`

También se puede comprobar el estado de un contenedor con:

`sudo docker ps`

-----------

## Parada y arranque

El contenedor se puede detener mediante:

`sudo docker stop velatida-nginx`

Posteriormente se puede volver a iniciar:

`sudo docker start velatida-nginx`

También se ha comprobado el reinicio del contenedor:

`sudo docker restart velatida-nginx`

-----------

## Eliminación

Cuando un contenedor ya no es necesario se puede eliminar:

`sudo docker rm velatida-nginx`

Las imágenes también se pueden eliminar cuando dejan de utilizarse:

`sudo docker rmi nginx`

Antes de eliminar una imagen se debe comprobar que no existen contenedores que dependan de ella.

-----------

## Ciclo de vida

Durante la práctica se ha trabajado el siguiente ciclo:

Imagen
  ↓
Creación del contenedor
  ↓
Ejecución
  ↓
Parada
  ↓
Arranque
  ↓
Reinicio
  ↓
Eliminación

-----------

# Resultado

Se han practicado las operaciones básicas de administración de imágenes y contenedores Docker.

También se ha comprobado la diferencia entre una imagen y un contenedor y se han utilizado los comandos necesarios para consultar y controlar su ciclo de vida.
