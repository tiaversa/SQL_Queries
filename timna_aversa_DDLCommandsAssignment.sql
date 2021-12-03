-- Timna Costa Aversa

/* 1.Using DDL code (not the GUI) create a new table in the record_store database called customer_reviews. This table will 
store reviews posted by customers on the company's website. The table should have the following attributes -- you choose 
attribute names and data types based on what you think would work well:
	a primary key (PK) attribute
	the product being reviewed
	rating (1 to 5)
	reviewer comments
	reviewer's name
	reviewer's email address*/
CREATE TABLE customer_reviews
(
	cust_reviews_id int NOT NULL AUTO_INCREMENT,
    product_id int DEFAULT NULL,
    rating int DEFAULT NULL,
    reviewer_comments varchar(128) DEFAULT NULL,
    reviewer_name varchar(45) DEFAULT NULL,
    reviewer_email varchar(128) DEFAULT NULL,
    PRIMARY KEY (`cust_reviews_id`)
);
    
    
-- 2.Write ALTER statements that make the following changes to the database:
-- Add an attribute to the customers table called age with an appropriate data type.
ALTER TABLE customers ADD cust_age int;

-- Add an attribute to the new customer_reviews table called posted which will contain date/time of the customer's post.
ALTER TABLE customer_reviews ADD posted DATETIME;

-- Delete the twitter attribute from the customers table.
ALTER TABLE customers DROP COLUMN twitter;

-- Change the data type of the artist attribute in the products table to varchar(128).
ALTER TABLE products MODIFY COLUMN artist varchar(128);

-- Change the data type of the phone attribute in the customers table to varchar(25) 
ALTER TABLE customers MODIFY COLUMN phone varchar(25);