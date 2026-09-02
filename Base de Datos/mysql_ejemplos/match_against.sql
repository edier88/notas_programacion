-- MATCH AGAINST es similar a WHERE LIKE, pero MATCH AGAINST esta optimizado para busquedas incrustadas en paginas. Ya que usa el lenguaje natural

SELECT * FROM tablename WHERE MATCH(name) AGAINST('edier');
