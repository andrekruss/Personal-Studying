SELECT 
	l.city_name AS city,
	e.name AS event_name,
	e.date_planned AS event_date
FROM locations l
LEFT JOIN events e 
ON e.location_id = l.id;

SELECT 
	c.name AS city_name,
	l.city_name AS location_city
FROM cities c
LEFT JOIN locations l 
ON c.name = l.city_name;

SELECT 
	c.name AS city_name,
	l.city_name AS location_city,
	e.name AS event_name,
	e.date_planned AS event_date
FROM cities c
LEFT JOIN locations l 
ON c.name = l.city_name
INNER JOIN events e
ON e.location_id = l.id;