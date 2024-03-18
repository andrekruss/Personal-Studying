CREATE DATABASE events_db;

CREATE TABLE events(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR() NOT NULL,
	date_planned DATE,
	image VARCHAR(),
	description TEXT,
	max_participants INT,
	min_age INT
);