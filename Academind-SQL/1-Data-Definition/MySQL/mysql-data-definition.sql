####################################################
######### 1) MANAGING DATABASE AND TABLES  #########
####################################################

# creating a database 
CREATE DATABASE talently;

-- creating users table
CREATE TABLE users(
	id INT PRIMARY KEY AUTO_INCREMENT,
	full_name VARCHAR(300) NOT NULL,
	yearly_salary INT CHECK (yearly_salary > 0),
	-- In MySQL, Enum IS a valid datatype
	current_status ENUM(
		'employed',
		'self-employed',
		'unemployed'
	)
);

CREATE TABLE employers(
	id INT PRIMARY KEY AUTO_INCREMENT,
	company_name VARCHAR(300) NOT NULL,
	company_address VARCHAR(300) NOT NULL,
	# NUMERIC(precision, scale)
	# allowed: 123.12
	# not allowed: 12345.123, 1.456
	yearly_revenue FLOAT CHECK (yearly_revenue > 0),
	is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations(
	id INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,
	employer_id INT,
	message TEXT NOT NULL,
	date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

# commands for deleting tables
DROP TABLE users;
DROP TABLE conversations;
DROP TABLE employers;

# commands for updating table structure

ALTER TABLE employers 
MODIFY COLUMN yearly_revenue FLOAT;

ALTER TABLE users 
MODIFY COLUMN full_name VARCHAR(300);

-- in MySQL, to add NOT NULL constraint must also define the
-- column datatype
ALTER TABLE users 
MODIFY COLUMN full_name VARCHAR(300) NOT NULL,
MODIFY COLUMN current_status ENUM('employed', 'self-employed','unemployed') NOT NULL;

-- adding a constraint to users table
ALTER TABLE users 
ADD CONSTRAINT positive_yearly_salary -- name of constraint
CHECK (yearly_salary > 0);

####################################################
############## 2) INSERTING DATA ###################
####################################################

# inserting some data by POSITION
INSERT INTO users VALUES ('Max Schwarz');

# inserting data in users table specifying COLUMNS and VALUES
INSERT INTO users (yearly_salary, full_name, current_status)
VALUES (19000, 'Max Schwarz', 'self-employed');

INSERT INTO users (full_name, yearly_salary, current_status)
VALUES ('Anderson Suarez', 25000, 'employed');

INSERT INTO users (full_name, yearly_salary, current_status)
VALUES ('Anna Smith', 0, 'unemployed');

# inserting data in employers table 
# (OBS: is_hiring has default false value)
INSERT INTO employers (company_name, company_address, yearly_revenue)
VALUES ('Big Data company', 'Washington Street', 5.58);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('Duck Donalds', 'Paulista Avenue', 2.55, 1);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('Construct CO', 'Bandeirantes Avenue', 2.50, 1);

INSERT INTO employers (company_name, company_address, yearly_revenue)
VALUES ('Super Supermarket', 'New York Street', 1.00);

# inserting data in conversations table
# OBS: date_sent has default value
INSERT INTO conversations(user_name, employer_name,  message)
VALUES ('Anna Smith', 'Big Data company', 'Hello there!');

INSERT INTO conversations(user_name, employer_name,  message)
VALUES ('Anderson Suarez', 'Super Supermarket', 'Thanks!!');

INSERT INTO conversations(user_name, employer_name,  message, date_sent)
VALUES ('Max Schwarz', 'Construct CO', 'Sure thing.', '2023-01-23 21:44:55');

####################################################
#################### 3) QUERYING ###################
####################################################
SELECT * FROM users;