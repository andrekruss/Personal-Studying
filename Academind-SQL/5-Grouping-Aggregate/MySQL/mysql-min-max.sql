-- max value on num_seats column
SELECT MAX(num_seats) FROM tables;

-- min value on num_seats COLUMN 
SELECT MIN(num_seats) FROM tables;

-- using more than one aggregate funcs
SELECT MAX(amount_billed) AS max_billed, MAX(amount_tipped) AS max_tipped
FROM bookings;

-- using MAX and MIN with varchar
SELECT MIN(category), MAX(category)
FROM tables;

-- using MAX and MIN with dates
SELECT MIN(booking_date), MAX(booking_date)
FROM bookings;