------------------------------------------------------
--------- 1) MANAGING DATABASE AND TABLES  -----------
------------------------------------------------------

-- Creating a database
CREATE DATABASE talently;

-- In SQL Server, enum can be implemented by a LOOKUP TABLE 
-- this table stores the ENUM values and is referenced in other tables

-- creating LOOKUP TABLE (it's just a common table)
CREATE TABLE employment_status(
	id int PRIMARY KEY identity,
	value varchar(20)
);

-- creating the 'ENUM' values in the LOOKUP TABLE
INSERT INTO employment_status (value) 
VALUES ('employed'), ('self-employed'), ('unemployed');

-- Creating users table
CREATE TABLE users(
	id INT IDENTITY(1, 1) PRIMARY KEY,
	full_name VARCHAR(300) NOT NULL,
	yearly_salary INT CHECK (yearly_salary > 0),
	current_status_id INT,
	FOREIGN KEY (current_status_id) 
	REFERENCES employment_status(id)
);

CREATE TABLE employers(
	id INT IDENTITY(1, 1) PRIMARY KEY,
	company_name VARCHAR(300) NOT NULL,
	company_address VARCHAR(300) NOT NULL,
	-- NUMERIC(precision, scale)
	-- allowed: 123.12
	-- not allowed: 12345.123, 1.456
	yearly_revenue FLOAT CHECK (yearly_revenue > 0),
	is_hiring BIT DEFAULT 0
);

CREATE TABLE conversations(
	id INT IDENTITY(1, 1) PRIMARY KEY,
	user_id INT,
	employer_id INT,
	message TEXT NOT NULL,
	date_sent DATETIME DEFAULT getdate()
);

-- commands for deleting tables
DROP TABLE users;
DROP TABLE conversations;
DROP TABLE employers;

-- commands for updating table structure
ALTER TABLE employers 
DROP COLUMN yearly_revenue;
ALTER TABLE employers 
ADD yearly_revenue FLOAT;

ALTER TABLE users 
ALTER COLUMN full_name VARCHAR(300);

ALTER TABLE users 
ALTER COLUMN full_name VARCHAR(300) NOT NULL; 

-- adding a constraint to users table
ALTER TABLE users 
ADD CONSTRAINT positive_yearly_salary -- name of constraint
CHECK (yearly_salary > 0);


------------------------------------------------------
--------- 2) INSERTING DATA  -------------------------
------------------------------------------------------

-- inserting some data 
INSERT INTO users (yearly_salary, full_name, current_status_id)
VALUES (19000, 'Max Schwarz', 1)

INSERT INTO users (full_name, yearly_salary, current_status_id)
VALUES ('Anderson Suarez', 25000, 2);

INSERT INTO users (full_name, yearly_salary, current_status_id)
VALUES ('Anna Smith', 0, 3);

-- inserting data in employers table 
-- (OBS: is_hiring has default false value)
INSERT INTO employers (company_name, company_address, yearly_revenue)
VALUES ('Big Data company', 'Washington Street', 5.58);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('Duck Donalds', 'Paulista Avenue', 2.55, 1);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('Construct CO', 'Bandeirantes Avenue', 2.50, 1);

INSERT INTO employers (company_name, company_address, yearly_revenue)
VALUES ('Super Supermarket', 'New York Street', 1.00);

-- inserting data in conversations table
-- OBS: date_sent has default value
INSERT INTO conversations(user_name, employer_name,  message)
VALUES ('Anna Smith', 'Big Data company', 'Hello there!');

INSERT INTO conversations(user_name, employer_name,  message)
VALUES ('Anderson Suarez', 'Super Supermarket', 'Thanks!!');

INSERT INTO conversations(user_name, employer_name,  message, date_sent)
VALUES ('Max Schwarz', 'Construct CO', 'Sure thing.', '2023-01-23T21:44:55');

------------------------------------------------------
-------------- 3) QUERYING  -------------------------
------------------------------------------------------
SELECT * FROM users;

