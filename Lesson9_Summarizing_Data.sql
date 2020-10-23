--Lesson 9: Summarizing Data 

--aggregate functions
SELECT avg(prod_price) AS avg_price FROM Products;
SELECT avg(prod_price) AS avg_price WHERE vend_id = 'DLL01';

--count function
SELECT count(*) AS num_cust FROM Customers;

SELECT count(cust_email) AS num_cust FROM Customers;

--the max function
SELECT max(prod_price) AS max_price FROM Products;

--the min fucntion
SELECT min(prod_price) AS min_price FROM Products;

--the sum function
SELECT sum(quantity) AS items_ordered FROM OrderItems WHERE order_num = 20005;

SELECT sum(item_price*quantity) AS total_price FROM OrderItems WHERE order_num = 20005;

--aggregates on DISTINCT values 
SELECT avg(DISTINCT prod_price) AS avg_price FROM Products WHERE vend_id = 'DLL01';

--combining aggregate functions
SELECT count(*) AS num_items, min(prod_price) AS price_min, max(prod_price) AS price_max, avg(prod_price) AS price_avg FROM Products;

--Challenge 1: statement to determine the total number of items sold using quantity
SELECT count(quantity) AS total_items FROM OrderItems;

--Challenge 2: modify the statement above to determine the total number of items matching BR01
SELECT count(quantity) AS total_items FROM OrderItems WHERE prod_id = 'BR01';

--Challenge 3: statement to determined the price of the most expensive item Products table that costs no more than 10, name the calculated field as max_price\
SELECT max(prod_price) AS max_price FROM Products WHERE prod_price <= 10;
