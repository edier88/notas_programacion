-- Query que busca en todas las tablas de una base de datos espec�fic (table_schema) si existe una o varias columnas en las tablas

SELECT * FROM information_schema.COLUMNS WHERE table_schema = 'ruav' AND COLUMN_NAME REGEXP 'orden_rms' 