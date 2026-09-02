-- Shows the duplicated registers, registers that are repeated 2 to 4 times

SELECT fk_customer, COUNT(*)
FROM universidad
GROUP BY fk_customer
HAVING COUNT(*) BETWEEN 2 AND 4
