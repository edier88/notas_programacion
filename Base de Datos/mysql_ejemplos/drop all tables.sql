-- Lo siguiente devuelve todas las tablas de una base de datos específica con la frase "DROP TABLE IF EXISTS" atrás del nombre de dicha tabla, ejemplo:

 _______________________________________________
|		drop_queries			|
|_______________________________________________|
|	DROP TABLE IF EXISTS `usuarios`;	|
|	DROP TABLE IF EXISTS `acciones`;	|
|	   		.			|
|	   		.			|
|	   		.			|
|_______________________________________________|


SELECT concat('DROP TABLE IF EXISTS `', table_name, '`;') AS drop_queries
FROM information_schema.tables
WHERE table_schema = 'MyDatabaseName';
