-- In SQL Server, use a CASE expression with LIKE
SELECT 
    CASE WHEN first_name LIKE 'Ma%' THEN 1 ELSE 0 END AS starts_with_Ma,
    first_name
FROM 
    memberships;

SELECT 
	CASE WHEN first_name LIKE '%a%' THEN 1 ELSE 0 END AS has_a_in_middle,
	first_name 
FROM memberships;

SELECT 
	CASE WHEN first_name LIKE 'J%' THEN 1 ELSE 0 END AS starts_with_J,
	first_name
FROM memberships;

-- '_' is a placeholder for a single character
SELECT 
	CASE WHEN first_name LIKE '_o%' THEN 1 ELSE 0 END,
	first_name
FROM memberships;

SELECT 
	CASE WHEN first_name LIKE 'J____' THEN 1 ELSE 0 END,
	first_name
FROM memberships;