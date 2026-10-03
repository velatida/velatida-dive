# Velatida Dive

Proyecto práctico de Administración de Sistemas Informáticos en Red (ASIR) desarrollado alrededor de la infraestructura ficticia de un centro de buceo.

El proyecto está orientado a practicar administración de sistemas Linux, servicios, redes, automatización, copias de seguridad, contenedores y monitorización mediante un laboratorio virtual.

-----------

# Objetivos

* Administrar sistemas Linux.
* Gestionar usuarios, grupos y permisos.
* Gestionar archivos, procesos y servicios.
* Configurar servicios de red y comunicación entre sistemas.
* Crear scripts de automatización y administración con Bash.
* Implementar copias de seguridad.
* Trabajar con Docker y Docker Compose.
* Monitorizar recursos, procesos, servicios y red.
* Documentar la infraestructura y las configuraciones.
* Utilizar Git y GitHub para el control de versiones.

-----------

## Infraestructura

El laboratorio está compuesto por dos máquinas virtuales Linux:

* *dive-server* — servidor principal donde se ejecutan los servicios y componentes del proyecto.
* *dive-client* — máquina cliente utilizada para realizar pruebas y acceder a los servicios del servidor.

La comunicación entre ambas máquinas se realiza mediante una red interna configurada para el laboratorio.

-----------

## Estructura del repositorio

velatida-dive/
├── docs/
├── scripts/
├── docker/
└── README.md

### `docs/`

Documentación organizada por áreas:

* infraestructura
* usuarios, grupos y permisos
* archivos y directorios
* procesos y servicios
* Bash
* copias de seguridad
* servicios de red
* Docker
* Docker Compose
* monitorización

### `scripts/`

Scripts Bash desarrollados para tareas de administración, comprobación y diagnóstico del servidor.

### `docker/`

Archivos necesarios para la construcción de imágenes y la configuración de los servicios ejecutados mediante Docker.

--------------

## Contenido del proyecto

El proyecto se desarrolla por diferentes áreas de administración:

* *Linux:* administración básica del sistema, archivos, procesos y servicios.
* *Usuarios y permisos:* creación de usuarios y grupos, permisos y ACL.
* *Red:* configuración y comunicación entre las máquinas virtuales.
* *Servicios:* instalación, configuración y administración de servicios mediante `systemd`.
* *SSH:* administración remota del servidor.
* *Bash:* creación de scripts para automatización, comprobaciones y diagnóstico.
* *Backups:* creación, restauración y gestión de copias de seguridad.
* *Servicios de red:* configuración de servicios como SSH, DNS y web.
* *Docker:* creación y gestión de contenedores, imágenes, volúmenes y redes.
* *Docker Compose:* definición y gestión de aplicaciones compuestas por varios servicios.
* *Monitorización:* comprobación de recursos, procesos, servicios, red, logs y estado de Docker.

Cada área cuenta con su propia documentación dentro de `docs/`.

-----------

## Tecnologías utilizadas

* Linux — Ubuntu
* VirtualBox
* Bash
* Docker
* Docker Compose
* Git
* GitHub

-----------

## Estado

*En desarrollo* 🚧

El laboratorio continúa ampliándose y se incorporan nuevas prácticas, configuraciones y herramientas de administración de sistemas.

-----------

# Autor

Velatida

Proyecto personal desarrollado con fines de aprendizaje y portfolio.
