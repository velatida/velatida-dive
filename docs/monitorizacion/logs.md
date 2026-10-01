# Logs del sistema

-----------

# Objetivo

Consultar los registros generados por el sistema y por los servicios para detectar errores y analizar incidencias.

-----------

# Journal de systemd

Ubuntu utiliza `systemd-journald` para recopilar numerosos registros del sistema.

Para consultar los últimos registros:

`journalctl`

Para consultar los registros de un servicio concreto:

`journalctl -u ssh`

Para mostrar únicamente las últimas entradas:

`journalctl -u ssh --no-pager -n 20`

-----------

# Seguimiento en tiempo real

Para seguir nuevos registros a medida que se generan:

`journalctl -f`

También puede utilizarse con un servicio concreto:

`journalctl -u ssh -f`

-----------

# Registros de Apache

Cuando Apache está instalado, sus registros se encuentran normalmente en:

`/var/log/apache2/`

Los principales archivos son:

- `access.log` registra las peticiones recibidas por el servidor web.
- `error.log` registra errores y otros mensajes relacionados con Apache.

-----------

# Registros de Docker

Los contenedores Docker también generan registros que pueden consultarse mediante:

`docker logs nombre_contenedor`

Ejemplo:

`docker logs velatida-web`

Para seguir los registros en tiempo real:

`docker logs -f velatida-web`

-----------

# Utilidad de los logs

Los registros permiten investigar problemas relacionados con:

* Servicios que no se inician.
* Errores de configuración.
* Conexiones SSH.
* Peticiones web.
* Contenedores.
* Errores del sistema.

-----------

# Resultado

La consulta de logs complementa la monitorización de recursos y servicios y proporciona información adicional cuando se detecta un problema.
