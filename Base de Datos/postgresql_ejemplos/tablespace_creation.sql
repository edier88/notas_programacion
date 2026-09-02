-- "tablespace" es un directorio en donde se puede guardar la base de datos, esto es para guardarla en una particion o directorio diferente del predeterminado

CREATE TABLESPACE <tablespace_name> LOCATION '/my/directory'

-- No olvidar que el directorio debe pertenecer al usuario "postgres" y al grupo "postgres" y debe tener los permisos de lectura, escritura y ejecución
