-- CASE WHEN

SELECT id, ( CASE 
	WHEN id <= 3 THEN 'viejo'
	WHEN id = 4 THEN 'bien'
	WHEN id >= 5 THEN 'joven'
	END) AS antiguedad
 FROM users;

