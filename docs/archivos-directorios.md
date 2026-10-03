# Gestión de archivos y directorios

-----------

## Estructura de trabajo

Dentro del directorio principal del proyecto se ha establecido la siguiente estructura:

/srv/asir/velatida-dive/
├── datos/
├── documentos/
├── operativo/
└── informe.txt

Los directorios se utilizarán para organizar los diferentes recursos del proyecto y servirán como base para prácticas posteriores de administración y automatización.

-----------

## Gestión de archivos

Durante esta fase se han practicado las operaciones básicas de administración de archivos:

- Creación de archivos mediante `touch`.
- Copia mediante `cp`.
- Movimiento mediante `mv`.
- Renombrado mediante `mv`.
- Eliminación mediante `rm`.
- Consulta del contenido mediante `cat`.
- Listado de archivos y directorios mediante `ls`.

Se ha comprobado el comportamiento de estas operaciones sobre los recursos del proyecto.

-----------

## Gestión de directorios

Se han practicado operaciones sobre directorios:

- Creación mediante `mkdir`.
- Copia recursiva mediante `cp -r`.
- Movimiento mediante `mv`.
- Eliminación recursiva mediante `rm -r`.

Estas operaciones se han realizado sobre directorios de prueba sin modificar la estructura principal de permisos del proyecto.

-----------

## Búsqueda de archivos

Se ha utilizado `find` para localizar archivos dentro del proyecto según diferentes criterios.

Como prueba, se han localizado los archivos con extensión `.txt` dentro de:

`/srv/asir/velatida-dive`

Esto permite realizar búsquedas sobre estructuras de directorios y servirá posteriormente para tareas de mantenimiento, copias de seguridad y automatización.

-----------

## Propietarios y permisos

Durante las operaciones se ha comprobado que la forma de realizar una operación puede afectar al propietario y grupo de los archivos.

Por ejemplo, los archivos creados mediante operaciones ejecutadas con `sudo` pueden quedar asociados al usuario `root`.

También se ha comprobado que mover un archivo mediante `mv` no modifica su propietario ni sus permisos.

La gestión de propietarios y permisos se documenta de forma específica en `usuarios-permisos.md`.
