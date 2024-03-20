-- users name that start with 'Ma'
SELECT * FROM users
WHERE first_name LIKE 'Ma%';

-- users name that start with 'Ma'
-- and have one more character after 'Ma'
SELECT * FROM users 
WHERE first_name LIKE 'Ma_';