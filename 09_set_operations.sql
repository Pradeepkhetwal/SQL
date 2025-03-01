-- set operations - : Union, Intersection, Minus.

-- Union mein common values from both the table ek hi baar ayegi.
-- Intersection and Minus you know.
-- Imp-: Union can be achieved with UNION keyword in SQL but for intersection and minus we don't have any keyword.
-- so to implement intersection we use inner join.
-- and to implement minus we use left join  along with where clause.
-- set operations are used to combine 2 or more select statements.

CREATE DATABASE TEMP6;

CREATE TABLE dept1 (empid int , name varchar (255), role varchar(255));

CREATE TABLE dept2(empid int , name varchar (255), role varchar(255));

INSERT INTO dept1 values(1,'A','engineer'),(2,'B','salesman'),(3,'C','manager');

INSERT INTO dept2 values(3,'C','manager'),(6,'F','marketing'),(7,'G','salesman');


-- Union
--  list all the employees in the company

SELECT * from dept1 UNION SELECT * FROM dept2;

-- list out all the employees in all the departements who work as salesman.

SELECT name,role FROM dept1 WHERE role = "salesman" UNION SELECT name, role FROM dept2 WHERE role = "salesman";

-- Intersection.
-- List out all the employees who work for both the departement.

SELECT * from dept1 as d INNER JOIN dept2 as d2 using(empid);
-- here using means same as ON d.empid = d2.empid;

-- Minus
-- List out all the employees working in dept 1 and not in dept2.

SELECT dept1.empid, dept1.name -- You can select other columns from dept1 as needed
FROM dept1
LEFT JOIN dept2 ON dept1.empid = dept2.empid
WHERE dept2.empid IS NULL;
