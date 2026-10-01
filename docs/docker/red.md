# Redes Docker

-----------

# Objetivo

En esta parte de la fase se ha trabajado el funcionamiento de las redes Docker y se ha creado una red propia para los contenedores del proyecto.

Las redes Docker permiten controlar la comunicación entre contenedores y separar los servicios según las necesidades de la infraestructura.

-----------

# Redes disponibles

Las redes existentes en el sistema se pueden consultar mediante:

`sudo docker network ls`

Docker crea varias redes por defecto, entre ellas la red `bridge`.

-----------

# Creación de una red propia

Para Velatida Dive se ha creado una red independiente:

`sudo docker network create velatida-red`

Se ha comprobado su existencia mediante:

`sudo docker network ls`

-----------

# Contenedor conectado a la red

El contenedor web se ha ejecutado utilizando la red creada:

sudo docker run -d \
  --name velatida-web \
  --network velatida-red \
  -p 8080:80 \
  velatida-web

La configuración de la red se puede consultar mediante:

`sudo docker network inspect velatida-red`

-----------

# Comunicación entre contenedores

Una de las ventajas de utilizar una red Docker propia es que los contenedores conectados a ella pueden comunicarse utilizando sus nombres.

Por ejemplo, un segundo contenedor conectado a `velatida-red` puede acceder al servicio web utilizando:

`http://velatida-web`

Docker proporciona resolución de nombres para los contenedores conectados a la misma red.

-----------

# Red Docker y red de VirtualBox

La red Docker y la red interna de VirtualBox cumplen funciones diferentes.

La infraestructura de VirtualBox utiliza:

`velatida-lan | 192.168.10.0/24`

con:

- dive-server  → 192.168.10.10
- dive-client  → 192.168.10.20

Docker utiliza sus propias redes virtuales para conectar los contenedores.

La comunicación puede representarse de la siguiente forma:

                 VirtualBox
                     │
              velatida-lan
             192.168.10.0/24
                     │
                dive-server
              192.168.10.10
                     │
                  Docker
                     │
              velatida-red
                ┌────┴────┐
                │         │
         velatida-web   otros
          contenedor   servicios

-----------

# Resultado

Se ha creado una red Docker propia para Velatida Dive y se ha comprobado la conexión de contenedores a dicha red.

La práctica permite diferenciar la red interna de las máquinas virtuales de las redes virtuales utilizadas por Docker.
