USE lab_mysql;
ALTER TABLE cars
MODIFY COLUMN vin VARCHAR(20);
ALTER TABLE cars
MODIFY COLUMN year INT(4);

INSERT INTO cars (id,`vin`, `manufacturer`, `model`,`year`,`color`)
VALUES
(1,"3K096I98581DHSNUP","Volkswagen","Tiguan",2019,"Blue"),
(2,"ZM8G7BEUQZ97IH46V","Peugeot","Rifter",2019,"Red"),
(3,"RKXVNNIHLVVZOUB4M","Ford","Fusion", 2018,"White"),
(4,"HKNDGS7CU31E9Z7JW","Toyota","RAV4", 2018,"Silver"),
(5,"DAM41UDN3CHU2WVF6","Volvo","V60",2019,"Gray"),
(6,"DAM41UDN3CHU2WVF6","Volvo","V60 Cross Country", 2019,"Gray");

SELECT * FROM cars;


ALTER TABLE customers
CHANGE COLUMN `customer_id` `cust_id` VARCHAR(30),
CHANGE COLUMN `name` `cust_name` VARCHAR(255),
CHANGE COLUMN `phone_number` `cust_phone` VARCHAR(30),
CHANGE COLUMN `email` `cust_email` VARCHAR(50),
CHANGE COLUMN `address` `cust_address` VARCHAR(255),
CHANGE COLUMN `city` `cust_city` VARCHAR(20),
CHANGE COLUMN `state/province` `cust_state` VARCHAR(20),
CHANGE COLUMN `country` `cust_country` VARCHAR(20),
CHANGE COLUMN `zip/postal_code` `cust_zipcode` INT;

-- ALTER TABLE customers
-- MODIFY COLUMN cust_zipcode INT;
DESCRIBE customers;

INSERT INTO customers(id,`cust_id` , `cust_name` , `cust_phone` , `cust_address` , `cust_city` , `cust_state` , `cust_country` , `cust_zipcode` )
VALUES
( 1,10001 , "Pablo Picasso" , "+34 636 17 63 82" , "Paseo de la Chopera, 14" , "Madrid" , "Madrid" , "Spain" , 28045),
( 2,20001 , "Abraham Lincoln" , "+1 305 907 7086" , "120 SW 8th St" , "Miami" , "Florida" , "United States" , 33130),
( 3,30001 , "Napoléon Bonaparte" , "+33 1 79 75 40 00" , "40 Rue du Colisée" , "Paris" , "Île-de-France" , "France" , 75008);

-- INSERT INTO customers(id,`cust_id` , `cust_name` , `cust_phone` , `cust_email` , `cust_address` , `cust_city` , `cust_state` , `cust_country` , `cust_zipcode` )
-- VALUES
-- ( 1,10001 , "Pablo Picasso" , "+34 636 17 63 82" ,, "Paseo de la Chopera, 14" , "Madrid" , "Madrid" , "Spain" , 28045),
-- ( 2,20001 , "Abraham Lincoln" , "+1 305 907 7086" ,, "120 SW 8th St" , "Miami" , "Florida" , "United States" , 33130),
-- ( 3,30001 , "Napoléon Bonaparte" , "+33 1 79 75 40 00" ,, "40 Rue du Colisée" , "Paris" , "Île-de-France" , "France" , 75008);

DESCRIBE customers;

SELECT * FROM customers;

ALTER TABLE salespersons
MODIFY COLUMN name VARCHAR(20),
MODIFY COLUMN store VARCHAR(20);

INSERT INTO salespersons( id,`staff_id` , `name` , `store`)
VALUES
( 1,"00001" , "Petey Cruiser" , "Madrid"),
( 2,"00002" , "Anna Sthesia" , "Barcelona"),
( 3,"00003" , "Paul Molive" , "Berlin"),
( 4,"00004" , "Gail Forcewind" , "Paris"),
( 5,"00005" , "Paige Turner" , "Mimia"),
( 6,"00006" , "Bob Frapples" , "Mexico City"),
( 7,"00007" , "Walter Melon" , "Amsterdam"),
( 8,"00008" , "Shonda Leer" , "São Paulo");

SELECT * FROM salespersons;

-- ALTER TABLE invoices
-- CHANGE COLUMN staff_id salesperson INT,
-- CHANGE COLUMN customer_id customer VARCHAR(20);

INSERT INTO invoices(id, `invoice_number` , `date` , `car` , `customer_id` , `staff_id`)
VALUES
(1 , "852399038" , "2018-08-22" , 1 , 1 , 3),
(2 , "731166526" , "2018-12-31" , 3 , 3 , 5),
(3 , "271135104" , "2019-01-22" , 2 , 2 , 7 );

SELECT * FROM invoices;