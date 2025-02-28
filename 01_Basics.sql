CREATE DATABASE school;

USE school;

CREATE TABLE student( roll_no int PRIMARY KEY , name varchar(255));

INSERT INTO student(roll_no,name) VALUES (1,"PRADEEP");

SELECT * FROM student;

--  using the concept of dual table we are able to use select keyword without using from keyword
-- we can use select keyword without using from keyword in special cases like when we deal with constant expression or with system functions.

SELECT 4+5; -- IT WILL GIVE 9.
SELECT now(); -- now is a system function it will give current date and time.
SELECT ucase("Pradeep"); -- it will convert the string to upper case.

-- DECSRIBE OR DESC (shorthand) command is used to know about the structure of the table
-- The DESCRIBE command (or DESC for short) in SQL is used to display the structure of a database table.
-- It provides detailed information about the columns in the table, such as the column names, data types, whether they can hold NULL values, key constraints, default values, and extra attributes like AUTO_INCREMENT.

-- DESC TABLE_NAME OR DESCRIBE TABLE_NAME

DESC student;


-- drop command is used to delete any database , table , view , index.
DROP TABLE student;
