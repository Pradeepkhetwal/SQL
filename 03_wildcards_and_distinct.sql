-- Pattern Searching /Wildcard.
-- In SQL we have 2 special characters which are % , _.
-- Here % is similar to * in regex which means any number of characters from 0 to n.
-- Where as _ means only one character.
-- So these are called as wildcards.

CREATE DATABASE temp;
use temp;

CREATE TABLE workers (id int PRIMARY KEY AUTO_INCREMENT , name varchar(255), department varchar(255));

INSERT INTO workers(name,department) VALUES("Vishal","CSE"),("Pramod","CSE"),("Ganesh","Mech"),("Pallav","ECE");

-- WILDCARD.
-- LIKE means iske jaisa ho.

-- This will gives all the tuples from the table workers where name contains p. 
SELECT * FROM workers WHERE name LIKE "%p%";

-- This will give all the tuples where name starts with p. here p = P both are treated as same.
SELECT * FROM workers WHERE name LIKE "p%";

-- This will give all the tuples where the 2nd index of the name contains r. 
SELECT * FROM workers WHERE name LIKE "_r%";

-- SORTING (IT is done by using ORDER BY). BY default it is in ascending order but it can be done in descending order by using DESC keyword.

-- will give tuples with name in ascending order.
SELECT * FROM WORKERS ORDER BY name ;

-- Note-: sql is case insensitive language.

-- will give tuples with name in descending order.
SELECT * FROM workers ORDER BY NAME DESC;

-- DISTINCT. it generally provide the distinct values.
-- The DISTINCT keyword in SQL is used to remove duplicate records from the result set. 
-- It ensures that the values in the selected columns are unique and that no duplicate rows are returned.
-- Syntax: sql Copy SELECT DISTINCT column1, column2, ... FROM table_name;
-- When you use DISTINCT, SQL will return only unique (non-duplicate) combinations of the specified columns.
-- If you apply DISTINCT on multiple columns, it will treat each unique combination of values across those columns as a distinct row.

SELECT DISTINCT name FROM workers ; 