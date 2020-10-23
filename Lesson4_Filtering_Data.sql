--Lesson 4: Filtering Data 
--using the where clause
SELECT prod_name, prod_price FROM Products WHERE prod_price = 3.49;

--checking against a single value, less than 10
SELECT prod_name, prod_price FROM Products WHERE prod_price < 10;

-- less than or equal to 10
SELECT prod_name, prod_price FROM Products WHERE prod_price <= 10;

--checking for non-matches
SELECT vend_id, prod_name FROM Products WHERE vend_id <> 'DLL01';

--checking for a range of VALUES
SELECT prod_name, prod_price FROM Products WHERE prod_price BETWEEN 5 AND 10;

--checking for no value entries, has no missing entries
SELECT prod_name FROM Products WHERE prod_name IS NULL;

--checking for no value entries, has missing entries from customer email
SELECT cust_name FROM Customers WHERE cust_email IS NULL;

--Challenge 1: Retrieve prod_id and name from Products table returning only products with a price of 9.49
SELECT prod_id, prod_name FROM Products WHERE prod_price = 9.49;

--Challenge 2: retrieve prod_id name from Products table returning only producst with a price of 9 or more
SELECT prod_id, prod_name FROM Products WHERE prod_price >= 9;

--Challenge 3:statement that returns a unique list of order numbers from OrderItems table which contains 100 or more of any items 
SELECT DISTINCT order_num FROM OrderItems WHERE quantity >= 100;

--Challenge 4: statement that returns the product name and product price from Products table for all products priced between 3 and 6
--and sort the results by price 
SELECT prod_name, prod_price FROM Products WHERE prod_price BETWEEN 3 AND 6 ORDER BY prod_price;