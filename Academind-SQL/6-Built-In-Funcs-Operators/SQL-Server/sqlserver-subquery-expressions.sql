-- creating more tables for tests 
CREATE TABLE customers(
    id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    email VARCHAR(200)
);

CREATE TABLE orders(
    id INT IDENTITY(1,1) PRIMARY KEY,
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
SELECT 
    CASE WHEN EXISTS (
        SELECT 1
        FROM customers
        WHERE email = 'xyz@test.com'
    ) THEN 1 ELSE 0 END AS email_exists;