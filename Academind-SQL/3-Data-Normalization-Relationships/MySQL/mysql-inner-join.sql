# merging users and addresses tables
SELECT u.id, u.first_name, u.last_name, a.street, a.house_number, c.name AS city_name
FROM users AS u
INNER JOIN addresses AS a
ON u.address_id = a.id
INNER JOIN cities AS c 
ON a.city_id = c.id;

# filtering selects with inner join
SELECT u.id, u.first_name, u.last_name, a.street, a.house_number, c.name AS city_name
FROM users AS u
INNER JOIN addresses AS a
ON u.address_id = a.id
INNER JOIN cities AS c 
ON a.city_id = c.id
WHERE c.id = 1 OR c.id = 2;