-- EXTRACT() function
-- used to extract day, month, , etc from
-- timestamp
SELECT EXTRACT(MONTH FROM last_checkin), last_checkin
FROM memberships;

SELECT EXTRACT(DAY FROM last_checkin), last_checkin
FROM memberships;

SELECT EXTRACT(MINUTE FROM last_checkin), last_checkin
FROM memberships;

-- MySQL: use WEEKDAY() to extract week day
SELECT WEEKDAY(last_checkin), last_checkin
FROM memberships;

-- MySQL: use CONVERT() to separate DATE and TIME
SELECT CONVERT(last_checkin, DATE), CONVERT(last_checkin, TIME)
FROM memberships;