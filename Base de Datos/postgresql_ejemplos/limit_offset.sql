-- LIMIT y OFFSET
-- LIMIT dice que se muestren un maximo de registros
-- OFFSET dice que se muestre desde el registro que se indique

SELECT * FROM ventas 
ORDER BY id 
LIMIT 5; -- Muestra los primeros 5 registros, los demas no los muestra

SELECT * FROM ventas 
ORDER BY id 
LIMIT 5 OFFSET 8; -- Muestra los registros, empezando desde el octavo registro y solo muestra 5 (mostraria los registros con ID 9, 10, 11, 12 y 13)
