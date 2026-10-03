# Bash

-----------

# Objetivo

Durante esta fase se ha trabajado Bash como herramienta de automatización y administración del sistema.

Se han desarrollado diferentes scripts para consultar información del servidor, comprobar el estado de servicios y detectar posibles incidencias.

El objetivo ha sido aplicar Bash a tareas habituales de administración, evitando realizar manualmente comprobaciones repetitivas.

-----------

## Conceptos trabajados

Durante esta fase se han practicado los siguientes conceptos:

* Variables.
* Argumentos y parámetros de entrada.
* Sustitución de comandos.
* Condicionales `if / else`.
* Comparaciones de texto y valores numéricos.
* Bucles `for`.
* Funciones.
* Códigos de salida.
* `exit`.
* Tuberías (`|`).
* Procesamiento de información mediante `awk`, `tail` y `tr`.
* Permisos de ejecución de scripts.

Estos conceptos se han aplicado sobre información y servicios reales del servidor `dive-server`.

-----------

## Scripts desarrollados

*estado-servidor.sh*

- Script básico utilizado para mostrar información identificativa del servidor.
- Permite introducir variables en un script y mostrar su contenido mediante Bash.

*info-servidor.sh*

- Script que recibe el nombre del servidor como argumento.
- Se ha utilizado el parámetro `$1` para acceder al primer argumento proporcionado durante la ejecución.

Ejemplo:

`./info-servidor.sh dive-server`

*comprobar-ssh.sh*

- Script destinado a comprobar el estado del servicio SSH.
- Se utiliza `systemctl is-active` para consultar el estado del servicio y una estructura condicional para determinar si está funcionando correctamente.

*comprobar-disco.sh*

- Script utilizado para comprobar el porcentaje de espacio utilizado en el sistema de archivos raíz.
- La información obtenida mediante `df` se procesa mediante una tubería de comandos para extraer únicamente el porcentaje de utilización.
- El resultado se compara con un límite establecido para detectar una posible falta de espacio.

*comprobar-servicios.sh*

- Script destinado a comprobar el estado de varios servicios.
- Los servicios se reciben como argumentos mediante `$@` y se recorren utilizando un bucle `for`.

Ejemplo:

`./comprobar-servicios.sh ssh cron`

El script informa del estado de cada servicio y devuelve un código de salida diferente cuando se detecta algún problema.

-----------

## Diagnóstico del servidor

Como aplicación final de los conceptos trabajados, se ha desarrollado `diagnostico-servidor.sh`.

Este script integra varias comprobaciones en una única herramienta:

* Identificación del servidor.
* Uso del espacio de disco.
* Estado de los servicios indicados.
* Resultado global de las comprobaciones.

Para organizar el código se han utilizado funciones independientes para cada tarea.

El script mantiene una variable de control de errores y devuelve un código de salida que permite determinar si todas las comprobaciones se han realizado correctamente.

Ejemplo:

`./diagnostico-servidor.sh ssh cron`

Cuando todas las comprobaciones son correctas, el script devuelve el código 0.

Si alguna comprobación falla, devuelve el código 1.

-----------

## Códigos de salida

Los códigos de salida permiten comunicar el resultado de la ejecución de un script a otros procesos o herramientas.

En el proyecto se ha utilizado:

- 0 → ejecución correcta.
- 1 → se ha detectado algún problema.

Este mecanismo permite utilizar posteriormente los scripts como parte de procesos de automatización y monitorización.

-----------

# Resultado

La fase de Bash ha permitido desarrollar scripts orientados a tareas reales de administración del servidor.

Los conocimientos adquiridos se utilizarán posteriormente en tareas de automatización, copias de seguridad, monitorización y gestión de servicios dentro del proyecto Velatida Dive.
