-- JOINS

/* NATURAL JOIN: Necesita que haya una relacion con Constraints de llave primaria y foranea ya definidos en las tablas. Si no existe, no sabe con qué relacionar las tablas. 
IMPORTANTE: Las columnas de llave foranea y primaria deben tener el mismo nombre, si no no funciona (por ejemplo: "id" e "id")
*/

SELECT u.id, u.username, v.id, v.owner, v.name FROM users AS u NATURAL JOIN videos AS v;


-- INNER JOIN: No es necesario que las tablas tengan relaciones con Constraints de llave primaria y foranea. Ya que nosotros le tenemos que especificar qué campos relacionar.

SELECT u.id, u.username, v.id, v.owner, v.name FROM users u
INNER JOIN videos AS v ON u.id = v.owner;


-- LEFT JOIN: muestra todos los resultados que se relacionen entre la primera tabla y la segunda (la tabla de la izquierda y la derecha), si existe un registro en la tabla izquierda que no se relacione con ningun registro de la tabla derecha, lo muestra igualmente y rellena lo inexistente con NULL

SELECT u.id, u.username, v.id, v.owner, v.name FROM users u
LEFT JOIN videos AS v ON u.id = v.owner;


-- RIGHT JOIN: muestra todos los resultados que se relacionen entre la primera tabla y la segunda (la tabla de la izquierda y la derecha), si existe un registro en la tabla derecha que no se relacione con ningun registro de la tabla izquierda, lo muestra igualmente y rellena lo inexistente con NULL

SELECT u.id, u.username, v.id, v.owner, v.name FROM users u
RIGHT JOIN videos AS v ON u.id = v.owner;


-- FULL JOIN: Es la combinación de RIGHT y LEFT JOIN:

SELECT u.id, u.username, v.id, v.owner, v.name FROM users u
FULL JOIN videos AS v ON u.id = v.owner;
