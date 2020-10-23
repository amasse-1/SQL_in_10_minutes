--Lesson5: Advanced Data Filtering

--using AND operator 
SELECT prod_id, prod_price, prod_name FROM Products where vend_id = 'DLL01' AND prod_price <=4;

--using OR operator
SELECT prod_id, prod_price, prod_name FROM Products WHERE vend_id = 'DLL01' OR vend_id = 'BRS01';

--understanding order evalutation
SELECT prod_name, prod_price FROM Products WHERE vend_id = 'DLL01' OR vend_id = 'BRS01' AND prod_price >=10;

--using parenthesis using order evaluation 
SELECT prod_name, prod_price FROM Products WHERE (vend_id = 'DLL01' OR vend_id = 'BRS01') AND prod_price >=10;

--using the IN operator
SELECT prod_name, prod_price FROM Products WHERE vend_id in ('DLL01', 'BRS01') ORDER BY prod_name;

--the statement above does the same thing as the statement below 
SELECT prod_name, prod_price FROM Products WHERE vend_id = 'DLL01' OR vend_id = 'BRS01' ORDER BY prod_name;

--using the NOT operator 
SELECT prod_name FROM Products WHERE NOT vend_id = 'DLL01' ORDER BY prod_name;

--using the <> and NOT operator doing the same things (same as the statement above)
SELECT prod_name FROM Products WHERE vend_id <> 'DLL01' ORDER BY prod_name;

--Challenge 1: statement to retrieve the vendor name from the Vendors table  returning vendors in california 
SELECT vend_name FROM Vendors WHERE vend_country = 'USA' AND vend_state = 'CA';

--Challenge 2: statement to find all orders where at least 100 of the items br01 br02 or bro3, filter by prod_id and quantity.
--return the order_num, prod_id, and quantity
SELECT order_num, prod_id, quantity FROM OrderItems WHERE quantity >=100 AND (prod_id IN ('BR01', 'BR03')) ORDER BY prod_id, quantity;

--Challenge 3: write a statement that returns the prod_name, prod_price from Products for all products with a price between 3 and 6 use an
-- AND statement and sort by price
SELECT prod_name, prod_price FROM Products WHERE prod_price BETWEEN 3 and 6 ORDER BY prod_price;

--Challenge 4: what is wrong with the following statement:
--SELECT vend_name FROM Vendors ORDER BY vend_name WHERE vend_country = 'USA' AND vend_state = 'CA'
--You need to order by vend_name after you filter your data also this will only give you one vendor so, you wont need to order by any name. 
SELECT vend_name FROM Vendors WHERE vend_country = 'USA' AND vend_state = 'CA' ORDER BY vend_name

