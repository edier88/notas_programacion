-- Manera de trabajar con variables

SET @fecha = "2021-05-04";
SELECT producto
FROM OrderDetails
WHERE fecha=@fecha;

