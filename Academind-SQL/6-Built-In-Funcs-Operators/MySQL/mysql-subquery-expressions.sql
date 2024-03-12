-- creating more tables for tests 
CREATE TABLE customers(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    email VARCHAR(200)
);

CREATE TABLE orders(
    id INT PRIMARY KEY AUTO_INCREMENT,
    amount_billed NUMERIC(5, 2),
    customer_id INT REFERENCES customers
);

-- inserting additional data
INSERT INTO customers(
    first_name,
    last_name,
    email
)
VALUES(
    'Max',
    'Schwarz',
    'max@test.com'
),(
    'Manu',
    'Lorenz',
    'manu@test.com'
),(
    'Julia',
    'Meyers',
    'juli@test.com'
);

INSERT INTO customers(
    first_name,
    last_name,
    email
)
VALUES(
    'Ken',
    'Brooks',
    'ken@test.com'
);

INSERT INTO orders(
   amount_billed,
   customer_id 
)
VALUES(
    48.99,
    1
), (
    27.45,
    2
), (
    19.49,
    1
), (
    8.49,
    3
);

-- EXISTS() check if a value exists in DB
-- better eficiency than select
SELECT EXISTS(
	SELECT first_name, last_name
	FROM customers
	WHERE email = 'xyz@test.com'
);

-- getting orders from an email
SELECT o.id AS order_id
FROM orders AS o
WHERE EXISTS (
	SELECT email
	FROM customers AS c
	WHERE o.customer_id = c.id AND c.email = 'max@test.com'
);