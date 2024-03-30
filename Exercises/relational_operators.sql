
SELECT *
FROM customer
WHERE grade > 100

SELECT *
FROM customer
WHERE city = 'New York' and grade > 100

SELECT *
FROM customer
WHERE city = 'New York' or grade > 100

SELECT *
FROM customer
WHERE city = 'New York' or grade < 100

SELECT *
FROM customer
WHERE city NOT LIKE 'New York' or grade > 100

SELECT *
FROM orders
WHERE NOT ((order_date = '2012-09-10' and salesman_id > 5005) or purch_amt > 1000)

SELECT *
FROM salesman
WHERE commission > 0.10 and commission < 0.12

SELECT * FROM orders
WHERE purch_amt < 200 OR NOT (order_date >= '2012-02-10' and customer_id < 3009)

SELECT * FROM orders
WHERE NOT ((order_date = '2012-08-17' or customer_id > 3005) and purch_amt < 1000)

SELECT order_no, purch_amt, (purch_amt/6000) * 100 as Achieved, ((6000- purch_amt)/6000) * 100 as NotAchieved
FROM orders
WHERE purch_amt/6000 > 0.5

SELECT * 
FROM emp_details
WHERE lname = 'Dosni' or lname = 'Mardy'

SELECT * 
FROM emp_details
WHERE dept = 47 or dept = 63