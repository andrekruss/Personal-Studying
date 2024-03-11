-- MySQL: adding days to existing date
-- with DATE_ADD()
SELECT DATE_ADD(membership_start, INTERVAL 7 DAY), membership_start 
FROM memberships;

SELECT DATE_ADD(membership_start, INTERVAL 7 MONTH), membership_start 
FROM memberships;

SELECT DATE_ADD(membership_start, INTERVAL 7 YEAR), membership_start 
FROM memberships;