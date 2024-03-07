-- GROUP BY is often used with aggregate functions
-- used to GROUP rows that have the same values 
-- into summary rows

SELECT booking_date, SUM(num_guests)
FROM bookings b
GROUP BY booking_date;

-- combining with joins
-- amount of guests that paid with cash or credit card?
SELECT pm.name, SUM(b.num_guests)
FROM payment_methods pm 
INNER JOIN bookings b 
ON pm.id = b.payment_id 
GROUP BY pm.name;

SELECT pm.name, b.booking_date ,SUM(b.num_guests), ROUND(AVG(amount_tipped), 2)
FROM payment_methods pm 
INNER JOIN bookings b 
ON pm.id = b.payment_id 
GROUP BY pm.name, b.booking_date;