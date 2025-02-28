-- DDL constraints.
-- 1.Primary key -: you know
-- 2.Foreign key-: you can check on internet .
-- 3.unique - : easy hai you know.
-- 4.check
-- 5.default


-- 4. Check constraint.
-- It will ensure ki koi bhi attribute mein value kitni jani  chahiye.alter
 
 CREATE DATABASE temp2;
 use temp2;
 
 create table account(id int PRIMARY KEY ,name varchar(255) unique,balance int ,CONSTRAINT acc_balance CHECK (balance >200));
 
--  here in above acc_balance is an alias hai. 
--  now if we try to insert a tuple with balance <200 it will give error and will not insert.

INSERT INTO account (id,name,balance) VALUES(1, "Pradeep", 21);


-- Default constraint is used to provide default value to the attribute in case value is not provided by the user the default value will be used.
-- by default we have set the value of balance as 0.
 create table account2(name varchar(255) unique, balance int NOT NULL DEFAULT(0));
 
 INSERT INTO account2(name) VALUES ("PRADEEP");
 
 select * from account2;
 