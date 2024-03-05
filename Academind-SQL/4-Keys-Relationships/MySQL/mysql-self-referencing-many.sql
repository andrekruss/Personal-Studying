CREATE TABLE users (
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(300) NOT NULL
);

-- this table will connect the user table with itself
-- thorugh a many-to-many relationship
CREATE TABLE users_friends (
	user_id INT,
	friend_id INT,
	CHECK (user_id < friend_id), -- avoid duplicating friendship rows
	FOREIGN KEY (user_id)
	REFERENCES users(id)
	ON DELETE CASCADE,
	FOREIGN KEY (friend_id)
	REFERENCES users(id)
	ON DELETE CASCADE,
	PRIMARY KEY (user_id, friend_id)
);

-- inserting some data
INSERT INTO users(first_name)
VALUES 
	('Manuel'),
	('Max'),
	('Julie');
	
INSERT INTO users_friends (user_id, friend_id)
VALUES (1,2), (1,3);