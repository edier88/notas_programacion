-- Sumar toda una fila completa y arrojar el resultado de la suma, si se hace con valores que no sean números, no los sumará y los tratará como cero

SELECT SUM(Quantity) AS TotalItemsOrdered FROM OrderDetails;

-- Si se quiere sumar sólamente las columnas que coincidan se debe agruparlas

SELECT producto, SUM(Quantity) AS TotalItemsOrdered 
FROM OrderDetails
GROUP BY producto;
