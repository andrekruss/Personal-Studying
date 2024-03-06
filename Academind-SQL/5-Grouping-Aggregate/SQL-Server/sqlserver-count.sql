-- COUNT() aggregate function

-- number of bookings in bookings table
SELECT COUNT(*) FROM bookings;

-- number of booking_date in bookings table
SELECT COUNT(booking_date) FROM bookings;

-- number of tippings in bookings table
SELECT COUNT(amount_tipped) FROM bookings;

-- using DISTINCT will count only distinct values
-- in COUNT operation
SELECT COUNT(DISTINCT booking_date) FROM bookings;
