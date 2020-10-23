--Lesson 6: Using Wildcard Filtering

--Using the LIKE operator 
SELECT prod_id, prod_name FROM Products WHERE prod_name LIKE 'Fish%';

-- on both sides 
SELECT prod_id, prod_name FROM Products WHERE prod_name LIKE '%bean bag%';

--in the middle
SELECT prod_id, prod_name FROM Products WHERE prod_name LIKE 'F%y';

--Using _ wildcard
SELECT prod_id, prod_name FROM Products WHERE prod_name LIKE '__ inch teddy bear';

--using the % wildcard and showing the _ shows the specific number of characters where the % can zero to multiple characters
SELECT prod_id, prod_name FROM Products where prod_name LIKE '% inch teddy bear';

--brackets operator (don't work with sqlite)
-- if it did work: SELECT cust_contact FROM Customers WHERE cust_contact LIKE '[JM]%' ORDER BY cust_contact;

--Challenge 1: retrieve prod_name and prod_desc from Products returning only products with the word toy in the description
SELECT prod_name, prod_desc FROM Products WHERE prod_desc LIKE '%toy%';

--Challenge 2: retrieve prod_name and prod_desc from Products returning only products with 
--the word toy isn't the description
SELECT prod_name, prod_desc FROM Products WHERE prod_desc NOT LIKE '%toy%';

--Challenge 3: retrieve prod_name and prod_desc from Products to find a description that has both the words toy and carrots
SELECT prod_name, prod_desc FROM Products WHERE prod_desc LIKE '%toy%' AND prod_desc LIKE '%carrots%';

--Challenge 4: retrieve prod_name and prod_desc from Products to find a description 
--that has both the words toy and carrots (in that order aka toy then carrots)
SELECT prod_name, prod_desc FROM Products WHERE prod_desc LIKE '%toy%carrots%';
