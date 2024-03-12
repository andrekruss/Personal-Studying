-- LIKE is used with pattern matching
-- 'Ma%' -> values that start with 'Ma'
-- '%' will signify that there is undefined amount
-- of characters and undefined characters in general 
-- after 'Ma'
SELECT first_name LIKE 'Ma%', first_name 
FROM memberships;

SELECT first_name LIKE '%a%', first_name
FROM memberships;

SELECT first_name LIKE 'J%', first_name
FROM memberships;

-- '_' is a placeholder for a single character
SELECT first_name LIKE '_o%', first_name
FROM memberships;

SELECT first_name
FROM memberships
WHERE first_name LIKE 'J____';