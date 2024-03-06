-- average of amount_tipped column
-- considering only values above 20 and num_guests > 2
SELECT ROUND(AVG(amount_tipped), 2)
FROM bookings
WHERE amount_billed > 20 AND num_guests > 2;

-- joining tables and using aggregate functions
SELECT MAX(b.num_guests), MAX(t.num_seats)
FROM bookings AS b
INNER JOIN tables AS t 
ON b.table_id = t.id;

-- joining tables and using aggregate functions
SELECT MAX(b.num_guests), MAX(t.num_seats)
FROM bookings AS b
INNER JOIN tables AS t 
ON b.table_id = t.id
INNER JOIN payment_methods pm 
ON pm.id = b.payment_id
WHERE t.num_seats < 5 AND pm.name = 'Cash';

