SELECT e.id AS employee_id, e.first_name, e.last_name, p.title
FROM employees AS e
LEFT JOIN projects_employees AS pe
ON pe.employee_id = e.id
LEFT JOIN projects AS p 
ON pe.project_id = p.id;

SELECT e.id AS employee_id, e.first_name, e.last_name, p.title
FROM employees AS e
INNER JOIN projects_employees AS pe
ON pe.employee_id = e.id
INNER JOIN projects AS p 
ON pe.project_id = p.id;

-- data from employees that are part of team id = 2
SELECT e.id AS employee_id, e.first_name, e.last_name, t.name
FROM employees AS e
INNER JOIN teams AS t 
ON e.team_id = t.id
WHERE t.id = 2;

-- which employees are on building id = 3?
SELECT e.id, e.first_name, e.last_name, t.name AS team_name, cb.id AS cb_id, cb.name AS building_name
FROM employees AS e
INNER JOIN teams AS t
ON e.team_id = t.id 
INNER JOIN company_buildings AS cb 
ON t.building_id = cb.id 
WHERE cb.id = 3
ORDER BY cb.id;
