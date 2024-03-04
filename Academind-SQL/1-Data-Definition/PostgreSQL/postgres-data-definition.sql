------------------------------------------------------
--------- 1) MANAGING DATABASE AND TABLES  -----------
------------------------------------------------------

-- Creating a database
CREATE DATABASE talently;

-- in Postgres, enum is a custom datatype
CREATE TYPE employment_status AS ENUM(
	'employed',
	'self-employed',
	'unemployed'
);

-- Creating users table
CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	full_name VARCHAR(300) NOT NULL,
	yearly_salary INT CHECK (yearly_salary > 0),
	current_status employment_status 
);

CREATE TABLE employers(
	id SERIAL PRIMARY KEY,
	company_name VARCHAR(300) NOT NULL,
	company_address VARCHAR(300) NOT NULL,
	-- NUMERIC(precision, scale)
	-- allowed: 123.12
	-- not allowed: 12345.123, 1.456
	yearly_revenue FLOAT CHECK (yearly_revenue > 0),
	is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations(
	id SERIAL PRIMARY KEY,
	user_id INT,
	employer_id INT,
	message TEXT NOT NULL,
	date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- commands for deleting tables
DROP TABLE users;
DROP TABLE conversations;
DROP TABLE employers;

-- commands for updating table structure
ALTER TABLE employers 
ALTER COLUMN yearly_revenue SET DATA TYPE FLOAT;

ALTER TABLE users 
ALTER COLUMN full_name SET DATA TYPE VARCHAR(300);

ALTER TABLE users 
ALTER COLUMN full_name SET NOT NULL,
ALTER COLUMN current_status SET NOT NULL;

-- adding a constraint to users table
ALTER TABLE users 
ADD CONSTRAINT positive_yearly_salary -- name of constraint
CHECK (yearly_salary > 0);

------------------------------------------------------
--------- 2) INSERTING DATA  -------------------------
------------------------------------------------------

-- inserting some data by POSITION
INSERT INTO users VALUES ('Max Schwarz');

-- inserting data specifying COLUMNS and VALUES
INSERT INTO users (yearly_salary, full_name, current_status)
VALUES (19000, 'Max Schwarz', 'self-employed');

INSERT INTO users (full_name, yearly_salary, current_status)
VALUES ('Anderson Suarez', 25000, 'employed');

INSERT INTO users (full_name, yearly_salary, current_status)
VALUES ('Anna Smith', 0, 'unemployed');

-- inserting data in employers table 
-- (OBS: is_hiring has default false value)
INSERT INTO employers (company_name, company_address, yearly_revenue)
VALUES ('Big Data company', 'Washington Street', 5.58);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('Duck Donalds', 'Paulista Avenue', 2.55, true);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('Construct CO', 'Bandeirantes Avenue', 2.50, true);

INSERT INTO employers (company_name, company_address, yearly_revenue)
VALUES ('Super Supermarket', 'New York Street', 1.00);

-- inserting data in conversations table
-- OBS: date_sent has default value
INSERT INTO conversations(user_name, employer_name,  message)
VALUES ('Anna Smith', 'Big Data company', 'Hello there!');

INSERT INTO conversations(user_name, employer_name,  message)
VALUES ('Anderson Suarez', 'Super Supermarket', 'Thanks!!');

INSERT INTO conversations(user_name, employer_name,  message, date_sent)
VALUES ('Max Schwarz', 'Construct CO', 'Sure thing.', '2023-01-23 21:44:55');


------------------------------------------------------
-------------- 3) QUERYING  -------------------------
------------------------------------------------------

-- selecting all data from users table
SELECT * FROM users;

