# Instalación de Docker

-----------

# Objetivo

Se ha instalado Docker Engine en el servidor `dive-server` y se ha comprobado que el servicio funciona correctamente.

Docker permite ejecutar aplicaciones y servicios dentro de contenedores aislados, utilizando el mismo sistema operativo del servidor.

-----------

# Instalación

Antes de realizar la instalación se ha actualizado la información de los paquetes:

`sudo apt update`

Se han instalado los paquetes necesarios para utilizar el repositorio de Docker:

`sudo apt install ca-certificates curl`

Posteriormente se ha configurado el repositorio oficial de Docker y se ha instalado Docker Engine junto con sus componentes.

Una vez finalizada la instalación se ha comprobado la versión:

`docker --version`

-----------

# Servicio Docker

Se ha comprobado el estado del servicio:

`sudo systemctl status docker`

El servicio aparece activo y funcionando.

También se ha comprobado que Docker se inicia automáticamente con el sistema:

`sudo systemctl is-enabled docker`

Y que se encuentra actualmente activo:

`sudo systemctl is-active docker`

-----------

# Prueba de funcionamiento

Para comprobar que Docker funciona correctamente se ha ejecutado un contenedor de prueba:

`sudo docker run hello-world`

El contenedor muestra el mensaje de confirmación proporcionado por la imagen `hello-world`.

Esta prueba permite comprobar que Docker puede descargar una imagen, crear un contenedor y ejecutarlo correctamente.

-----------

# Comprobaciones

Se han utilizado los siguientes comandos para consultar información básica:

- docker --version
- sudo systemctl status docker
- sudo systemctl is-enabled docker
- sudo systemctl is-active docker
- sudo docker images
- sudo docker ps -a

-----------

# Resultado

Docker Engine ha quedado instalado y operativo en `dive-server`.

El servicio se encuentra configurado para iniciarse automáticamente y se ha comprobado la ejecución correcta de un primer contenedor.
