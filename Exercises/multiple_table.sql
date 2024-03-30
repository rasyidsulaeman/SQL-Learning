-- Query on multiple tables
SELECT customer.cust_name, salesman.name, customer.city
FROM salesman, customer
WHERE salesman.city = customer.city

SELECT customer.cust_name, salesman.name
FROM salesman, customer
WHERE salesman.salesman_id = customer.salesman_id

SELECT orders.order_no, customer.cust_name, orders.customer_id, orders.salesman_id
FROM salesman, customer, orders
WHERE salesman.salesman_id = orders.salesman_id 
	  AND customer.customer_id = orders.customer_id
	  AND NOT salesman.city = customer.city
	  
SELECT orders.order_no, customer.cust_name
FROM customer, orders
WHERE customer.customer_id = orders.customer_id

SELECT customer.cust_name AS Customer, 
	   customer.grade AS Grade, 
	   orders.order_no AS Order_no
FROM customer, orders, salesman
WHERE customer.grade IS NOT NULL
	  AND customer.customer_id = orders.customer_id
	  AND salesman.salesman_id = orders.salesman_id
	  AND salesman.city IS NOT NULL

SELECT customer.cust_name as Customer, customer.city as City,
	   salesman.name as Salesman, salesman.commission as Commission
FROM customer, salesman
WHERE salesman.commission BETWEEN 0.12 AND 0.14 
      AND salesman.salesman_id = customer.salesman_id

SELECT * FROM salesman

SELECT orders.order_no AS Order_No, customer.cust_name AS Customer, 
	   salesman.commission AS Commission_Percentage, 
	   (orders.purch_amt * salesman.commission) AS Commission
FROM customer, salesman, orders
WHERE customer.grade >= 200 AND
      customer.customer_id = orders.customer_id AND
	  salesman.salesman_id = orders.salesman_id


SELECT customer.customer_id, customer.cust_name
FROM orders, customer
WHERE orders.order_date = '2012-10-05' AND
	  customer.customer_id = orders.customer_id












