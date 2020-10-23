--Lesson 3: Sorting Retrieved Data
 SELECT prod_name FROM Products;
 
--order the products by name 
SELECT prod_name FROM Products ORDER BY prod_name;

--order several columns: cheapest first, alphabetical second  
SELECT prod_id, prod_price, prod_name FROM Products ORDER BY prod_price, prod_name;

--sorting by column positon: order by 2 means second column and then order by 3 means the third column 
SELECT prod_id, prod_price, prod_name FROM Products ORDER BY 2,3;

--specify the direction of the sort, highest to lowest price
SELECT prod_id, prod_price, prod_name FROM Products ORDER BY prod_price DESC;

-- now the same but with prod_name 
SELECT prod_id, prod_price, prod_name FROM Products ORDER BY prod_price DESC, prod_name;

--Challenge 1: customer name from customers table from z to a
SELECT cust_name FROM Customers ORDER BY cust_name DESC;

--Challenge 2: retrieve customer id and order number from Orders table and sort the results by customer id and then by order date in reverse
SELECT cust_id, order_num FROM Orders ORDER BY cust_id, order_date DESC; --doesnt show the date but shows them in the reverse order

--Challenge 3: dispay qunatity and price from the OrderItems table sorted with highest quantity and highest price first_value
SELECT quantity, item_price FROM OrderItems ORDER BY quantity DESC, item_price DESC;

/* Challnege 4: what is wrong with following statement:
SELECT vend_name FROM Vendors ORDER vend_name DESC; */
--supposed to be "ORDER BY" not just "ORDER"
SELECT vend_name FROM Vendors ORDER BY vend_name DESC;