# playing around with inner and left join
SELECT name AS city_name, a.street, a.house_number 
FROM cities c
INNER JOIN addresses a 
ON c.id = a.city_id;

SELECT u.first_name, u.last_name, name AS city_name, a.street, a.house_number 
FROM cities c
LEFT JOIN addresses a 
ON c.id = a.city_id
LEFT JOIN users u 
ON u.address_id = a.id;
