-- creating some cities
INSERT INTO cities (name)
VALUES 
	('Berlin'),
	('New York'),
	('London'),
	('Paris'),
	('Tokyo');

-- creating addresses
INSERT INTO addresses (street, house_number, city_id)
VALUES
	('Teststreet', '8A', 3),
	('Some Street', '10', 1),
	('Teststreet', '1', 3),
	('My Street', '101', 2);
	
-- creating users
INSERT INTO users (first_name, last_name, email, address_id)
VALUES 
	('Max', 'Schwarz', 'max@test.com', 2),
	('Manuel', 'Lorenz', 'manu@test.com', 4),
	('Julie', 'Barnes', 'julie@barnes.com', 3);