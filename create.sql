CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars(
    `vin` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
    `manufacturer` VARCHAR(255) NOT NULL,
    `model` VARCHAR(255) NOT NULL,
    `year` DATE NOT NULL,
    `color` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers(
    `customer id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `phone number` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NULL,
    `address` VARCHAR(255) NOT NULL,
    `city` VARCHAR(255) NOT NULL,
    `state/province` LINESTRING NOT NULL,
    `country` LINESTRING NOT NULL,
    `zip/postal code` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons(
    `staff id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `store` LINESTRING NOT NULL,
    `name` LINESTRING NOT NULL
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices(
    `invoice number` VARCHAR(255) NOT NULL PRIMARY KEY,
    `date` DATE NOT NULL,
    `vin` BIGINT NOT NULL,
    `customer id` BIGINT NOT NULL,
    `staff id` BIGINT NOT NULL
    -- PRIMARY KEY(`invoice number`)
);
ALTER TABLE
    `salespersons` ADD CONSTRAINT `salespersons_name_foreign` FOREIGN KEY(`name`) REFERENCES `invoices`(`staff id`);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_vin_foreign` FOREIGN KEY(`vin`) REFERENCES `cars`(`vin`);
ALTER TABLE
    `customers` ADD CONSTRAINT `customers_name_foreign` FOREIGN KEY(`name`) REFERENCES `invoices`(`customer id`);