-- INTO crea una tabla temporal y almacena allí lo que se ha consultado, ejemplo:

SELECT v.consecutivo, v.producto, p.nombre, v.cantidad, p.valor, v.cantidad, p.valor AS valor_total INTO tmp_consulta
FROM ventas AS v 
JOIN productos AS p ON v.producto = p.codigo;

-- despues de crar la tabla temporal se puede borrar:

DROP TABLE tmp_consulta;
