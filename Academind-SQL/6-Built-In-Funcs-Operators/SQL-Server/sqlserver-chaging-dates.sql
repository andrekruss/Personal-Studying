-- SQL Server: can change days, months and years of a date
-- by using DATEADD()
SELECT DATEADD(DAY, 7, membership_start), membership_start
FROM memberships;

SELECT DATEADD(MONTH, 7, membership_start), membership_start
FROM memberships;

SELECT DATEADD(YEAR, 7, membership_start), membership_start
FROM memberships;