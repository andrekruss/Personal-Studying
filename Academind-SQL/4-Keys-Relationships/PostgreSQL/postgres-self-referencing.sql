DROP TABLE projects_employees;
DROP TABLE intranet_accounts;
DROP TABLE employees;
DROP TABLE teams;
DROP TABLE company_buildings;
DROP TABLE projects;

-- self referencing relationships
CREATE TABLE employees (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(300) NOT NULL,
	last_name VARCHAR(300) NOT NULL,
	supervisor_id INT REFERENCES employees(id) ON DELETE SET NULL
);

-- inserting data
INSERT INTO employees (first_name, last_name, supervisor_id)
VALUES 
	('Julie', 'Barnes', NULL),
	('Manuel', 'Lorenz', 1),
	('Max', 'Schwarz', 1);

-- query data joining the same table
SELECT * FROM employees AS e1
INNER JOIN employees AS e2
ON e1.supervisor_id = e2.id;