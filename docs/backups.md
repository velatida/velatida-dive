# Backups

-----------

# Objetivo

Implementar un sistema básico de copias de seguridad para los datos del proyecto Velatida Dive, permitiendo crear, verificar y restaurar copias de forma controlada.

-----------

## Datos protegidos

El backup incluye el contenido del proyecto:

`/srv/asir/velatida-dive`

No se realizan copias de seguridad de los archivos del sistema operativo.

-----------

## Backup manual

Se utilizó tar para crear una copia comprimida:

`sudo tar -czf velatida-dive-backup.tar.gz /srv/asir/velatida-dive`

Para comprobar el contenido:

`sudo tar -tzf velatida-dive-backup.tar.gz`

-----------

## Restauración

Se realizó una prueba de restauración en un directorio temporal para no modificar el proyecto original:

`sudo mkdir -p /tmp/velatida-dive-restaurado`
`sudo tar -xzf /srv/asir/backups/velatida-dive-backup.tar.gz -C /tmp/velatida-dive-restaurado`

Se verificaron los archivos restaurados mediante `find`.

-----------

## Script de backup

Se creó:

`scripts/backup.sh`

El script:

- Crea una copia comprimida del proyecto;
- Genera un nombre con fecha y hora;
- Comprueba si la creación del backup se ha realizado correctamente;
- Elimina backups con más de 7 días.

-----------

## Automatización

El backup se ha programado mediante cron en el crontab de root:

`0 3 * * * /srv/asir/velatida-dive/scripts/backup.sh`

La tarea se ejecuta diariamente a las 03:00.

El servicio cron se encuentra activo y habilitado para iniciarse automáticamente.

-----------

## Retención

Los backups generados por el script se conservan durante 7 días.

Los archivos con más de 7 días se eliminan automáticamente mediante `find`.

-----------

## Limitación del laboratorio

Los backups se almacenan actualmente en:

`/srv/asir/backups`

Este directorio se encuentra en el mismo disco de datos que el proyecto. Por tanto, esta configuración sirve para practicar el proceso de backup y restauración, pero no protege frente a la pérdida física del disco.

En un entorno real sería recomendable almacenar las copias en otro dispositivo o ubicación.

-----------

# Resultado

Se ha implementado y probado un sistema básico de copias de seguridad con:

- creación de backups;
- compresión;
- verificación;
- restauración;
- nombres con fecha y hora;
- retención de copias;
- automatización mediante cron.
