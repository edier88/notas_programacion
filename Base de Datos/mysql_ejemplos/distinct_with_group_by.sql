/* 
Esta consulta muestra en una columna las cedulas y en otra columna el numero de distribuidoras distintas en las que aparece dicha cedula.
Por ejemplo, necesitamos saber si la cedula "111222" está asociada, a lo largo de la tabla, a diferentes distribuidoras de distintos ID.
*/

SELECT cedula, COUNT(DISTINCT(id_distribuidora)) FROM distribuidoras_historico GROUP BY cedula;
