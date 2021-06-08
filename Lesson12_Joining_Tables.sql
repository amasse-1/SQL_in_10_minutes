--Lesson 12: Joining Tables--

--Creating a Join--
SELECT vend_name, prod_name, prod_price 
FROM Vendors, Products 
WHERE Vendors.vend_id = Products.vend_id;

--Inner Join--
SELECT vend_name, prod_name, prod_price 
FROM Vendors 
INNER JOIN Products ON Vendors.vend_id = Products.vend_id;

--Joining Multiple tables--
SELECT prod_name, vend_name, prod_price, quantity 
FROM OrderItems, Products, Vendors 
WHERE Products.vend_id = Vendors.vend_id AND OrderItems.prod_id = Products.prod_id 
AND order_num = 20007;

SELECT cust_name, cust_contact
FROM Customers
WHERE cust_id IN (SELECT cust_id
					FROM Orders
					WHERE order_num IN (SELECT order_num
										FROM OrderItems
										WHERE prod_id = 'RGAN01'));
										
--Challenge #1--
--without inner join-- 
SELECT cust_name, order_num 
FROM Customers, Orders
WHERE Customers.cust_id = Orders.cust_id
ORDER BY order_num;
--ORDER BY cust_name;

-- with inner join -- 
SELECT cust_name, order_num 
FROM Customers
INNER JOIN Orders ON Customers.cust_id = Orders.cust_id
ORDER BY cust_name
--ORDER BY order_num;

--Challenge #2--
SELECT cust_name, order_num, (SELECT sum(quantity * item_price) 
								FROM OrderItems 
								WHERE Orders.order_num = OrderItems.order_num) AS OrderTotal
FROM Customers
INNER JOIN Orders ON Customers.cust_id = Orders.cust_id 
ORDER BY cust_name;

--Challenge #3--
