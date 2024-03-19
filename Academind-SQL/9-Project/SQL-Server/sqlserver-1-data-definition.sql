CREATE DATABASE events_db;

CREATE TABLE events(
	id INT IDENTITY(1,1) PRIMARY KEY,
	name VARCHAR(50) NOT NULL CHECK(LEN(name) > 5),
	date_planned DATETIME NOT NULL,
	image VARCHAR(200),
	description TEXT NOT NULL,
	max_participants INT CHECK(max_participants > 0),
	min_age INT CHECK(min_age > 0)
);