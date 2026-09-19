# Infraestructura

----------- 

# Entorno de laboratorio

El proyecto se desarrolla mediante dos máquinas virtuales Linux en VirtualBox:

- `dive-server` | Servidor principal.
- `dive-client` | Máquina cliente utilizada para realizar pruebas y acceder a los servicios.

Las máquinas virtuales forman parte del laboratorio de ejecución del proyecto. 
El código, los scripts y la documentación se gestionan desde el equipo host mediante Git y GitHub.
Se han establecido nombres de host para identificar las máquinas dentro del proyecto.

-----------

# Red

Se han configurado dos interfaces de red en cada máquina:

*NAT*
- Proporciona acceso a Internet.

*Red interna*
- Permite la comunicación entre las máquinas del proyecto.
- Se denomina: `velatida-lan`.
- Utiliza la red `192.168.10.0/24`.


-----------

# Direcciones IP

*dive-server*
- dive-server | enp0s3 | NAT | DHCP             
- dive-server | enp0s8 | velatida-lan | 192.168.10.10/24 

*dive-client*
- dive-client | enp0s3 | NAT | DHCP             
- dive-client | enp0s8 | velatida-lan | 192.168.10.20/24 

La interfaz de red interna utiliza direcciones IP estáticas. 
No se ha configurado gateway ni DNS en esta interfaz, ya que el acceso a Internet se realiza mediante la interfaz NAT.
La comunicación entre ambas máquinas se ha comprobado mediante `ping`.

-----------

# Almacenamiento 

El servidor dispone de un disco virtual de `30 GB`, independiente del disco original de la máquina virtual.

El disco se ha formateado en `Ext4` y se ha montado en `/srv/asir`.

Este espacio se utilizará posteriormente para almacenar datos, scripts, copias de seguridad, servicios y otros recursos relacionados con el proyecto.

-----------

# Arquitectura inicial 

                    VELATIDA DIVE
                          │
             ┌────────────┴────────────┐
             │                         │
        dive-server               dive-client
       192.168.10.10             192.168.10.20
             │                         │
             └────── velatida-lan ─────┘
                    192.168.10.0/24
