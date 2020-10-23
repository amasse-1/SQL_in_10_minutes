--Lesson 2: Retrieving Data
--retrieving individual columns 
SELECT prod_name FROM Products;
/*Lesson 2 Retreiving data*/

--retrieving multiple columns 
SELECT prod_id, prod_name, prod_price FROM Products;

--retrieving multiple columns 
SELECT * FROM Products;

--retrieving rows 
SELECT vend_id FROM Products;

--retrieving DISTINCT rows 
SELECT DISTINCT vend_id FROM Products;

--limit the results you want 
SELECT prod_name FROM Products LIMIT 5;

--limit it without the final entry
SELECT prod_name from Products LIMIT 5 OFFSET 5;

--Challenge 1: write a sql statement to retrieve all customer ids from the Customers TABLE
SELECT cust_id FROM Customers;

--Challenge 2: write a sql statement to retrieve a list of products ordered (just a unique set of products)
--using the prod id from OrderItems table 
SELECT DISTINCT prod_id FROM OrderItems;

--Challenge 3: retrieve all the columns from Customers table and an alternative to one of just customer ID's 
--first
SELECT * FROM Customers;

--second
SELECT cust_id FROM Customers;
