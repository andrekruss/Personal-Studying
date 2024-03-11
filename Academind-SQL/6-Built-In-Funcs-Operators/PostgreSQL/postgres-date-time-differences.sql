-- PostgreSQL: last_checkout - last_checkin will result in 
-- INTERVAL data type
SELECT last_checkout - last_checkin
FROM memberships;

-- Calculating membership  duration in DAYS
SELECT membership_end - membership_start
FROM memberships
WHERE membership_end IS NOT NULL;