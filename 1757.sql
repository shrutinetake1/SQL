--1757. Recyclable and Low Fat Products

SELECT DISTINCT product_id
FROM Products
WHERE low_fats='Y' AND recyclable='Y';
