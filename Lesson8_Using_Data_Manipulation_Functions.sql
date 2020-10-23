--Lesson 8: Using Data Manipulation Functions 

--Text manipulation, functions are not case sensitive so it can be upper or lowercase 
SELECT vend_name, UPPER(vend_name) AS vend_name_upcase FROM Vendors ORDER BY vend_name;

--with Soundex vs without
SELECT cust_name, cust_contact FROM Customers WHERE cust_contact = 'Michael Green';

SELECT cust_name, cust_contact FROM Customers WHERE soundex(cust_contact) = soundex('Michael Green');

-- date and time manipulation using strftime function
SELECT order_num FROM Orders WHERE strftime('%Y', order_date) = '2020';

--Challenge 1: retrieve cust_id, cust_name and create user_login with first 2 letters of the first name and 3 letters of city FROM Customers
SELECT cust_id, cust_name, upper(substr(cust_contact,1,2) || substr(cust_city,1,3)) AS user_login FROM Customers;

--Challenge 2: retrieve the order_num, order_date for all the orders from january 2020 sort by date from Orders
SELECT order_num, order_date FROM Orders WHERE strftime('%m-%Y', order_date) = '01-2020' ORDER BY order_date;

