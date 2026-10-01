# Dockerfile e imagen personalizada

-----------

# Objetivo

En esta parte de la fase se ha creado una imagen Docker propia para Velatida Dive utilizando un `Dockerfile`.

El objetivo es comprender cómo se construye una imagen personalizada a partir de una imagen base y cómo se utiliza posteriormente para crear un contenedor.

-----------

# Estructura

Se ha creado un directorio específico para la configuración:

docker/
└── web/
    ├── Dockerfile
    └── index.html

El `Dockerfile` define las instrucciones necesarias para construir la imagen.

-----------

# Dockerfile

Se ha utilizado una imagen base de Apache y se ha añadido una página web sencilla del proyecto:

FROM httpd:2.4

COPY index.html /usr/local/apache2/htdocs/index.html

EXPOSE 80

La imagen `httpd` proporciona el servidor web Apache.

La instrucción `COPY` incorpora la página `index.html` dentro de la imagen.

La instrucción `EXPOSE` documenta el puerto utilizado por el servicio web.

-----------

# Construcción de la imagen

La imagen personalizada se ha construido desde el directorio que contiene el `Dockerfile`:

`sudo docker build -t velatida-web .`

Una vez finalizada la construcción se ha comprobado que la imagen aparece entre las imágenes locales:

`sudo docker images`

-----------

# Creación del contenedor

A partir de la imagen se ha creado un contenedor:

sudo docker run -d \
  --name velatida-web \
  -p 8080:80 \
  velatida-web

El puerto `8080` del servidor se redirige al puerto `80` del contenedor.

Se ha comprobado que el contenedor está activo:

`sudo docker ps`

-----------

# Comprobación

El servicio se ha probado desde el propio servidor mediante:

`curl http://localhost:8080`

La respuesta corresponde a la página web creada para la práctica de Velatida Dive.

-----------

# Resultado

Se ha creado una imagen Docker personalizada a partir de un `Dockerfile` y se ha utilizado para ejecutar un servidor web Apache dentro de un contenedor.

Esta práctica permite trabajar el proceso completo:

Dockerfile
    ↓
docker build
    ↓
Imagen
    ↓
docker run
    ↓
Contenedor
    ↓
Servicio web

