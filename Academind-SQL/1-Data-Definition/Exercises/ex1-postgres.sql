-- EXERCISE 1
-- a) create a shop database
-- b) add a products table with product name, price, description,
-- amount in stock and image
-- c) insert dummy data
-- d) update table adding constraints
-- e) update table adding a primary key column

-- creating database
CREATE DATABASE shop;

-- creating products table
CREATE TABLE products(
	name VARCHAR(300),
	price DECIMAL(7,2),
	description TEXT,
	amount_in_stock INT,
	image VARCHAR(400)
);

-- inserting data
INSERT INTO products (name, price, description, amount_in_stock, image)
VALUES ('Chair', 99.99, 'confortable chair', 50, 'chairurl');

INSERT INTO products (name, price, description, amount_in_stock, image)
VALUES ('Computer', 4000.00, 'last gen computer!', 5, 'computerurl');

INSERT INTO products (name, price, description, amount_in_stock, image)
VALUES ('T-Shirt', 37.50, 'A beautiful t-shirt', 1000, 'shirturl');

INSERT INTO products (name, price, description, amount_in_stock, image)
VALUES ('Sunglasses', 399.99, 'high quality sunglasses', 100, 'sunglassesurl');

INSERT INTO products (name, price, description, amount_in_stock, image)
VALUES ('Perfume', 179.99, 'smelly!', 22, 'perfumeurl');

-- adding constraints
ALTER TABLE products 
ALTER COLUMN name SET NOT NULL,
ALTER COLUMN price SET NOT NULL,
ALTER COLUMN amount_in_stock SET NOT NULL;

ALTER TABLE products 
ADD CONSTRAINT positive_price
CHECK (price > 0);

ALTER TABLE products 
ADD CONSTRAINT positive_stock
CHECK (amount_in_stock >= 0);

-- adding a primary key column
ALTER TABLE products 
ADD COLUMN id SERIAL PRIMARY KEY;

