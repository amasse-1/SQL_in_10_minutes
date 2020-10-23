--Lesson 7: Creating Calculated Fields

--concatenating fields
SELECT vend_name || '(' || vend_country || ')' FROM Vendors ORDER BY vend_name;

--same thing but trims all space from the right of the value
SELECT RTRIM(vend_name) || '(' || RTRIM(vend_country) || ')' FROM Vendors ORDER BY vend_name; --also have LTRIM so you can trim spaces from the left and TRIM which trims both sides

--Using aliases
SELECT TRIM(vend_name) || ' (' || TRIM(vend_country) || ')' AS vend_title FROM Vendors ORDER BY vend_name;

--Performing Mathematical Calculations
SELECT prod_id, quantity, item_price FROM OrderItems WHERE order_num = 20008;

--using AS keyword
SELECT prod_id, quantity, item_price, quantity*item_price AS expanded_price FROM OrderItems WHERE order_num = 20008;

--Challenge 1: write a statement that retrieves vend_id, vend_name, vend_address, vend_city, amd renaming name to vname, city as vcity and address to vaddress
SELECT vend_id, vend_name AS vname, vend_address AS vaddress, vend_city AS vcity FROM Vendors ORDER BY vname;

--Challenge 2: write a statement that returns prod_id, prod_price, and sale_price from Products table and sales price is the prod_price 10% off (multiply prod_price by 0.9)
SELECT prod_id, prod_price, prod_price * 0.9 AS sale_price FROM Products;
