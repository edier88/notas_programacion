-- EXCEPT: Muestra los registros que NO esten repetidos en las doas tablas

SELECT * FROM tablita1
EXCEPT
SELECT * FROM tablita2
