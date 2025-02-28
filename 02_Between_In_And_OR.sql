CREATE DATABASE company;
USE company;

CREATE TABLE record(id INT PRIMARY KEY AUTO_INCREMENT , first_name varchar(255), last_name varchar(255), salary int , Joining_date DATE , Department varchar(255));

INSERT INTO record(first_name,last_name,salary,Joining_date,Department) VALUES
("Pradeep" , "Singh", 100000,'2002-09-11',"Software"),
("Rahul","yadav",400000,'2002-09-12',"Software");

INSERT INTO record(first_name,last_name,salary,Joining_date,Department) VALUES("Sakshi","jain" , 500000,'2002-09-13',"HR");

SELECT first_name FROM record WHERE salary > 20;

-- Between here range are inclusive means [10000,30000]. means 10000 and 30000 will also be included.
SELECT first_name FROM record WHERE salary BETWEEN 10000 AND 30000;

-- or statement Where condition1 or condition2.

SELECT * from record WHERE first_name = "Pradeep" OR "Sumit" OR "JASSY";


-- IN can be used to reduce the OR statements.
SELECT * from record WHERE first_name IN ("Pradeep" , "Sumit" , "JASSY");

-- NOT IN

SELECT * from record WHERE first_name NOT IN ("abc","Pradeep");




