-- TRANSACTIONS, ROLLBACK, COMMIT, SAVEPOINTS

-- will turn session into a transaction
START TRANSACTION;

INSERT INTO customers (
	first_name,
	last_name,
	email 
)
VALUES(
	'Maria',
	'Jones',
	'maria@test.com'
);

INSERT INTO orders(
	amount_billed,
	customer_id 
)
VALUES(
	103.12,
	5
);

SELECT * FROM customers;

-- rollback changes (ends transaction)
ROLLBACK;

START TRANSACTION;

INSERT INTO customers(
	first_name,
	last_name,
	email
)
VALUES(
	'Jonas',
	'Blue',
	'jonas@test.com'
);

INSERT INTO orders(
	amount_billed,
	customer_id 
)
VALUES(
	103.12,
	6
);

SELECT * FROM customers;
SELECT * FROM orders;

-- commiting transaction to DB (ends transaction)
COMMIT;

START TRANSACTION;

INSERT INTO customers (
	first_name,
	last_name,
	email
)
VALUES (
	'Marry',
	'White',
	'white@test.com'
);

SELECT * FROM customers;

SAVEPOINT save_1;

INSERT INTO customers (
	first_name,
	last_name,
	email
)
VALUES (
	'Antonio',
	'Alves',
	'ant@test.com'
);

SELECT * FROM customers;

-- doesn't end transaction
ROLLBACK TO save_1;

COMMIT;
