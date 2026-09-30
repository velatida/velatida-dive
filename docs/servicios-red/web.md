# Servidor web

-----------

# Objetivo

Se ha instalado y administrado un servidor web en `dive-server` para publicar contenido accesible desde `dive-client`.

Esta práctica permite trabajar con la instalación, administración y comprobación de un servicio HTTP en Linux.

-----------

# Servicio utilizado

Se ha utilizado *Apache HTTP Server*.

Apache se ejecuta como un servicio gestionado mediante `systemd`.

Utiliza el puerto `TCP 80` para las conexiones HTTP.

-----------

# Instalación

La instalación se ha realizado mediante:

`sudo apt update`
`sudo apt install apache2`

-----------

# Comprobación del servicio

Una vez instalado se ha comprobado su estado:

`systemctl status apache2`

También se han utilizado:

`systemctl is-active apache2`
`systemctl is-enabled apache2`

-----------

# Directorio web

El contenido web se ha alojado en:

`/var/www/html`

Se sustituyó la página predeterminada por una página propia de Velatida Dive para comprobar el funcionamiento del servicio.

-----------

# Comprobación local

Desde `dive-server` se ha comprobado el funcionamiento mediante:

`curl http://localhost`

También se ha utilizado:

`curl http://192.168.10.10`

Ambas comprobaciones permiten verificar que Apache responde correctamente.

-----------

# Comprobación desde el cliente

Desde `dive-client` se ha realizado una petición HTTP mediante:

`curl http://192.168.10.10`

También se ha comprobado el acceso mediante un navegador utilizando:

`http://192.168.10.10`

La página de Velatida Dive es accesible desde el cliente.

-----------

# Logs

Se han consultado los registros principales de Apache:

`/var/log/apache2/access.log`
`/var/log/apache2/error.log`

Los accesos se comprobaron mediante:

`sudo tail /var/log/apache2/access.log`

Los errores mediante:

`sudo tail /var/log/apache2/error.log`

-----------

# Administración del servicio

Se han practicado las principales operaciones de administración:

`sudo systemctl start apache2`
`sudo systemctl stop apache2`
`sudo systemctl restart apache2`

También se ha comprobado:

`systemctl is-enabled apache2`

-----------

# Aplicación en Velatida Dive

El servidor web proporciona un servicio accesible desde la red interna.

Esta configuración sirve además como base para trabajar posteriormente con servidores web ejecutados dentro de contenedores Docker.

-----------

# Resultado

Se instaló y configuró Apache en `dive-server` y se comprobó su funcionamiento tanto localmente como desde `dive-client`.

El servicio web quedó integrado en la infraestructura de red de Velatida Dive.
