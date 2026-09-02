/* 
EXISTS permite la consulta si lo que está dentro de los parentesis es TRUE, en este caso, si lo que está dentro de los parentesis sí trae registros, entonces EXISTS permitirá la consulta, porque lo que está dentro de parentesis devuelve TRUE.
Si lo que está dentro de parentesis NO devuelve ningún registro entonces EXISTS no permitirá la consulta porque lo que está dentro de parentesis devuelve FALSE.
*/

SELECT * FROM users WHERE EXISTS (SELECT * FROM users);

