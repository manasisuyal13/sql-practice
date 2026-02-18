SELECT *
FROM customers; -- Retrieve all customer data

SELECT *
FROM orders; -- Retrieve all order data

SELECT
first_name,
country,
score
FROM customers; -- Retrieve each customer's name, country and score

SELECT * 
FROM customers
WHERE score!=0; -- Retrieve customers with a score not equal to zero

SELECT *
FROM customers
WHERE country= 'Germany'; -- Retrieve customers from Germany

SELECT 
first_name,
country
FROM customers
WHERE country= 'Germany';

SELECT *
FROM customers
ORDER BY score DESC; -- Retrieve all customers and sort the results by the highest score first

SELECT * 
FROM customers
ORDER BY score ASC; -- Retrieve all customers and sort the results by the lowest score first

SELECT *
FROM customers
ORDER BY 
country ASC,
score desc; -- Retrieve all customers and sort the results by the country and then by the highest score (since the country is written first so the country has higher priority

SELECT *
FROM customers
ORDER BY 
score desc,
=======
SELECT *
FROM customers; -- Retrieve all customer data

SELECT *
FROM orders; -- Retrieve all order data

SELECT
first_name,
country,
score
FROM customers; -- Retrieve each customer's name, country and score

SELECT * 
FROM customers
WHERE score!=0; -- Retrieve customers with a score not equal to zero

SELECT *
FROM customers
WHERE country= 'Germany'; -- Retrieve customers from Germany

SELECT 
first_name,
country
FROM customers
WHERE country= 'Germany';

SELECT *
FROM customers
ORDER BY score DESC; -- Retrieve all customers and sort the results by the highest score first

SELECT * 
FROM customers
ORDER BY score ASC; -- Retrieve all customers and sort the results by the lowest score first

SELECT *
FROM customers
ORDER BY 
country ASC,
score desc; -- Retrieve all customers and sort the results by the country and then by the highest score (since the country is written first so the country has higher priority

SELECT *
FROM customers
ORDER BY 
score desc,
country ASC; -- since score is written first to the tables would be sorted in descending order of score