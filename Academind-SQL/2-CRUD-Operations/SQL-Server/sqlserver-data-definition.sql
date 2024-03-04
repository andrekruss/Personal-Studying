------------------------------------------------------
--------- 1) CREATING DATABASE AND TABLES ------------
------------------------------------------------------

CREATE DATABASE sales_example;

CREATE TABLE sales(
	id INT IDENTITY(1,1) PRIMARY KEY,
	date_created DATE DEFAULT (GETDATE()),
	date_fulfilled DATE,
	customer_name VARCHAR(300) NOT NULL,
	product_name VARCHAR(300) NOT NULL,
	volume NUMERIC(10, 3) NOT NULL CHECK (volume >= 0),
	is_recurring BIT DEFAULT 0,
	is_disputed BIT DEFAULT 0
);
