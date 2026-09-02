
-- Guarda un archivo en CSV de alguna tabla de la base de datos
-- El archivo debe estar en el servidor local y se debe especificar qué campos se van a insertar

-- Si hay error en phpMyAdmin (--secure-file-priv) se debe activar la directiva
-- Ejemplo: en "/etc/my.cnf" poner al final la directiva: 
-- secure_file_priv=/var/lib/mysql-files/

LOAD DATA INFILE 'csv_modems_DB.csv' INTO TABLE device_cpe
FIELDS TERMINATED BY ',' 
ENCLOSED BY '' 
LINES TERMINATED BY '\n'
(imei, fk_modelosDevices, marca, modelo, hostname, fk_universidad, creado_por, fecha_creacion, fk_atributos__estados);




-- Por si da error en codificacion, se recomienda agregar codificacion UTF8:

LOAD DATA INFILE 'csv_modems_DB_2.csv' INTO TABLE device_cpe CHARACTER SET UTF8
FIELDS TERMINATED BY ',' 
ENCLOSED BY '' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES -- Si se tiene la primera linea con el nombre de las columnas
(imei, fk_modelosDevices, marca, modelo, hostname, fk_universidad, creado_por, fecha_creacion, fk_atributos__estados);


LOAD DATA INFILE 'csv_modems_DB_2.csv' INTO TABLE device_cpe CHARACTER SET UTF8
FIELDS TERMINATED BY ',' 
ENCLOSED BY '' 
LINES TERMINATED BY '\n'
(imei, fk_modelosDevices, marca, modelo, hostname, fk_universidad, creado_por, fecha_creacion, fk_atributos__estados);





-- Por si en el CSV hay campos con la palabra 'NULL' o vacios y se necesita que en la tabla estos campos marquen NULL

LOAD DATA INFILE 'catalogo_redenciones.csv' INTO TABLE catalogo_redenciones CHARACTER SET UTF8
FIELDS TERMINATED BY ',' 
ENCLOSED BY '' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES 
(@id,@id_usuario,@fecha)
SET id = IF(@id = '', NULL, @id),
id_usuario = IF(@id_usuario = '', NULL, @id_usuario),
fecha = IF(@fecha = '', NULL, @fecha);




-- Muestra si la directiva "secure_file_priv" está activada y la ruta donde se alojan los archivos

SHOW VARIABLES LIKE "secure_file_priv";


