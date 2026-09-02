
-- Si en una tabla hay una columna con valores repetidos, DISTINCT solo nos mostrará los valores que son distintos entre sí
SELECT DISTINCT Country FROM Customers;

-- Este ejemplo trae todos los registro con mes y año que no se repitan.
SELECT DISTINCT ID_ANO, ID_MES FROM `tbl_liquidacion` 
