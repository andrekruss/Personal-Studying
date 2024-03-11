-- MySQL: last_checkout - last_checkin will result in 
-- an INTEGER
SELECT last_checkout - last_checkin
FROM memberships;

-- MySQL: alternatively, use TIMESTAMPDIFF()
SELECT TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout)
FROM memberships;

-- MySQL: Calculating membership  duration in DAYS
-- using DATEDIFF()
SELECT DATEDIFF(membership_end, membership_start)
FROM memberships
WHERE membership_end IS NOT NULL;