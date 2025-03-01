 -- DML (Data Modification Language) 
 -- Commands of DML.

-- 1. INSERT
-- 2. UPDATE
-- 3.  DELETE


CREATE DATABASE temp4;
use temp4;

CREATE TABLE customer(id int PRIMARY KEY , name varchar(255) , Address varchar(255), gender varchar(255), city varchar(255), pincode int);

-- INSERT
INSERT INTO customer VALUES(1,"Pradeep", "Haldwani" , 'M', "Nainital",34455),
(2,"Ram","Kashi",'M', "Uttar Pradesh",4234),
(3,"Shyamli","Almora",'F',"Uttarakhand",4355);

-- UPDATE -: It is used to update the tuple values.
-- it will change the address to Dwrahat for the tuple with id =1.
UPDATE customer SET address  = "Dwarahat" WHERE id = 1;
 
-- To change the pin code of all the tuplese we can write. So in SQL we have safe mode which don't allow us to change all the tuples at time so we set off the safe mode by the below command.
-- By setting it 0 it will off and we can updates all the tuples now.
SET SQL_SAFE_UPDATES  = 0;

UPDATE customer SET pincode = 33;

-- Delete-: used to  delete tuple from a table.

DELETE FROM customer WHERE ID = 1;

-- To delete all tuples we have again for this sql_safe_update must be set 0.
DELETE FROM customer;



