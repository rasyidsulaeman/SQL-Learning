-- aggregate functions

SELECT SUM(purch_amt)
FROM orders

SELECT AVG(purch_amt)
FROM orders

SELECT COUNT(DISTINCT salesman_id)
FROM orders

SELECT COUNT(cust_name)
FROM customer
WHERE grade IS NOT NULL

SELECT COUNT(ALL grade)
FROM customer

SELECT MAX(purch_amt), MIN(purch_amt)
FROM orders

SELECT city, MAX(grade)
FROM customer
GROUP BY city

SELECT customer_id, order_date, MAX(purch_amt) as Max_purchased
FROM orders
GROUP BY customer_id, order_date
ORDER BY Max_purchased

SELECT salesman_id, MAX(purch_amt)
FROM orders
WHERE order_date = '2012-08-17'
GROUP BY salesman_id

SELECT customer_id, order_date, MAX(purch_amt) 
FROM orders
GROUP BY customer_id, order_date
HAVING MAX(purch_amt) > 2000

SELECT customer_id, order_date, MAX(purch_amt) as max_purchased
FROM orders
GROUP BY customer_id, order_date
HAVING MAX(purch_amt) BETWEEN 2000 AND 6000

SELECT customer_id, order_date, MAX(purch_amt) as max_purchased
FROM orders
GROUP BY customer_id, order_date
HAVING MAX(purch_amt) IN (2000, 3000, 5760, 6000)

SELECT customer_id, MAX(purch_amt)
FROM orders
WHERE customer_id BETWEEN 3002 AND 3007
GROUP BY customer_id

SELECT customer_id, MAX(purch_amt)
FROM orders
WHERE customer_id BETWEEN 3002 AND 3007
GROUP BY customer_id
HAVING MAX(purch_amt) > 1000

SELECT salesman_id, MAX(purch_amt)
FROM orders
WHERE salesman_id BETWEEN 5003 AND 5008
GROUP BY salesman_id

SELECT COUNT(order_date)
FROM orders
WHERE order_date = '2012-08-17'

SELECT order_date, salesman_id, COUNT (*)
FROM orders
GROUP BY order_date, salesman_id

SELECT * FROM orders



























