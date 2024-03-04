-- in this case, 'users' is the left table 
-- thus, all its data will be available on the result set
SELECT * 
FROM users AS u
LEFT JOIN addresses AS a 
ON u.address_id = a.id;

-- in this case, 'addresses' is the left table
SELECT * 
FROM addresses AS a
LEFT JOIN users AS u
ON u.address_id = a.id;

-- multiple LEFT JOIN
SELECT *
FROM addresses a 
LEFT JOIN users u 
ON a.id = u.address_id
LEFT JOIN cities c 
ON a.city_id  = c.id;