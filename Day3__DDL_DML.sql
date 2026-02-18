--Data Definition Language (DDL)

--Create a new table called persons with columns: id, person_name, birth_date and phone 
CREATE TABLE persons (
id INT NOT NULL,
person_name VARCHAR(50) NOT NULL,
birth_date DATE,
phone VARCHAR(15) NOT NULL,
CONSTRAINT pk_persons PRIMARY KEY (id)
)
SELECT * FROM persons;

-- Add a new column called email to the persons table
ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL;

SELECT * FROM persons;

-- Remove the column phone from the persons table
ALTER TABLE persons
DROP COLUMN phone;

SELECT * FROM persons;

-- Delete the table persons from the database
DROP TABLE persons;



-- Data Manipulation Language
--INSERT command
INSERT INTO customers (id, first_name, country, score)
VALUES
(6, 'Anna', 'USA', NULL),
(7, 'Sam', NULL, 100);

INSERT INTO customers (id, first_name, country, score)
VALUES
(8, 'Andrea', NULL, 350),
(9, 'John', 'Canada', NULL),
(10, 'Anthony', 'United Kingdom', 275);
INSERT INTO customers (id, first_name, country, score)
VALUES
(11, 'Colin', NULL, NULL);
SELECT * FROM customers;

-- Insert data from 'customers' 'into 'persons'
INSERT INTO persons (id, person_name, birth_date, phone)
SELECT 
id,
first_name,
NULL,
'Unknown'
FROM customers;
SELECT * FROM persons;

-- UPDATE command
-- Change the score of customer 6 to 0
UPDATE customers
SET score = 0
WHERE id = 6;

SELECT * FROM customers;

-- Change the score of customer 10 to 0 and update the country to UK
UPDATE customers
SET score = 0,
country = 'UK'
WHERE id = 10;
SELECT * FROM customers;

-- Update all customers with a null score by setting their score to 0
UPDATE customers
SET score = 0
WHERE score IS NULL;
SELECT * FROM customers WHERE score IS NULL;

-- DELETE command

-- Delete all customers with an ID greater than 5
DELETE FROM customers
WHERE id > 5;
SELECT * FROM customers;

-- TRUNCATE function (used for big tables
-- Delete all data from table persons
TRUNCATE TABLE persons;