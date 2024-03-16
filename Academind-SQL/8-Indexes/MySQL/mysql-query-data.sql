-- using EXPLAIN
-- users with salary > 12000
EXPLAIN
SELECT * FROM users
WHERE salary > 12000;

-- using EXPLAIN ANALYZE
-- users with salary > 12000
EXPLAIN ANALYZE
SELECT * FROM users
WHERE salary > 12000;