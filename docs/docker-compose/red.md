# Red Docker Compose

-----------

# Objetivo

En esta fase se ha configurado una red Docker para permitir la comunicación entre los servicios de la aplicación.

-----------

## Red utilizada

Se ha definido la red:

`velatida-net`

La red se encuentra declarada en compose.yml:

networks:
  velatida-net:

Los servicios web y db están conectados a esta red.

----------- 

## Comunicación entre servicios

Los contenedores conectados a la misma red pueden comunicarse utilizando los nombres de servicio.

El servicio web puede acceder al servicio de base de datos utilizando `db` como nombre de host.

No es necesario utilizar directamente la dirección IP del contenedor.

Docker proporciona resolución de nombres entre los contenedores conectados a la red.

-----------

## Consulta de la red

Las redes Docker disponibles se pueden consultar mediante:

`docker network ls`

La configuración de la red se puede consultar mediante:

`docker network inspect velatida-net`

Esto permite comprobar los contenedores conectados y la configuración de la red.

-----------

## Red de Docker Compose y red de VirtualBox

La red utilizada por Docker Compose es independiente de la red interna de VirtualBox.

La infraestructura queda organizada de la siguiente forma:

VirtualBox
│
└── velatida-lan
    │
    ├── dive-server
    │   └── 192.168.10.10
    │
    └── dive-client
        └── 192.168.10.20

dive-server
│
└── Docker
    │
    └── velatida-net
        │
        ├── velatida-web
        └── velatida-db

La red velatida-lan permite la comunicación entre las máquinas virtuales, mientras que velatida-net permite la comunicación entre los contenedores de la aplicación.

-----------

# Resultado

Se ha configurado una red Docker específica para la aplicación y se ha comprobado su utilización por los servicios de Velatida Dive.

La comunicación mediante nombres de servicio evita depender de las direcciones IP internas de los contenedores.