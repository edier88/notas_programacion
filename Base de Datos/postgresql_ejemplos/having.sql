-- HAVING establece una condicion con valores aritmeticas, filtra grupos. Al contrario de WHERE que filtra registros individuales

SELECT producto, SUM(cantidad) AS suma 
FROM ventas 
GROUP BY producto 
HAVING SUM(cantidad) > 18; -- Si esto se hubiera hecho con WHERE en vez de HAVING, mostraría un error. No se puede usar WHERE con operadores aritmetico, SUM, MAX, MIN, COUNT, etc...
