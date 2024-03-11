-- PostgreSQL: can change days of a date
-- by adding a number to it
SELECT membership_start + 7, membership_start
FROM memberships;

-- PostgreSQL: can also use INTERVAL
SELECT (membership_start + INTERVAL '7 MONTHS')::TIMESTAMP::DATE, membership_start 
FROM memberships;