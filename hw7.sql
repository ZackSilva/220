USE store;

SELECT customers.id, customers.firstname, customers.lastname, orders.id, orders.product, orders.customerId
FROM customers INNER JOIN orders ON customers.id = orders.customerId;

SELECT customers.id FROM customers INNER JOIN orders WHERE firstname = 'Mary';
SELECT customers.id FROM customers INNER JOIN orders WHERE lastname = 'Baker';

DELETE FROM orders WHERE product = 'Purse';
DELETE FROM customers;