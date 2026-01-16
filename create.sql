CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars(
    id INT AUTO_INCREMENT PRIMARY KEY,
    `vin` VARCHAR(255) NOT NULL ,
    `manufacturer` VARCHAR(255) NOT NULL,
    `model` VARCHAR(255) NOT NULL,
    `year` INT NOT NULL,
    `color` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    `customer_id` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `phone_number` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NULL,
    `address` VARCHAR(255) NOT NULL,
    `city` VARCHAR(255) NOT NULL,
    `state/province` VARCHAR(255) NOT NULL,
    `country` VARCHAR(255) NOT NULL,
    `zip/postal_code` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons(
    id INT AUTO_INCREMENT PRIMARY KEY,
    `staff_id` VARCHAR(255) NOT NULL,
    `store` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices(
    id INT AUTO_INCREMENT PRIMARY KEY,
    `invoice_number` VARCHAR(255) NOT NULL,
    `date` DATE NOT NULL,
    `car` INT NOT NULL,
    `customer_id` INT NOT NULL,
    `staff_id` INT NOT NULL,
    FOREIGN KEY (car) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (staff_id) REFERENCES salespersons(id)
);

-- ALTER TABLE
--     `salespersons` ADD CONSTRAINT `salespersons_name_foreign` FOREIGN KEY(`name`) REFERENCES `invoices`(`staff id`);
-- ALTER TABLE
--     `invoices` ADD CONSTRAINT `invoices_vin_foreign` FOREIGN KEY(`vin`) REFERENCES `cars`(`vin`);
-- ALTER TABLE
--     `customers` ADD CONSTRAINT `customers_name_foreign` FOREIGN KEY(`name`) REFERENCES `invoices`(`customer id`);