--183. Customers Who Never Order

SELECT name as Customers 
FROM Customers as c
LEFT JOIN Orders as o
ON c.id = o.customerId
WHERE o.customerId is NULL
