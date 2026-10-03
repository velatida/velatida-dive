# Usuarios, grupos y permisos

-----------

## Usuarios  

El servidor `dive-server` utiliza tres usuarios con diferentes niveles de responsabilidad:

- `raquel` : Administradora del sistema, con permisos de `sudo`.                 
- `diveadmin` : Usuario destinado a la administración de los recursos del proyecto. 
- `diveuser` : Usuario destinado a tareas operativas con permisos limitados.     

-----------

## Grupos

Se han creado dos grupos específicos para gestionar los permisos del proyecto:

- `dive-admin` : Agrupa a los usuarios con permisos de administración dentro del proyecto. 
- `dive-users` : Agrupa a los usuarios con permisos operativos.                            

-----------

## Distribución

La distribución actual es:

Usuarios
├── raquel
│   └── administradora del sistema (sudo)
├── diveadmin
│   └── grupo: dive-admin
└── diveuser
    └── grupo: dive-users

La cuenta `raquel` mantiene la administración completa del sistema mediante `sudo`, mientras que `diveadmin` y `diveuser` se utilizarán para comprobar y aplicar diferentes niveles de permisos sobre los recursos de Velatida Dive.

-----------

## Propietarios y permisos

Se ha creado el directorio principal del proyecto:

`/srv/asir/velatida-dive`

Su configuración actual es:

- Propietario: root
- Grupo: dive-admin
- Permisos: rwxrwx---

Esto permite que `root` y los miembros de `dive-admin` trabajen con el directorio, mientras que el resto de usuarios no tiene acceso.

Para permitir que `diveuser` pueda alcanzar únicamente los recursos destinados a tareas operativas, se han utilizado permisos ACL de ejecución `(x)` sobre los directorios padre.

-----------

## Área operativa

Dentro del proyecto se ha creado el directorio:

`/srv/asir/velatida-dive/operativo`

Su configuración es:

- Propietario: root
- Grupo: dive-users
- Permisos: rwxrwx---

Los miembros de `dive-users` pueden trabajar dentro de este directorio, mientras que el resto de usuarios no tiene acceso.

-----------

## ACL

Se han utilizado ACL para permitir que `diveuser` pueda atravesar los directorios necesarios para llegar hasta operativo, sin concederle acceso general al contenido del proyecto.

Se ha aplicado el permiso `(x)` a `diveuser` sobre:

`/srv/asir`
`/srv/asir/velatida-dive`

Este permiso permite atravesar los directorios, pero no listar ni modificar su contenido.

De esta forma, `diveuser` puede acceder directamente a:

`/srv/asir/velatida-dive/operativo`

donde dispone de permisos de lectura, escritura y ejecución mediante el grupo `dive-users`.

-----------

## Gestión de archivos

Dentro del directorio principal se ha creado `informe.txt`.

Configuración:

- Propietario: diveadmin
- Grupo: dive-admin
- Permisos: rw-rw-r--

Se ha comprobado que `diveadmin` puede modificar el archivo como propietario.

Dentro del área operativa se ha creado `prueba.txt` utilizando el usuario `diveuser`.

Se ha comprobado que `diveuser` puede crear y leer archivos dentro de operativo.

-----------

## Pruebas de acceso

Se han realizado diferentes pruebas para comprobar la aplicación de los permisos:

- `diveadmin` puede acceder a /srv/asir/velatida-dive.
- `diveuser` no puede acceder libremente al contenido general de /srv/asir/velatida-dive.
- `diveuser` puede atravesar los directorios necesarios mediante ACL.
- `diveuser` puede acceder a /srv/asir/velatida-dive/operativo.
- `diveuser` puede crear y leer archivos dentro de operativo.
- `diveadmin` no puede acceder a operativo, ya que no pertenece al grupo dive-users.
- Se ha comprobado que los permisos de los directorios padre condicionan el acceso a los recursos contenidos en ellos.

