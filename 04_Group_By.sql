-- Data Grouping (GROUP BY)
-- The GROUP BY clause in SQL is used to group rows that have the same values in specified columns into aggregated data, like counting, averaging, or summarizing them.
-- It's commonly used with aggregate functions like COUNT(), SUM(), AVG(), MAX(), and MIN() to perform operations on groups of data rather than on individual rows
-- If no aggregate function is used with group by clause it behave same as distinct.

CREATE DATABASE temp1;
use temp1;

CREATE TABLE workers (id int PRIMARY KEY AUTO_INCREMENT , name varchar(255), department varchar(255));

INSERT INTO workers(name,department) VALUES("Vishal","CSE"),("Pramod","CSE"),("Ganesh","Mech"),("Pallav","ECE");

-- Imp Note -:In case of Group By clause  Whatever the attributes we write in between Select and From must be same as the attributes we write after GROUP BY.

-- IT WILL BEHAVE SAME AS DISTINCTas no aggregate function is used also the attribute between select and from is same as the attribute written after group by and it will return distinct name of departements.
SELECT department From workers GROUP BY department;

-- Group By clause along with aggregate function.
-- This will count people in each department.
SELECT department ,COUNT(department) FROM workers GROUP BY department;

-- similary we can find sum , min , max 

-- If we would have salary as field then this below query would return department with max salary.
-- SELECT departement , MAX(salary) FROM WORKERS GROUP BY departement;

-- HAVING clause.
-- Having is always used with group by it is similar to where clause but where is used to filter rows from the table directly but having is used to filter rows from the grouped rows.
-- if you are using HAVING GROUP BY is necessary.
-- WHERE can be used with SELECT , UPDATE , DELETE keywords and GROUP BY is used with SELECT.

-- will give the department which has more than 1 employeee.
SELECT department , COUNT(department) FROM workers GROUP BY department HAVING COUNT(department) > 1;
