
-- Exporta la consulta a un archivo en CSV
-- El archivo se guarda en el servidor en la ruta donde se especifique y donde esté habilidata para tal efecto

-- Si hay error en phpMyAdmin (--secure-file-priv) se debe activar la directiva
-- Ejemplo: en "/etc/my.cnf" poner al final la directiva: 
-- secure_file_priv=/var/lib/mysql-files/

SELECT u.sede, nc.*, a.nombre_estado AS 'estado producto', d.hostname, d.imei, ma.nameDevice AS 'Marca', mo.nameModeloDevice AS 'Modelo', d.fk_atributos__estados AS 'estado dispositivo' 

INTO OUTFILE '/var/lib/mysql-files/prueba.csv'
FIELDS TERMINATED BY ';' 
ENCLOSED BY '\"' 
LINES TERMINATED BY '\r\n'

FROM producto_navega_conmigo nc
JOIN productos_vs_universidad pu ON nc.fk_productos_vs_universidad = pu.id_productos_vs_universidad
JOIN universidad u ON pu.fk_universidad = u.id_universidad
LEFT JOIN device_cpe d ON nc.fk_device_cpe = d.id_device_cpe
LEFT JOIN modelosDevices mo ON d.fk_modelosDevices = mo.id_modelosDevices
LEFT JOIN marcasDevices ma ON mo.fk_marcasDevices = ma.id_marcasDevices
JOIN atributos_estados a ON nc.fk_atributos_estados = a.id_atributos_estados
WHERE nc.fk_productos_vs_universidad=11277
ORDER BY nc.fk_productos_vs_universidad ASC



-- Muestra si la directiva "secure_file_priv" está activada y la ruta donde se alojan los archivos

SHOW VARIABLES LIKE "secure_file_priv";


