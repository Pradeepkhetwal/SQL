-- Joins
CREATE DATABASE temp5;
USE temp5;
CREATE TABLE employee (id int PRIMARY KEY , fname varchar(255), lname varchar(255),Age int , emailId varchar(255),Phoneno int,City varchar(255));
CREATE TABLE client (id int PRIMARY KEY, first_name varchar(255) , last_name varchar(255), age int , emailId varchar(255), PhoneNo int,City varchar(255),empId int, FOREIGN KEY (empId) REFERENCES employee(id));
CREATE TABLE project ( id int PRIMARY KEY , empID int , name varchar (255),startdate date,clientId int,FOREIGN KEY (empId) REFERENCES employee(id), FOREIGN KEY (clientId) REFERENCES client(id));


INSERT INTO project VALUES(1,1,'A','2021-04-21',3),(2,2,'B','2021-03-12',1),(3,3,'C','2021-01-16',3),(4,3,'D','2021-04-27',2);
INSERT INTO EMPLOYEE VALUES(1,'aman','proto',32,'aman@gmail.com',895,'Delhi'),(2,'Yagya','Narayan',44,'yagya@gmail.com',222,'Palam'),
(3,'Rahul','BD',22,'rahul@gmail.com',444,'Kolkata'),(4,'Jatin','Hermit',31,'jatin@gmail.com',666,'Raipur');
INSERT INTO client VALUES(1, 'mac','rogers',47,'mac@gmail.com',333,'Kolkata',3),(2,'Max','porier',27,'max@gmail.com',222,'Kolkata',3),(3,'Peter','Jain',24,'peter@abc',999,'Delhi',1),(4,'Shushant','Agarwal',23,'shushant@yahoo.com',454454,'Hyderabad',2);

-- Inner Join
-- Enlist all the employee id's,names along with the project allocated to them.

SELECT e.id,e.fname ,p.id,p.name FROM employee as e INNER JOIN project as p ON e.id = p.empId;

-- Can we use inner join without inner join keyword? Yes we can as we have done below.
SELECT * FROM employee , project WHERE employee.id = project.empId;

-- LEFT JOIN .

-- Fetch out each project allocated to each employee.

SELECT * FROM employee as e LEFT JOIN project as p  ON e.id = p.empId;

-- right join.
-- list out all the projects and the employee names along with the allocated email id.

SELECT e.fname,e.id,e.emailId  from employee as e RIGHT JOIN project as p on e.id = p.empId;
