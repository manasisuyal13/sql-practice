-- NO JOIN
SELECT * 
FROM customers;

SELECT * 
FROM orders;

-- INNER JOIN
-- Get all customers along with their orders, but only for customers who have placed an order
SELECT
c.id,
c.first_name,
o.order_id,
o.sales
FROM customers AS c
INNER JOIN orders AS o
ON id = customer_id;

-- OUTER JOIN
-- Left Join- All rows from left table and only matching rows from right table
--Get all customers along with their orders, including those without orders
SELECT
c.id,
c.first_name,
c.country,
c.score,
o.order_id,
o.order_date,
o.sales
FROM customers AS c
LEFT JOIN orders AS o
on c.id = o.customer_id;

-- Get all customers along with their orders, including orders without matching customers
SELECT
c.id,
c.first_name,
c.country,
c.score,
o.order_id,
o.order_date,
o.sales
FROM orders AS o
LEFT JOIN customers AS c
on c.id = o.customer_id;

-- RIGHT JOIN- All rows from right table and only matching rows from left table
-- Get all customers along with their orders, including orders without matching customers
SELECT
c.id,
c.first_name,
c.country,
c.score,
o.order_id,
o.order_date,
o.sales
FROM customers AS c
RIGHT JOIN orders AS o
on c.id = o.customer_id;

-- FULL JOIN- Keeps all rows from both tables even there is no match
-- Get all customers and all orders, even if there's no match
SELECT
c.id,
c.first_name,
c.country,
c.score,
o.order_id,
o.order_date,
o.sales
FROM customers AS c
FULL JOIN orders AS o
on c.id = o.customer_id;

-- LEFT ANTI JOIN- Returns rows from left that have no match in right
-- Get all customers who haven't placed any order
SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL;

-- RIGHT ANTI JOIN- Returns rows from right that have no match in left
-- Get all orders without matching customers
SELECT * 
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL;
