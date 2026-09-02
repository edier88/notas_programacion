-- INTERSECT, es lo contrario a UNION. UNION no trae registros repetidos en las dos o varias tablas unidas, INTERSECT sólo trae registros repetidos en las  dos o más tablas unidas

SELECT * FROM tablita1
INTERSECT
SELECT * FROM tablita2
