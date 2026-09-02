-- Con HAVING se puede coger como filtro una columna renombrada despues de hacer un GROUP BY:
-- Ejemplo 1:
SELECT nombre_columnas
FROM nombre_tablas
GROUP BY nombre_columnas
HAVING condición

-- Ejemplo 2:

SELECT a.nombre, a.apellido, AVG(n.calificacion) AS media
FROM alumno
INNER JOIN nota n ON a.id = n.alumno_id
INNER JOIN asignatura asig ON asig.id = n.asignatura_id
GROUP BY a.nombre, apellido
HAVING media >= 6
ORDER BY media desc
