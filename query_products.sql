
--exercise 1
SELECT product_name, price
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
);

------------------------------

--exercise 2
SELECT t1.customer_id, t1.amount
FROM transactions t1
WHERE amount > (
    SELECT AVG(amount)
    FROM transactions t2
    WHERE t2.customer_id = t1.customer_id
)

-------------------------------
--exercise 3

WITH get_total_products AS (   
     SELECT product, (quantity * price_per_unit) AS total
     FROM sales
)

SELECT product, total AS "Total Price" 
FROM get_total_products
WHERE product = 'Keyboard' AND Total > 30;



----------------------------------
--exercise 4
WITH get_total_sales AS (
    SELECT product, COUNT(product) AS total
    FROM sales
    GROUP BY product
)

SELECT customer_id, product 
FROM sales
WHERE product = (
    SELECT product
    FROM get_total_sales
    WHERE total = 1
)

--------------------------
--exercise 5

--cte
WITH get_product_sales AS (
    SELECT p.name, SUM(s.quantity) AS "quantity", p.price
    FROM sales s
    JOIN products p ON s.product_id = p.id
    GROUP BY p.name, p.price
)

SELECT name, quantity, (quantity * price) AS "total"
FROM get_product_sales
WHERE quantity >= 7
ORDER BY quantity DESC

--subquery
SELECT name, quantity, (quantity * price) AS "total"
FROM (
    SELECT p.name, SUM(s.quantity) AS "quantity", p.price
    FROM sales s
    JOIN products p ON s.product_id = p.id
    GROUP BY p.id
)
WHERE quantity >= 7
ORDER BY quantity DESC