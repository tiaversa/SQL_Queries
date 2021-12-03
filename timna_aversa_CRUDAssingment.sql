-- Timna Costa Aversa

-- 1.Describe in a short paragraph what data validation is and why it is important during CRUD operations.
/* Validation is the process of adding extra measurements into the code to ensure that the inserted
data is accurate and consistente to the rest of the data. When inputing and updating a database you don't 
want to add bad data or inconsistent data so this step makes sure that the inputed data is good and match
with the rest.*/

-- 2.Review the structure of the products table. INSERT to add one new record to the products table. Populate 
-- every appropriate attribute in the record with valid data values (you can make them up as you wish).
-- SELECT * FROM products WHERE released = 2012;
INSERT INTO products (artist, title, released, price, media, stock) VALUES('Taylor Swift', 'RED', 2012, 20.00, 'CD', 10);

-- 3.Review the structure of the customers table. INSERT 5 new customers into the customers table using a single 
-- INSERT statement (not 5 separate INSERT statements). For each of the 5 new customers, populate every attribute 
-- in the table with valid data values for each customer (you can make them up as you wish).
-- SELECT * FROM customers WHERE last_name = 'Keila';
INSERT INTO customers (first_name, last_name, address1, city, state, zip, country, phone, email, twitter) VALUES
	('Timna', 'Aversa', '5734 Red Canon Dr', 'Taylorsville', 'UT', 63465-8652, 'US', 92645833638, '8373hrwuru3@gmail.com', '@hshdkjd'),
	('Carol', 'Bells', '5736 Redon Dr', 'Ville', 'UT', 63465-8451, 'US', 92645833478, '83wuru3@gmail.com', '@hskjd'),
	('Nona', 'Dudle', '574 French Dr', 'Nephi', 'UT', 63465-6352, 'US', 92473836336, '8373mchsbu3@gmail.com', '@babbnsn'),
	('Kena', 'Keila', '234 Jumbo Dr', 'Taylorsville', 'UT', 63975-8652, 'US', 6789833638, '8njshbhdbcn3@gmail.com', '@sbdjcbsjd'),
	('Leila', 'Leno', '587 ComeOn Dr', 'Taylorsville', 'UT', 54235-8652, 'US', 82652736283, 'nfh73hrwuru3@gmail.com', '@hs_nabsd');