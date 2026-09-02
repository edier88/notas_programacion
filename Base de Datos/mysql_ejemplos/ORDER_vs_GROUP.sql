-- Diference between GROUP BY and ORDER BY:

-- GROUP BY groups (agrupa) the repeated (duplicated) data depending on the column they share:
-- For example in this table the data shown will be: 
-- Column 1 (COUNT(CustomerID)): The total amount of customers who come from a specific country
-- Column 2 (Country): The country.
-- As there are, for instance, 3 people from Argentina, the display information will be: 
-- Column 1 (COUNT(CustomerID)): 3
-- Column 2 (Country): Argentina

-- So, we can see how the table now groups the recursive, duplicated, repeated data in a single row (fila).

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;


SELECT Country, COUNT(Country)
FROM Customers
GROUP BY Country;



-- ORDER BY will order the results of the table in ascendant or descendant order based in one column:

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;




