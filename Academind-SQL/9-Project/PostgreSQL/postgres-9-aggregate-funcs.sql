SELECT COUNT(id) 
FROM locations;

SELECT SUM(id)
FROM users;

SELECT c.name, COUNT(loc.id)
FROM cities c 
LEFT JOIN locations loc 
ON loc.city_name = c.name 
GROUP BY c.name;

SELECT c.name, COUNT(loc.id)
FROM cities c 
LEFT JOIN locations loc 
ON loc.city_name = c.name 
GROUP BY c.name
HAVING COUNT(loc.id) > 1;
