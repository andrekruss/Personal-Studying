CREATE DATABASE company;

-- 1:1 relation between employees and intranet accounts
-- 1:n relation between teams and employees
-- 1:n relation between building and teams
-- n:n relation between employees and projects

CREATE TABLE projects (
	id SERIAL PRIMARY KEY,
	title VARCHAR(300) NOT NULL,
	deadline DATE
);

CREATE TABLE company_buildings (
	id SERIAL PRIMARY KEY,
	name VARCHAR(300) NOT NULL
);

CREATE TABLE teams(
	id SERIAL PRIMARY KEY,
	building_id INT,
	name VARCHAR(300) NOT NULL,
	FOREIGN KEY (building_id)
	REFERENCES company_buildings(id)
	ON DELETE SET NULL
);

CREATE TABLE employees(
	id SERIAL PRIMARY KEY,
	team_id INT DEFAULT 1,
	first_name VARCHAR(300) NOT NULL,
	last_name VARCHAR(300) NOT NULL,
	birthdate DATE NOT NULL,
	email VARCHAR(200) UNIQUE NOT NULL,
	FOREIGN KEY (team_id)
	REFERENCES teams(id)
	ON DELETE SET DEFAULT
);

CREATE TABLE intranet_accounts(
	id SERIAL PRIMARY KEY,
	email VARCHAR(200),
	password VARCHAR(200) NOT NULL,
	FOREIGN KEY (email)
	REFERENCES employees(email)
	ON DELETE CASCADE 
);

-- intermediate table for the n:n relationship
-- USING COMPOSITE KEY
CREATE TABLE projects_employees(
	project_id INT,
	employee_id INT,
	FOREIGN KEY (project_id)
	REFERENCES projects(id)
	ON DELETE CASCADE,
	FOREIGN KEY (employee_id)
	REFERENCES employees(id)
	ON DELETE CASCADE,
	PRIMARY KEY (employee_id, project_id) -- composite key
);