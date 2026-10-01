# Recursos del sistema

-----------

# Objetivo

Comprobar el estado de los principales recursos utilizados por el servidor y detectar situaciones que puedan afectar a su funcionamiento.

-----------

# CPU

Para consultar el uso del procesador se puede utilizar:

`top`

También se puede consultar información resumida mediante:

`uptime`

El comando `top` muestra los procesos que están utilizando recursos y permite observar la actividad de la CPU en tiempo real.

-----------

# Memoria RAM

Para consultar el uso de memoria:

`free -h`

La opción `-h` muestra los valores en un formato legible para el usuario.

La información permite diferenciar entre memoria total, utilizada, disponible y memoria utilizada como caché.

-----------

# Disco

Para comprobar el espacio disponible:

`df -h`

Para consultar específicamente el sistema de archivos raíz:

`df -h /`

El porcentaje de uso permite detectar si el almacenamiento se aproxima a su capacidad máxima.

En los scripts del proyecto se utiliza un umbral del 80 % para mostrar una advertencia.

-----------

# Tiempo de actividad

Para consultar desde cuándo está funcionando el sistema:

`uptime`

El resultado incluye el tiempo que lleva encendido el servidor y la carga del sistema.

-----------

# Interpretación

La monitorización de recursos permite detectar situaciones como:

* Consumo elevado de CPU.
* Falta de memoria disponible.
* Poco espacio libre en disco.
* Carga elevada del sistema.
* Funcionamiento prolongado sin reinicio.

-----------

# Resultado

La combinación de estas comprobaciones permite obtener una visión básica del estado de los recursos del servidor sin necesidad de utilizar herramientas externas.
