SELECT * FROM events;

SELECT 
	e.name AS event_name, 
	e.date_planned AS event_date, 
	l.title AS location_title,
	l.city_name AS city 
FROM events AS e
INNER JOIN locations AS l
ON e.location_id = l.id;

SELECT 
	e.name AS event_name, 
	e.date_planned AS event_date, 
	l.title AS location_title,
	l.city_name AS city,
	u.first_name AS user_name
FROM events AS e
INNER JOIN locations AS l
ON e.location_id = l.id
INNER JOIN events_users AS eu 
ON eu.event_id = e.id
INNER JOIN users AS u
ON eu.user_id = u.id;

