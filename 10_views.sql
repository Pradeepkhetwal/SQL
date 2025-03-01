-- VIEW.
-- View in sql are customized tables . It can fetch data from one or more tables and present it in a customized format,
CREATE DATABASE temp7;
use temp7;

CREATE TABLE employee (id int PRIMARY KEY , fname varchar(255), lname varchar(255),Age int , emailId varchar(255),Phoneno int,City varchar(255));
INSERT INTO EMPLOYEE VALUES(1,'aman','proto',32,'aman@gmail.com',895,'Delhi'),(2,'Yagya','Narayan',44,'yagya@gmail.com',222,'Palam'),
(3,'Rahul','BD',22,'rahul@gmail.com',444,'Kolkata'),(4,'Jatin','Hermit',31,'jatin@gmail.com',666,'Raipur');

-- creating view of employee table.

CREATE VIEW happyview AS SELECT id, fname FROM employee;

-- Seeing through this view.
SELECT * FROM happyview;

-- Now Altering the view .

ALTER VIEW happyview AS SELECT id , fname , lname, Age FROM employee;

-- Dropping the view.

DROP VIEW IF EXISTS happyview;

