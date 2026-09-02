
CREATE DATABASE <database_name> OWNER = <db_user> TABLESPACE = <tablespace_name>

-- "tablespace" es un directorio en donde se puede guardar la base de datos, esto es para guardarla en una particion o directorio diferente del predeterminado


-- Con COLLATION y ENCODING (CHARACTER SET)

CREATE DATABASE <database_name> WITH ENCODING 'UTF8' LC_COLLATE='es_CO.utf8' LC_CTYPE='es_CO.utf8' TEMPLATE=template0;

CREATE DATABASE <database_name> WITH ENCODING 'LATIN1' LC_COLLATE='es_CO' LC_CTYPE='es_CO' TEMPLATE=template0;

-- Se recomienda usar UTF8 como encoding. PostgreSQL siempre nos obliga a usar un template. Con el template0 bastará


FUENTES:
https://www.postgresql.org/docs/9.2/multibyte.html
https://blog.dbi-services.com/collations-in-postgresql-basics/

