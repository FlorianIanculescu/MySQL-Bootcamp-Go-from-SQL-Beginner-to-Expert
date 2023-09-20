SELECT first_name, last_name, order_date, amount FROM customers
JOIN orders ON orders.customer_id = customers.id;

SELECT first_name, last_name, SUM(amount) AS total FROM customers
JOIN orders ON orders.customer_id = customers.id
GROUP BY first_name, last_name
ORDER BY total;

SELECT first_name, last_name, SUM(amount) AS total FROM customers
JOIN orders ON orders.customer_id = customers.id
GROUP BY customers.id
ORDER BY total;