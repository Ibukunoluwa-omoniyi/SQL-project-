SELECT *
FROM customers
    -- WHERE customer_id=1
ORDER BY first_name;
SELECT first_name, 
last_name,
points, 
points * 10 +100 AS 'discount_factor'
FROM customers;

SELECT  DISTINCT  state
FROM customers;
SELECT  name, unit_price, unit_price *1.1 AS new_price
FROM products ;
SELECT *
FROM customers
WHERE points > 3000;
SELECT *
FROM customers
WHERE state != 'VA';

SELECT *
FROM orders
WHERE order_date >= '2019-01-30';
SELECT *
FROM customers
WHERE birth_date >'1990-01-01' AND points >1000;
SELECT *
FROM customers
WHERE birth_date >'1990-01-01' OR (points >1000 AND state='VA');
SELECT *
FROM customers
WHERE  NOT (birth_date <='1990-01-01') AND (points <=1000);
SELECT *  
 FROM order_items WHERE order_id =6  AND unit_price * quantity > 30;
 SELECT *
 FROM customers
 WHERE state IN( 'VA', 'FL', 'GA');
 SELECT *
 FROM products
 WHERE quantity_in_stock IN(49, 38, 72);
 SELECT *
 FROM customers
 WHERE points BETWEEN 1000 AND 3000;
 SELECT *
 FROM customers
 WHERE birth_date BETWEEN '1990-10-01'  AND '2000-01-01';
SELECT *
 FROM customers
 WHERE last_name LIKE 'B%';
 SELECT *
 FROM customers
 WHERE address LIKE '%trail%' OR 
	   address LIKE'%avenue%';
 SELECT *
 FROM customers
 WHERE last_name REGEXP 'Field';
  SELECT *
 FROM customers
 WHERE phone IS  NULL;
  SELECT *
 FROM orders
 WHERE shipped_date IS NULL;
SELECT *, quantity * unit_price AS total_price
FROM order_items
WHERE order_id=2
ORDER BY total_price DESC;
SELECT *
FROM customers
LIMIT 3;
SELECT order_id, first_name, last_name
FROM orders
INNER JOIN customers
ON orders.customer_id= customers.customer_id;
SELECT products.product_id, products.name, order_items.quantity, order_items.unit_price
FROM order_items
INNER JOIN products
ON products. product_id= order_items.product_id;
SELECT *
FROM sql_store.order_items 
INNER JOIN sql_inventory.products
ON order_items.product_id=products.product_id;
SELECT 
orders.order_id, orders.order_date, customers.first_name, customers.last_name, order_statuses.name AS status
FROM orders
INNER JOIN customers
ON orders.customer_id= customers. customer_id
INNER JOIN order_statuses
ON orders.status=order_statuses.order_status_id;

SELECT clients.name, payments.amount,payments.payment_method
FROM clients
INNER JOIN payments
ON clients.client_id=payments. client_id
INNER JOIN payment_methods
ON payments.payment_method=payment_methods.payment_method_id;

SELECT products.product_id,products.name, order_items.quantity
FROM products
LEFT JOIN order_items
ON products.product_id=order_items.product_id;
SELECT first_name
FROM customers
UNION
SELECT name
FROM shippers;
INSERT INTO products (name, quantity_in_stock, unit_price)
VALUES( 'products1',10,1.95)




 
 
 
 
 
 




