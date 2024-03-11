-- EXTRACT() function
-- used to extract day, month, , etc from
-- timestamp
SELECT EXTRACT(MONTH FROM last_checkin), last_checkin
FROM memberships;

SELECT EXTRACT(DAY FROM last_checkin), last_checkin
FROM memberships;

SELECT EXTRACT(MINUTE FROM last_checkin), last_checkin
FROM memberships;

-- PostgreSQL: to extract DAY OF THE WEEK, use DOW
-- OBS: Sunday = 0, Monday = 1, ..., Saturday = 6
SELECT EXTRACT(DOW FROM last_checkin), last_checkin
FROM memberships;

-- PostgreSQL: to separate DATE and TIME, use sufix(::)
SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME
FROM memberships;