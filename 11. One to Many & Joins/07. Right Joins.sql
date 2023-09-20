SELECT first_name, last_name, order_date, amount FROM customers
JOIN orders ON customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount FROM customers
RIGHT JOIN orders ON customers.id = orders.customer_id;

INSERT INTO orders (amount, order_date, customer_id)
VALUES(100, CURDATE(), 99);

INSERT INTO orders (amount, order_date, customer_id)
VALUES(100, CURDATE(), NULL);

SELECT * FROM orders;