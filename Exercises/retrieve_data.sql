/*
This exercises are from w3resource.com about Retrieve data from Tables
The data shows the information about salespeople
*/

--SALESMAN DATA 
CREATE TABLE salesman 
(
    salesman_id int,
    name varchar(50),
    city varchar(50),
    commission float
)

INSERT INTO salesman VALUES 
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12)

SELECT name, commission FROM salesman

SELECT name, city
FROM salesman
WHERE city = 'Paris'

-- ORDERS DATA
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

SELECT order_date, salesman_id, order_no, purch_amt
FROM orders

SELECT DISTINCT salesman_id
FROM orders

SELECT order_no, order_date, purch_amt
FROM orders
WHERE salesman_id = 5001


-- CUSTOMER DATA
CREATE TABLE customer
(
    customer_id int,
    cust_name varchar(50),
    city varchar(50),
    grade int,
    salesman_id int
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

SELECT customer_id, cust_name, grade, salesman_id
FROM customer
WHERE grade > 200

-- NOBEL WIN
CREATE TABLE nobel_win
(
    YEAR int,
    SUBJECT varchar(50),
    WINNER varchar(100),
    COUNTRY varchar(50),
    CATEGORY varchar(50)
)

INSERT INTO nobel_win VALUES
(1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist'),
(1970, 'Physics', 'Louis Neel', 'France', 'Scientist'),
(1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist'),
(1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist'),
(1970, 'Physiology', 'Bernard Katz', 'Germany', 'Scientist'),
(1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist'),
(1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist'),
(1970, 'Physiology', 'Julius Axelrod', 'USA', 'Scientist'),
(1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist'),
(1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist'),
(1971, 'Peace', 'Willy Brandt', 'Germany', 'Chancellor'),
(1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist'),
(1971, 'Economics', 'Simon Kuznets', 'Russia', 'Economist'),
(1978, 'Peace', 'Anwar al-Sadat', 'Egypt', 'President'),
(1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister'),
(1987, 'Chemistry', 'Donald J. Cram', 'USA', 'Scientist'),
(1987, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist'),
(1987, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist'),
(1994, 'Economics', 'Reinhard Selten', 'Germany', 'Economist'),
(1994, 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister'),
(1987, 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist'),
(1987, 'Literature', 'Joseph Brodsky', 'Russia', 'Linguist'),
(1987, 'Economics', 'Robert Solow', 'USA', 'Economist'),
(1994, 'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist')

SELECT [YEAR], SUBJECT, WINNER FROM nobel_win
WHERE [YEAR] = 1970

SELECT WINNER
FROM nobel_win
WHERE SUBJECT = 'Literature' and [YEAR] = 1971

SELECT [YEAR], SUBJECT
FROM nobel_win
WHERE WINNER LIKE 'Dennis%'

SELECT WINNER
FROM nobel_win
WHERE SUBJECT = 'Physics' AND [YEAR] >= 1950

SELECT [YEAR], SUBJECT, WINNER, COUNTRY
FROM nobel_win
WHERE SUBJECT = 'Chemistry' AND [YEAR] BETWEEN 1965 AND 1975

SELECT *
FROM nobel_win
WHERE [YEAR] > 1972 AND CATEGORY LIKE 'Prime%'

SELECT *
FROM nobel_win
WHERE WINNER LIKE 'Louis%'

SELECT *
FROM nobel_win
WHERE SUBJECT = 'Physics' and [YEAR] = 1970 OR SUBJECT = 'Chemistry' and [YEAR] = 1971

SELECT *
FROM nobel_win
WHERE [YEAR] = 1970 AND SUBJECT NOT IN ('Physiology', 'Economics')

SELECT *
FROM nobel_win
WHERE SUBJECT = 'Physiology' and [YEAR] < 1971
UNION
SELECT *
FROM nobel_win
WHERE SUBJECT = 'Peace' and [YEAR] >= 1974

SELECT *
FROM nobel_win
WHERE WINNER LIKE '%Georg%'

SELECT *
FROM nobel_win
WHERE SUBJECT NOT LIKE 'P%'
ORDER BY [YEAR] DESC, WINNER ASC 

SELECT *
FROM nobel_win
WHERE [YEAR] = 1970
ORDER BY 
    CASE 
        WHEN SUBJECT IN ('Chemistry', 'Economics') THEN 1
        ELSE 0
    END ASC, SUBJECT, WINNER

-- ITEM MAST
CREATE TABLE item_mast
(
    id int,
    name varchar(50),
    price float,
    com int
)

INSERT INTO item_mast VALUES 
(101, 'Mother Board', 3200.00, 15),
(102, 'Key Board', 450.00, 16),
(103, 'ZIP drive', 250.00, 14),
(104, 'Speaker', 550.00, 16),
(105, 'Monitor', 5000.00, 11),
(106, 'DVD drive', 900.00, 12),
(107, 'CD drive', 800.00, 12),
(108, 'Printer', 2600.00, 13),
(109, 'Refill cartridge', 350.00, 13),
(110, 'Mouse', 250.00, 12)

SELECT *
FROM item_mast
WHERE price BETWEEN 200 and 600

SELECT com, AVG(price) as avgprice
FROM item_mast
WHERE com = 16
GROUP BY com

SELECT name as 'Item Name', price as 'Price in Rs'
FROM item_mast

SELECT name, price
FROM item_mast
WHERE price >= 250
ORDER BY price desc, name asc

SELECT com, AVG(price) as avgprice
FROM item_mast
GROUP BY com

SELECT name, price
FROM item_mast
WHERE price in (SELECT min(price) FROM item_mast)

-- EMP company
CREATE TABLE emp_details
(
    idno int,
    fname varchar(50),
    lname varchar(50),
    dept int
)

INSERT INTO emp_details VALUES 
(127323, 'Michale', 'Robbin', 57),
(526689, 'Charlos', 'Snares', 63),
(843795, 'Enric', 'Dosio', 57),
(328717, 'Jhon', 'Snares', 63),
(444527, 'Joseph', 'Dosni', 47),
(629831, 'Zanifer', 'Emily', 47),
(847674, 'Kuleswar', 'Sitaraman', 57),
(748681, 'Henrey', 'Gabriel', 47),
(555935, 'Alex', 'Manuel', 57),
(539569, 'George', 'Mardy', 27),
(733843, 'Mario', 'Saule', 63)

SELECT DISTINCT lname 
FROM emp_details

SELECT *
FROM emp_details
WHERE lname = 'Snares'

SELECT *
FROM emp_details
WHERE dept = 57