-- ASC; DESC; ORDER BY; AS; CONCAT; LCASE; UCASE; REPLACE; LEFT; RIGHT; DATE_FORMAT; MIN; MAX; LIMIT; GROUP BY; LIKE

SELECT * FROM estudiantes ORDER BY nombre   DESC;
                                            ASC;

SELECT nombre AS Nom, ID AS identificacion  FROM estudiantes;

SELECT CONCAT('Nombre completo: ', nombre, ' ', apellido, ' ', edad) AS 'info_completa' FROM estudiantes WHERE nombre IS NOT NULL;
-- La anterior linea mostrará una tabla con una sóla columna con título "info_completa" con la información requerida concatenada con los caracteres especificados

SELECT LCASE(nombre), UCASE(apellido) FROM estudiantes; --LCASE= convertir a lower case(minusculas)
                                                        --UCASE= convertir a upper case(mayúsculas)

SELECT REPLACE(nombre, 'o', 'O') FROM estudiantes; 
-- todos los registros de la columna nombre que tengan una "o" minúscula quedarán con "O" mayúscula, 
    -- ejemplo: en vez de "oscar", mostraría "Oscar"

SELECT LEFT(nombre, 3) FROM estudiantes; -- Muestra los primeros 3 caracteres de los registros del campo "nombre" 
SELECT RIGHT(nombre, 3) FROM estudiantes; -- Muestra los últimos 3 caracteres de los registros del campo "nombre"

SELECT DATE_FORMAT(fecha_registro, '%d/%m/%y') FROM estudiantes; -- cambiamos la manera de mostrar un campo de tipo DATEW a como nosotros queramos
SELECT DATE_FORMAT(fecha_registro, '%D/%M/%Y') FROM estudiantes; -- Con "M" mayúscula, en vez de en números mostrará los nombres del mes, 
                                                                 -- con "Y" mayuscula mostrará la fecha completa

SELECT MIN(edad) AS "minimo", MAX(edad) AS "maximo" FROM estudiantes; -- muestra el dato minimo y maximo de edad del total de los registros.

SELECT * FROM estudiantes LIMIT 3, 4; -- Muestre los registros a partir del tercer registro pero sólo muestre 4 datos después de este.

SELECT * FROM estudiantes GROUP BY nombre; -- Agrupa la tabla deacuerdo con el orden alfabetico del campo "nombre"

SELECT * FROM estudiantes WHERE nombre LIKE '%amir%'; -- Muestra los registros que tengan, al inicio, o al final, o entre los caracteres del campo "nombre", la palabra "amir".