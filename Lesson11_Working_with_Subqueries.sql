--Lesson 11: Working with Subqueries 

--Filtering by Subquery 
SELECT order_num FROM OrderItems WHERE prod_id = 'RGAN01';

SELECT cust_id FROM Orders WHERE order_num IN (20007,20008);

--the 2 statements above combined 
SELECT cust_id FROM Orders WHERE order_num IN (SELECT order_num FROM OrderItems WHERE prod_id = 'RGAN01');

SELECT cust_name, cust_contact FROM Customers WHERE cust_id IN (1000000004, 1000000005);

--the statement above but not hard-coding the customer IDs 
SELECT cust_name, cust_contact FROM Customers WHERE cust_id IN (SELECT cust_id FROM Orders WHERE order_num IN(SELECT order_num FROM OrderItems WHERE prod_id = 'RGAN01'));

--Using Subqueries as Calculated Fields
SELECT cust_name, cust_state, (SELECT count(*) FROM Orders WHERE Orders.cust_id = Customers.cust_id) AS orders FROM Customers ORDER BY cust_name;

SELECT cust_name, cust_state, (SELECT count(*) FROM Orders WHERE cust_id = cust_id) AS orders FROM Customers ORDER BY cust_name;

--Challenge 1: return a list of customers who bought items $10 or more using the Orders and OrderItems tables, retrieve order_num and cust_id
SELECT cust_id FROM Orders WHERE order_num IN (SELECT order_num FROM OrderItems WHERE item_price >= 10);

--Challenge 2: need to know the dates when 'BR01' was ordered, order by date, use both tables: OrderItems and Orders
SELECT cust_id, order_date FROM Orders WHERE order_num IN (SELECT order_num FROM OrderItems WHERE prod_id = 'BR01') ORDER BY order_date;

--Challenge 3: update challenge 2 to return customer email from the customer table for customers who purchased 'BR01'
SELECT cust_id, order_date, (SELECT cust_email FROM Customers WHERE Customers.cust_id = Orders.cust_id) AS cust_email 
FROM Orders WHERE order_num IN (SELECT order_num FROM OrderItems WHERE prod_id = 'BR01') ORDER BY order_date;

--Challenge 4: list of Customer ID's with the total amount they have ordered, use cust_id from Orders table and total_ordered using a subquery to return the total order of each customer 
--sort the results by total price greatest to least 
SELECT cust_id, (SELECT sum(order_item*item_price) FROM OrderItems GROUP BY order_num) as total_ordered FROM Orders GROUP BY cust_id;

