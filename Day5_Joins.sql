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

-- FULL ANTI JOIN- Returns only rows that don't match in either tables
-- Find customers without orders and orders without customers
SELECT * 
FROM orders o
FULL JOIN customers c
on c.id = o.customer_id
WHERE c.id IS NULL OR o.customer_id IS NULL;

-- CROSS JOIN- Combines every row from left with every row in right (All possible combinations- cartesian join)
-- Generate all possible combinations of customers and orders
SELECT *
FROM customers 
CROSS JOIN orders;

-- CHALLENGE 1:- Get all customers along with their orders, but for customers who have placed an order without using INNER JOIN
SELECT * 
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
WHERE customer_id IS NOT NULL;

/* CHALLENGE 2:- Using SalesDB, Retrieve a list of all orders, along with the related customer, product and employee details.
For each order, display-
- Order ID
- Customer's name
- Product name
- Sales
- Price
- Sales person's name */
SELECT 
o.OrderID,
o.Sales,
c.FirstName,
c.LastName,
p.Product AS ProductName,
p.Price,
e.FirstName,
e.LastName
FROM Sales.Orders o
LEFT JOIN Sales.Customers c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON SalesPersonID = e.EmployeeID;