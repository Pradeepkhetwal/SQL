-- Alter operations are used to change the schema.
-- These operations are 
-- 1. ADD-: used to add a new column to a existing table.
CREATE DATABASE temp3;
 use temp3;
 create table account(id int PRIMARY KEY ,name varchar(255) unique,balance int);

ALTER TABLE account ADD address varchar(255);

-- it is used to see the output . It is not a part of alter command. It is for my sake to check whether the changes are being made on the table or not.
DESC account;


-- 2.MODIFY -: used to change the datatype of column.

ALTER TABLE account MODIFY name char(10);

-- 3. CHANGE COLUMN -: used to change the name of the column. 

ALTER TABLE account CHANGE COLUMN address home_address varchar(255);

-- 4. DROP COLUMN -: used to drop the column.

ALTER TABLE account DROP COLUMN home_address;

-- 5. RENAME -: rename the table itself.
ALTER TABLE account RENAME Details;
