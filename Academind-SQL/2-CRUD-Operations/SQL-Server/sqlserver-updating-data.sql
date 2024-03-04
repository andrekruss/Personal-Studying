------------------------------------------------------
-------------- 1) UPDATING DATA ----------------------
------------------------------------------------------

-- Simulating wrong data INSERT and UPDATING it
INSERT INTO sales (
	date_created,
	date_fulfilled,
	customer_name,
	product_name,
	volume 
)
VALUES (
	'2021-12-09',
	'2021-12-17',
	'Company Z',
	'A Tuck', -- typo here TO fix
	109.0 -- value TO fix also
);

UPDATE sales
SET 
	product_name = 'A Truck',
	volume = volume * 1000
WHERE id = 22;
