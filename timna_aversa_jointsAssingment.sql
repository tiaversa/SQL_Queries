-- Timna Costa Aversa
USE record_store;
-- 1.Write a query that JOINs the customers and orders tables appropriately so that your results display the customer_id, first_name, 
-- last_name, city, state, email, order_id, order_date. In your code, use table aliases for the two tables and the attributes. Use 
-- the appropriate JOIN in order to include only records that match between the two tables. Filter your results to only include customers 
-- in Ohio and Pennsylvania. Also, sort the results on state, last name and first name.
SELECT c.customer_id, c.first_name, c.last_name, c.city, c.state, c.email, o.order_id, o.order_date
	FROM customers c
    INNER JOIN orders o
	ON c.customer_id = o.customer_id
		WHERE c.state IN ('OH','PE')
        ORDER BY c.state, c.last_name, c.first_name;

-- 2.Write a query that selects all records from the order status lookup table and includes the id and status name in the results. 
-- Also include a subquery that provides the count of each order status in the orders table based on the order status id values. 
-- Sort the results by the status name.
SELECT *,
	(SELECT COUNT(order_status) FROM orders WHERE order_status = l.lkp_status_id GROUP BY order_status)
    AS count_ord_status
    FROM lookup_order_status l
    ORDER BY status;

-- 3.Write a query that UNIONs two SELECT statements together. The two SELECT statements should both select the order ID, customer ID,
-- order date and order status from the orders table. The first of the two statements should include a WHERE clause selecting only orders 
-- with an order date of May 1st, 2020. The second statement should include a WHERE clause selecting only orders with an order date of 
-- June 1st, 2020. UNION those two statements together. Sort your results by customer ID.
SELECT order_id, customer_id, order_date, order_status FROM orders WHERE order_date = '2020-05-01'
UNION
SELECT order_id, customer_id, order_date, order_status FROM orders WHERE order_date = '2020-06-01'
ORDER BY customer_id;
