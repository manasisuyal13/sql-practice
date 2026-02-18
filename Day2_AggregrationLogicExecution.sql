SELECT 
first_name, 
AVG(score) AS average
FROM customers
GROUP BY first_name; /* GROUP BY function groups similar values together
Usually used with aggregate functions like COUNT(), SUM(), AVG(), MAX(), MIN() */

SELECT 
country, 
SUM(score) as total_score 
FROM customers
GROUP BY country; /* An alias (as) is a shorthand name (label) assigned to a column or table in a query*/

--Find the total score and total number of customers for each country
SELECT 
country, 
SUM(score) as total_score,
COUNT(id) as total_customers
FROM customers
GROUP BY country;


/*Find the average score for each country 
considering only customers with a score not equal to 0
and return only those countries with an average score greater than 430*/
SELECT
country,
AVG(score) as average_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430; --having clause is always used after group by clause

-- Return unique list of all countries
SELECT DISTINCT country 
FROM customers; --Distinct removes duplicates

-- Retrieve only 3 customers
SELECT TOP 3 *
FROM customers; -- TOP limits the number of rows

-- Retrieve top 3 customers with the highest scores
SELECT TOP 3 *
FROM customers
ORDER BY score DESC;

--Lowest 2 customers
SELECT TOP 2 *
FROM customers
ORDER BY score ASC;

--Get the Two most recent orders
SELECT TOP 2 *
FROM orders
ORDER BY order_date DESC;

/*
CODING ORDER-

SELECT DISTINCT TOP 2 col1,
SUM(col2)
FROM Table
WHERE col = 10
GROUP BY col1
HAVING SUM(col2) > 30
ORDER BY col1 ASC;


EXECUTION ORDER-

1. FROM
2. WHERE - filter the data using where clause
3. GROUP BY
4. HAVING
5. SELECT DISTINCT
6. ORDER BY
7. TOP
*/