-- Timna Costa Aversa
USE record_store;
-- 1.Write an update statement that changes the zip codes of all customers in the state of Utah to 84000-0000.
-- SELECT * FROM customers WHERE state = 'UT';
UPDATE customers SET zip = '84000-0000' WHERE state = 'UT';

-- 2.Write an update statement that changes the order status in the orders table to 9 for all records with an order 
-- date of April 30, 2020 and customer_id's 178, 183 and 186.
UPDATE orders SET order_status = 9 WHERE order_date = '2020-04-30' AND customer_id IN (178, 183, 186);

-- 3.The customers table has a duplicate customer named "Delia Massey." Write all the SQL steps necessary to delete 
-- the second Delia Massey record (the one with the larger customer_id value). Your solution should leave no orphan records in the database..
SELECT * FROM customers WHERE first_name = 'Delia' AND last_name = 'Massey'; -- id = 173
SELECT * FROM orders WHERE customer_id = 173;

SET foreign_key_checks = 0; -- to be able to delete a foreing key

DELETE FROM orders WHERE customer_id = 173;
DELETE FROM customers WHERE first_name = 'Delia' AND last_name = 'Massey' AND customer_id = 173;