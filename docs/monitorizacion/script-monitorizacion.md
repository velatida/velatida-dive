# Script de monitorización

-----------

# Objetivo

Integrar varias comprobaciones del estado del servidor en un único script Bash.

En lugar de crear un script independiente para cada recurso, se amplía el sistema de diagnóstico desarrollado durante la fase de Bash para incorporar información adicional del servidor.

-----------

## Ubicación

El script se encuentra en:

`/srv/asir/velatida-dive/scripts/diagnostico-servidor.sh`

-----------

## Información obtenida

El diagnóstico reúne información relacionada con:

* Nombre del servidor.
* Uso del disco.
* Estado de los servicios.
* Recursos del sistema.
* Tiempo de actividad.
* Interfaces de red.
* Contenedores Docker.

-----------

## Estructura

El script mantiene una estructura basada en funciones para separar las diferentes comprobaciones.

La lógica general es:

Inicio
  │
  ├── Mostrar información del servidor
  │
  ├── Comprobar recursos
  │
  ├── Comprobar servicios
  │
  ├── Comprobar red
  │
  ├── Comprobar Docker
  │
  └── Mostrar resultado

-----------

## Ejecución

Desde el directorio de scripts:

`./diagnostico-servidor.sh ssh cron docker`

El script puede recibir los servicios que se desean comprobar como argumentos.

-----------

## Código de salida

El script utiliza un código de salida para indicar el resultado de las comprobaciones:

- 0 → no se han detectado problemas
- 1 → se ha detectado algún problema

Puede comprobarse con:

`echo $?`

-----------

## Integración con Bash

Este script reúne diferentes conceptos practicados durante el proyecto:

* Variables.
* Argumentos.
* Sustitución de comandos.
* Condicionales.
* Bucles.
* Funciones.
* Comprobación de servicios.
* Códigos de salida.
* Comandos de Linux.
* Pipes y procesamiento de texto.

-----------

# Resultado

El script proporciona un diagnóstico general del servidor desde una única ejecución y sirve como herramienta básica de administración y monitorización para Velatida Dive.
