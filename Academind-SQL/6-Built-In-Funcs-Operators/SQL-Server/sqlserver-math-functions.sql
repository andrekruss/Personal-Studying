-- using * operator
SELECT price * billing_frequency AS annual_revenue
FROM memberships;

-- using CEILING()
-- rounds up to nearest integer
SELECT CEILING(consumption)
FROM memberships;

-- using FLOOR()
-- rounds down to nearest integer
SELECT FLOOR(consumption)
FROM memberships;

-- using ROUND()
-- rounds value specifying number of decimal places
SELECT ROUND(consumption, 1)
FROM memberships;

-- TRUNCATE() doesn't exist in SQL Server
-- BUT you can truncate using ROUND()
SELECT ROUND(consumption, 0, 1)
FROM memberships;