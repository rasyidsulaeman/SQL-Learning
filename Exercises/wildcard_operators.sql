-- wildcard and special operations

CREATE TABLE salesman(
	salesman_id INT PRIMARY KEY,
	name VARCHAR(50),
	city VARCHAR(50),
	commission NUMERIC
)

DROP TABLE IF EXISTS salesman

INSERT INTO salesman (salesman_id, name, city, commission) 
VALUES 
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'MC Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12)

SELECT * FROM salesman
WHERE city = 'Paris' OR city = 'Rome'

SELECT * FROM salesman
WHERE NOT (city = 'Paris' OR city = 'Rome')


CREATE TABLE customer(
	customer_id INT PRIMARY KEY,
	cust_name VARCHAR(50),
	city VARCHAR(50),
	grade INT,
	salesman_id INT
)

INSERT INTO customer VALUES
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', NULL, 5005)

SELECT * FROM customer
WHERE customer_id IN (3007, 3008, 3009)

SELECT * FROM salesman
WHERE commission BETWEEN 0.12 AND 0.14

CREATE TABLE orders
(
    order_no int,
    purch_amt FLOAT,
    order_date date,
    customer_id int,
    salesman_id int
)

INSERT INTO orders VALUES 
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003, 5007),
(70013, 3045.6, '2012-04-25', 3002, 5001)

SELECT * FROM orders
WHERE (purch_amt BETWEEN 500 AND 4000) 
	   AND NOT purch_amt IN (948.50, 1983.43)

SELECT * FROM salesman
WHERE name BETWEEN 'A' AND 'L'

SELECT * FROM salesman
WHERE name NOT BETWEEN 'A' AND 'L'

SELECT * FROM customer
WHERE cust_name LIKE 'B%'

SELECT * FROM customer
WHERE cust_name LIKE '%n'

SELECT * FROM salesman
WHERE name LIKE 'N__l%'

CREATE TABLE testable(
	col1 VARCHAR(255)
)

INSERT INTO testable(col1) VALUES
('A001/DJ-402\44_/100/2015'),
('A001_\DJ-402\44_/100/2015'),
('A001_DJ-402-2014-2015'),
('A002_DJ-401-2014-2015'),
('A001/DJ_401'),
('A001/DJ_402\44'),
('A001/DJ_402\44\2015'),
('A001/DJ-402%45\2015/200'),
('A001/DJ_402\45\2015%100'),
('A001/DJ_402%45\2015/300'),
('A001/DJ-402\44')

SELECT * FROM testable
WHERE col1 LIKE '%/_%' ESCAPE '/'

SELECT * FROM customer
WHERE grade IS NOT NULL








