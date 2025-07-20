USE lab_mysql;
ALTER TABLE cars
MODIFY COLUMN vin VARCHAR(20);
ALTER TABLE cars
MODIFY COLUMN year INT(4);

INSERT INTO cars (`vin`, `manufacturer`, `model`,`year`,`color`)
VALUES
("3K096I98581DHSNUP","Volkswagen","Tiguan",2019,"Blue"),
("ZM8G7BEUQZ97IH46V","Peugeot","Rifter",2019,"Red"),
("RKXVNNIHLVVZOUB4M","Ford","Fusion", 2018,"White"),
("HKNDGS7CU31E9Z7JW","Toyota","RAV4", 2018,"Silver"),
("DAM41UDN3CHU2WVF6","Volvo","V60",2019,"Gray");
-- ("DAM41UDN3CHU2WVF6","Volvo","V60 Cross Country", 2019,"Gray");

SELECT * FROM cars;


ALTER TABLE customers
CHANGE COLUMN `customer id` `cust_id` INT,
CHANGE COLUMN `name` `cust_name` VARCHAR(255),
CHANGE COLUMN `phone number` `cust_phone` VARCHAR(30),
CHANGE COLUMN `email` `cust_email` VARCHAR(50),
CHANGE COLUMN `address` `cust_address` VARCHAR(255),
CHANGE COLUMN `city` `cust_city` VARCHAR(20),
CHANGE COLUMN `state/province` `cust_state` VARCHAR(20),
CHANGE COLUMN `country` `cust_country` VARCHAR(20),
CHANGE COLUMN `zip/postal code` `cust_zipcode` INT;

-- ALTER TABLE customers
-- MODIFY COLUMN cust_zipcode INT;
DESCRIBE customers;

INSERT INTO customers(`cust_id` , `cust_name` , `cust_phone` , `cust_email` , `cust_address` , `cust_city` , `cust_state` , `cust_country` , `cust_zipcode` )
VALUES
( 10001 , "Pablo Picasso" , "+34 636 17 63 82" ,, "Paseo de la Chopera, 14" , "Madrid" , "Madrid" , "Spain" , 28045),
( 20001 , "Abraham Lincoln" , "+1 305 907 7086" ,, "120 SW 8th St" , "Miami" , "Florida" , "United States" , 33130),
( 30001 , "Napoléon Bonaparte" , "+33 1 79 75 40 00" ,, "40 Rue du Colisée" , "Paris" , "Île-de-France" , "France" , 75008);


ALTER TABLE salespersons
MODIFY COLUMN name VARCHAR(20),
MODIFY COLUMN store VARCHAR(20);

INSERT INTO salespersons( `staff id` , `name` , `store`)
VALUES
( 00001 , "Petey Cruiser" , "Madrid"),
( 00002 , "Anna Sthesia" , "Barcelona"),
( 00003 , "Paul Molive" , "Berlin"),
( 00004 , "Gail Forcewind" , "Paris"),
( 00005 , "Paige Turner" , "Mimia"),
( 00006 , "Bob Frapples" , "Mexico City"),
( 00007 , "Walter Melon" , "Amsterdam"),
( 00008 , "Shonda Leer" , "São Paulo");

INSERT INTO invoices("id" , "invoice_number" , "date" , "car" , "customer" , "salesperson")
VALUES
(1 , 852399038 , 22-08-2018 , 1 , 1 , 3),
(2 , 731166526 , 31-12-2018 , 3 , 3 , 5),
(3 , 271135104 , 22-01-2019 , 2 , 2 , 7 );

SELECT * FROM salespersons;