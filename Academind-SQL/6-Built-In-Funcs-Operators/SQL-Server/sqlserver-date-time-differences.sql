-- SQL Server: last_checkout - last_checkin will result in 
-- DATETIME data type
SELECT last_checkout - last_checkin
FROM memberships;

-- Calculating membership  duration in DAYS
SELECT DATEDIFF(DAY, membership_start, membership_end) AS membership_duration
FROM memberships
WHERE membership_end IS NOT NULL;