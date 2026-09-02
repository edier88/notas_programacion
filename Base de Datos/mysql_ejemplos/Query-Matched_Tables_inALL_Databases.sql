--Lo siguiente encuentra una tabla en todas las bases de datos existentes en MySQL (reemplazar "searched table name" con el nombre de la tabla a buscar).

SELECT table_name,
       table_schema AS dbname
  FROM INFORMATION_SCHEMA.TABLES
  WHERE table_name='searched table name'
