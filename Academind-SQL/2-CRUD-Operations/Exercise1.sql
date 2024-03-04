######################################################################
############################# EXERCISE ###############################
######################################################################

-- 1) Database Creation: Start by creating a new database named bookstore. 
-- 2) Table Creation: Within the Bookstore database, create two tables: Books and Authors.
-- 3) Play around with CRUD operations and WHERE, ORDER BY and OFFSET clauses

-- creating a bookstore DB
CREATE DATABASE bookstore;

-- creating tables
CREATE TABLE authors(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(300) NOT NULL,
	nationality VARCHAR(300) NOT NULL,
	birth_year INT NOT NULL CHECK(birth_year > 0), 
	death_year INT,
	bio TEXT
);

CREATE TABLE books(
	id INT PRIMARY KEY AUTO_INCREMENT,
	author_id INT,
	title VARCHAR(500) NOT NULL,
	price DECIMAL(7,2) NOT NULL CHECK(price > 0),
	published_date DATE,
	FOREIGN KEY (author_id)
	REFERENCES authors(id)
	ON DELETE RESTRICT
);

-- inserting some data
INSERT INTO authors (
	name, 
	nationality, 
	birth_year, 
	death_year, 
	bio
)
VALUES 
	(
		'Julian', 
		'American',
		1975,
		NULL,
		'Incredible author!'
	),
	(
		'Adriana', 
		'Brazilian',
		1995,
		NULL,
		'Brazil top author FROM the 90s!'
	),
	(
		'Anna', 
		'British',
		1935,
		NULL,
		'Author of britains greatest classics.'
	),
	(
		'Joseph', 
		'American',
		1961,
		NULL,
		'Americas most controversial writer.'
	),
	(
		'Juan', 
		'Spanish',
		1982,
		2002,
		'Incredible author that died way too young...!'
	),
	(
		'Elza', 
		'German',
		1953,
		2021,
		'No information!'
	),
	(
		'Max', 
		'Australian',
		1964,
		1999,
		'Incredible author!'
	),
	(
		'Julien', 
		'French',
		1990,
		NULL,
		'Another incredible author!'
	),
	(
		'John', 
		'American',
		1948,
		null,
		'A traditional american author!'
	),(
		'Giusepe', 
		'Italian',
		1964,
		2009,
		'Incredible author from Italy!'
	),
	(
		'Maria', 
		'Brazilian',
		1950,
		2020,
		'A memorable brazilian author!'
	);

SELECT id, birth_year, death_year
FROM authors;

INSERT INTO books (author_id, title, price, published_date)
VALUES 
	(
		1, 
		'Book 1',
		10.00,
		'2020-09-01'
	),
	(
		1, 
		'Book 2',
		35.99,
		'2022-10-30'
	),
	(
		3, 
		'A Book of Matches',
		49.99,
		'1980-02-15'
	),
	(
		2, 
		'Some other book',
		10.00,
		'2022-04-18'
	),
	(
		4, 
		'ABCs for dummies',
		29.99,
		'1992-06-10'
	),
	(
		4, 
		'The Night of The Hunter',
		99.99,
		'1972-08-01'
	),
	(
		1, 
		'Treacherous Heights',
		120.00,
		'2000-03-25'
	),
	(
		8, 
		'My Dead Flowers',
		65.00,
		'2012-09-01'
	),
	(
		10, 
		'My Bio',
		5.99,
		'2001-12-12'
	),
	(
		3, 
		'A Child in a War',
		40.00,
		'1960-02-12'
	),
	(
		1, 
		'Book 1',
		10.00,
		'2020-09-01'
	),
	(
		4, 
		'Blooming',
		39.99,
		'1988-06-07'
	),
	(
		1, 
		'Book 1',
		10.00,
		'2020-09-01'
	),
	(
		9, 
		'Red Mountains',
		200.00,
		'1969-07-20'
	),
	(
		1, 
		'Book 0',
		89.99,
		'2005-04-15'
	),
	(
		2, 
		'Recipes Book',
		50.00,
		'2022-10-01'
	),
	(
		11, 
		'Traveling Guide',
		150.00,
		'1976-07-10'
	),
	(
		7, 
		'Before I Die',
		29.99,
		'1997-05-26'
	),
	(
		4, 
		'Dark Book',
		15.50,
		'1984-08-08'
	);

-- Selecting some data
SELECT * FROM authors;

SELECT name, nationality
FROM authors;

SELECT name, nationality
FROM authors 
WHERE id = 4;

-- selecting dead authors
SELECT name, nationality, death_year
FROM authors 
WHERE death_year IS NOT NULL;

-- selecting authors born after 1980
SELECT name, nationality, birth_year
FROM authors 
WHERE birth_year > 1980
ORDER BY name;

-- selecting authors born after 1960 and before 1980
SELECT name, nationality, birth_year
FROM authors 
WHERE (birth_year > 1960) AND (birth_year < 1980)
ORDER BY birth_year;

-- select authors that dies after 2000
SELECT name, death_year
FROM authors 
WHERE (death_year > 2000)
ORDER BY name;

-- select authors that are american
SELECT name, nationality, birth_year
FROM authors 
WHERE nationality = 'American'
ORDER BY birth_year;

-- using offset
SELECT * 
FROM authors
LIMIT 3
OFFSET 5;

SELECT name, nationality
FROM authors
WHERE nationality <> 'American'
ORDER BY name
LIMIT 10;

-- querying books
SELECT * FROM books;
	
SELECT * FROM books 
WHERE id = 20;

-- selecting all books from an author
SELECT * 
FROM books 
WHERE author_id = 1
ORDER BY published_date; 

-- select books with price > 100
SELECT title, price
FROM books 
WHERE price > 100
ORDER BY price;

SELECT title, price
FROM books 
WHERE price > 50 AND price < 100
ORDER BY price;

-- select published books between 2000 and 2020
SELECT title, published_date
FROM books 
WHERE published_date BETWEEN '2000-01-01' AND '2020-12-31'
ORDER BY published_date;
