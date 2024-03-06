-- sum all values from amount_billed
SELECT SUM(amount_billed)
FROM bookings;

-- average value of num_guests column
-- OBS: avg ignores null values
SELECT ROUND(AVG(num_guests))
FROM bookings;

-- average value of amount_tipped column 
-- with two values after decimal point
SELECT ROUND(AVG(amount_tipped), 2)
FROM bookings;

