# Almacenamiento y volúmenes Docker

-----------

# Objetivo

En esta parte de la fase se ha trabajado la persistencia de datos en Docker.

Los datos almacenados directamente dentro del sistema de archivos de un contenedor están asociados a su ciclo de vida. Para conservar información de forma independiente se puede utilizar almacenamiento persistente.

-----------

# Volúmenes Docker

Los volúmenes son gestionados por Docker y permiten almacenar datos fuera de la capa de escritura del contenedor.

Los volúmenes existentes se pueden consultar mediante:

`sudo docker volume ls`

Se ha creado un volumen para realizar una prueba de persistencia:

`sudo docker volume create velatida-datos`

La información del volumen se puede consultar mediante:

`sudo docker volume inspect velatida-datos`

-----------

# Uso del volumen

Se ha creado un contenedor utilizando el volumen:

sudo docker run -it \
  --name velatida-datos-test \
  -v velatida-datos:/datos \
  ubuntu

Dentro del contenedor se ha creado un archivo de prueba:

`echo "Datos persistentes de Velatida Dive" > /datos/prueba.txt`

Posteriormente se ha salido del contenedor.

El contenedor se ha eliminado:

`sudo docker rm velatida-datos-test`

Se ha creado un nuevo contenedor utilizando el mismo volumen:

sudo docker run -it \
  --name velatida-datos-test2 \
  -v velatida-datos:/datos \
  ubuntu

Al consultar el contenido:

`cat /datos/prueba.txt`

el archivo continúa disponible.

-----------

# Persistencia

La prueba demuestra que el volumen mantiene los datos aunque el contenedor que los utilizaba haya sido eliminado.

La relación puede representarse de la siguiente forma:

Contenedor 1 ───┐
                │
                ▼
         Volumen Docker
                │
                ▼
Contenedor 2 ───┘

El contenedor puede desaparecer y volver a crearse mientras los datos permanecen en el volumen.

-----------

# Resultado

Se ha comprobado el funcionamiento del almacenamiento persistente mediante volúmenes Docker.

La práctica permite diferenciar entre el ciclo de vida del contenedor y el almacenamiento de los datos que utiliza.
