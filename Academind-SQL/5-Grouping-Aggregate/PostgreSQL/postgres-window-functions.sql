-- creating a new colum on result set with window function
SELECT 
	booking_date, 
	amount_tipped, 
	SUM(amount_tipped) OVER() -- this line IS a WINDOW function
FROM bookings b;

SELECT 
	booking_date, 
	amount_tipped, 
	SUM(amount_tipped) OVER(PARTITION BY booking_date) -- this line IS a WINDOW function
FROM bookings b;

SELECT 
	booking_date, 
	amount_tipped, 
	SUM(amount_tipped) OVER(PARTITION BY booking_date ORDER BY amount_billed) -- this line IS a WINDOW function
FROM bookings b;

SELECT 
	booking_date, 
	amount_tipped, 
	RANK() OVER(PARTITION BY booking_date ORDER BY amount_billed DESC) -- this line IS a WINDOW function
FROM bookings b;