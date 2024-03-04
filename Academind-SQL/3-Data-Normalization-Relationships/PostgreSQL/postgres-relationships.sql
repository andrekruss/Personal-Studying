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
CREATE TABLE projects_employees(
	id SERIAL PRIMARY KEY,
	project_id INT,
	employee_id INT,
	FOREIGN KEY (project_id)
	REFERENCES projects(id)
	ON DELETE CASCADE,
	FOREIGN KEY (employee_id)
	REFERENCES employees(id)
	ON DELETE CASCADE  
);

-- inserting data
INSERT INTO company_buildings (name)
VALUES 
  ('Main Building'), 
  ('Research Lab'), 
  ('Darkroom');

INSERT INTO teams (name, building_id)
VALUES 
  ('Admin', 1), 
  ('Data Analysts', 3),
  ('R&D', 2);

INSERT INTO employees 
  (first_name, last_name, birthdate, email, team_id)
VALUES 
  ('Julie', 'Barnes', '1988-10-01', 'julie@test.com', 3),
  ('Max', 'Schwarz', '1989-06-10', 'max@test.com', 1),
  ('Manuel', 'Lorenz', '1987-01-29', 'manu@test.com', 2),
  ('Michael', 'Smith', '1977-05-12', 'michael@test.com', 2);

INSERT INTO intranet_accounts (email, password)
VALUES 
  ('max@test.com', 'abcae1'),
  ('manu@test.com', 'fdasfdas1'),
  ('julie@test.com', 'adsfsaf3'),
  ('michael@test.com', 'adsfsaf3');

INSERT INTO projects (title, deadline)
VALUES 
  ('Mastering SQL', '2024-10-01'),
  ('New Hire Onboarding', '2022-02-28'),
  ('New Course Evaluation', '2022-01-01');

INSERT INTO projects_employees (employee_id, project_id)
VALUES 
  (1, 2),
  (2, 2),
  (1, 3),
  (3, 1),
  (3, 3),
  (2, 3);