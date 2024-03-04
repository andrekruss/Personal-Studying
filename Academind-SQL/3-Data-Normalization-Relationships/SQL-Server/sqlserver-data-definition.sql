CREATE DATABASE relations;

CREATE TABLE users(
	id INT IDENTITY(1,1) PRIMARY KEY,
	address_id INT NOT NULL,
	first_name VARCHAR(300) NOT NULL,
	last_name VARCHAR(300) NOT NULL,
	email VARCHAR(300) NOT NULL
);

CREATE TABLE addresses(
	id INT IDENTITY(1,1) PRIMARY KEY,
	city_id INT NOT NULL,
	street VARCHAR(300) NOT NULL,
	house_number VARCHAR(50) NOT NULL
);

CREATE TABLE cities(
	id INT IDENTITY(1,1) PRIMARY KEY,
	name VARCHAR(300) NOT NULL
);

-- recreating the tables with FOREIGN KEY constraints
-- using ON DELETE NO ACTION
-- OBS: unlike POSTGRES AND MYSQL, SQL Server has no 'RESTRICT'
-- just use 'NO ACTION' in its place
DROP TABLE users;
DROP TABLE addresses;
DROP TABLE cities;

CREATE TABLE addresses(
	id INT IDENTITY(1,1) PRIMARY KEY,
	city_id INT,
	street VARCHAR(300) NOT NULL,
	house_number VARCHAR(50) NOT NULL
);

CREATE TABLE users (
    id INT IDENTITY(1,1) PRIMARY KEY,
    address_id INT,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    email VARCHAR(300) NOT NULL,
    -- Creating foreign key constraint
    CONSTRAINT fk_address
        FOREIGN KEY (address_id)
        REFERENCES addresses(id)
        ON DELETE NO ACTION
);

CREATE TABLE cities(
	id INT IDENTITY(1,1) PRIMARY KEY,
	name VARCHAR(300) NOT NULL
);

-- recreating the tables with FOREIGN KEY constraints
-- using ON DELETE CASCADE
DROP TABLE users;
DROP TABLE addresses;
DROP TABLE cities;

CREATE TABLE addresses(
	id INT IDENTITY(1,1) PRIMARY KEY,
	city_id INT,
	street VARCHAR(300) NOT NULL,
	house_number VARCHAR(50) NOT NULL
);

CREATE TABLE users(
	id INT IDENTITY(1,1) PRIMARY KEY,
	address_id INT,
	first_name VARCHAR(300) NOT NULL,
	last_name VARCHAR(300) NOT NULL,
	email VARCHAR(300) NOT NULL,
	-- creating foreign key constraint
	CONSTRAINT fk_address
	FOREIGN KEY (address_id)
	REFERENCES addresses(id)
	ON DELETE CASCADE
);

CREATE TABLE cities(
	id INT IDENTITY(1,1) PRIMARY KEY,
	name VARCHAR(300) NOT NULL
);