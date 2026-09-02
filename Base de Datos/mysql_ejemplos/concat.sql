-- Concatenate various strings or results in a query and put them in one column

SELECT CONCAT(Address, " ", PostalCode, " ", City) AS Address
FROM Customers; 
