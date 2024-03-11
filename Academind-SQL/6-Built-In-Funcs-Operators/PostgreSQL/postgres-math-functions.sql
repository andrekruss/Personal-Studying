-- using * operator
SELECT price * billing_frequency AS annual_revenue
FROM memberships;

-- using CEIL()
-- rounds up to nearest integer
SELECT CEIL(consumption)
FROM memberships;

-- using FLOOR()
-- rounds down to nearest integer
SELECT FLOOR(consumption)
FROM memberships;

-- using ROUND()
-- rounds value specifying number of decimal places
SELECT ROUND(consumption, 1)
FROM memberships;

-- using TRUNC()
-- cuts off decimal places
SELECT TRUNC(consumption, 1)
FROM memberships;