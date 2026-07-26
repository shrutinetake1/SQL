--1327. List the Products Ordered in a Period

SELECT p.product_name, SUM(o.unit) as unit
FROM products as p
JOIN orders as o
ON p.product_id = o.product_id
WHERE order_date 
BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY p.product_id
HAVING SUM(unit)>=100;
