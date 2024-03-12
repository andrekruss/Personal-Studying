-- IN operator 

-- IDs of customers with name Max or Manu
SELECT c.id, c.first_name 
FROM customers c 
WHERE first_name IN('Max', 'Manu');

-- email of customers who placed an order
SELECT email 
FROM customers 
WHERE id IN(
	SELECT customer_id
	FROM orders
);
