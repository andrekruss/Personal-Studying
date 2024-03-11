-- in SQL Server, there is no EXTRACT()
-- just use MONTH(), DAY()
-- to extract minutes, use DATEPART()
SELECT MONTH(last_checkin), last_checkin
FROM memberships;

SELECT DAY(last_checkin), last_checkin
FROM memberships;

SELECT DATEPART(MINUTE, last_checkin), last_checkin
FROM memberships;

-- SQL Server: use DATEPART() to extract week day
-- Monday = 0, ..., Sunday = 6
SELECT DATEPART(WEEKDAY, last_checkin), last_checkin
FROM memberships;

-- SQL Server: similarly to MySQL, SQL Server has CONVERT()
SELECT CONVERT(DATE, last_checkin), CONVERT(TIME, last_checkin)
FROM memberships;