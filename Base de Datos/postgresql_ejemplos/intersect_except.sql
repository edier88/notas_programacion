-- UNION DE DOS TABLAS PARA QUE TRAIGA SOLO LOS REGISTROS QUE SE REPITEN ENTRE LAS DOS

SELECT numero, fecha, valor, identificacion FROM ventas_contado
INTERSECT
SELECT numero, fecha, valor, identificacion FROM ventas_credito;

-- Esto mostrará los registros que sean iguales en las dos tablas, esto es, que tengan la misma informacion en la columna numero, fecha, valor e identificacion
-- También hay una alternativa sin usar INTERSECT, sería así para este ejemplo:

SELECT numero, fecha, valor, identificacion FROM ventas_contado
WHERE (numero, fecha, valor, identificacion) IN (SELECT numero, fecha, valor, identificacion FROM ventas_credito);

-- LO CONTARIO A INTERSECT SERIA EXCEPT
-- EXCEPT trae los registros que sean diferentes entre las dos tablas

SELECT numero, fecha, valor, identificacion FROM ventas_contado
EXCEPT
SELECT numero, fecha, valor, identificacion FROM ventas_credito;

-- La alternativa sin EXCEPT sería:

SELECT numero, fecha, valor, identificacion FROM ventas_contado
WHERE (numero, fecha, valor, identificacion) NOT IN (SELECT numero, fecha, valor, identificacion FROM ventas_credito);
