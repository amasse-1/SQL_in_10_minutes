--Lesson 10: Grouping DATABASE
--creating groups 
SELECT vend_id, count(*) AS num_prods FROM Products GROUP BY vend_id;

--Filtering groups 
SELECT cust_id, count(*) AS orders FROM Orders GROUP BY cust_id HAVING count(*) >= 2;

SELECT vend_id, count(*) AS num_prods FROM Products WHERE prod_price >=4 GROUP BY vend_id HAVING count(*) >=2;

SELECT vend_id, count(*) AS num_prods FROM Products GROUP BY vend_id HAVING count(*) >=2;

--Grouping and Sorting 
SELECT order_num, count(*) AS items FROM OrderItems GROUP BY order_num HAVING count(*) >= 3;

SELECT order_num, count(*) AS items FROM OrderItems GROUP BY order_num HAVING count(*) >= 3 ORDER BY items, order_num;

--Challenge 1: statement that returns the number of lines as order_lines for each order number and sorted by the order_lines
SELECT order_num, count(*) AS order_lines FROM OrderItems GROUP BY order_num ORDER BY order_lines;

--Challenge 2: statement tht returns field named "cheapest_item" which is the lowest cost item for each vendor (using prod_price in Products) and sort by highest to lowest to highest results
SELECT vend_id, min(prod_price) AS cheap_item FROM Products GROUP BY vend_id ORDER BY prod_price DESC;

--Challenge 3: return the order order number for all the orders over 100 items in OrderItems
SELECT order_num FROM OrderItems WHERE quantity >= 100;

--Challenge 4: statement to return the order numbers for all the order totals for at least 1000
SELECT order_num FROM OrderItems GROUP BY order_num HAVING sum(quantity*item_price) >= 1000;

--Challenge 5: what is wrong with this: 
-- SELECT order_num, count(*) AS items FROM OrderItems GROUP BY items HAVING count(*) >=5 ORDER BY items, order_num
--cant group by nor order by the number of lines