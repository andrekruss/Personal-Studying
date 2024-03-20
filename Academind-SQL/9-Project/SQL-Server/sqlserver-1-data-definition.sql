CREATE DATABASE events_db;

CREATE TABLE cities(
	id INT IDENTITY(1,1) PRIMARY KEY,
	name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE locations(
	id INT IDENTITY(1,1) PRIMARY KEY,
	city_name VARCHAR(100),
	title VARCHAR(100) NOT NULL,
	street VARCHAR(50) NOT NULL,
	house_number VARCHAR(10) NOT NULL,
	postal_code VARCHAR(10) NOT NULL,
	FOREIGN KEY (city_name)
	REFERENCES cities(name) 
	ON DELETE NO ACTION 
	ON UPDATE CASCADE
);

CREATE TABLE users(
	id INT IDENTITY(1,1) PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50),
	birthdate DATE NOT NULL,
	email VARCHAR(300) NOT NULL
);

CREATE TABLE organizers(
	password VARCHAR(100) NOT NULL,
	user_id INT PRIMARY KEY,
	FOREIGN KEY (user_id)
	REFERENCES users(id)
	ON DELETE CASCADE
);

CREATE TABLE tags(
	name VARCHAR(100) PRIMARY KEY
);

CREATE TABLE events(
	id INT IDENTITY(1,1) PRIMARY KEY,
	location_id INT,
	organizer_id INT,
	name VARCHAR(50) NOT NULL CHECK(LEN(name) > 5),
	date_planned DATETIME NOT NULL,
	image VARCHAR(200),
	description TEXT NOT NULL,
	max_participants INT CHECK(max_participants > 0),
	min_age INT CHECK(min_age > 0),
	FOREIGN KEY (location_id)
	REFERENCES locations(id)
	ON DELETE CASCADE,
	FOREIGN KEY (organizer_id)
	REFERENCES organizers(user_id)
	ON DELETE CASCADE
);

CREATE TABLE events_users(
	event_id INT,
	user_id INT,
	FOREIGN KEY (event_id)
	REFERENCES events(id)
	ON DELETE NO ACTION,
	FOREIGN KEY (user_id)
	REFERENCES users(id)
	ON DELETE NO ACTION,
	PRIMARY KEY (event_id, user_id)
);

CREATE TABLE events_tags(
	event_id INT,
	tag_name VARCHAR(100),
	FOREIGN KEY (event_id)
	REFERENCES events(id)
	ON DELETE CASCADE,
	FOREIGN KEY (tag_name)
	REFERENCES tags(name)
	ON DELETE CASCADE,
	PRIMARY KEY (event_id, tag_name)
);