-- UNION appends rows
SELECT *
FROM users 
WHERE id < 3
UNION 
SELECT *
FROM users 
WHERE id > 5;

-- This will give an error
-- numbers of columns from users and addresses are different
-- SELECT *
-- FROM users
-- UNION
-- SELECT *
-- FROM addresses;