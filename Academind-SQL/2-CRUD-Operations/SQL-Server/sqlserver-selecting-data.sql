------------------------------------------------
-------- 1) Basic use of select command --------
------------------------------------------------

-- selecting all data from table
SELECT * FROM sales;

-- specifying columns 
SELECT customer_name, product_name, volume, date_created
FROM sales;

-- aliasing a queried column
SELECT date_created,
	customer_name,
	product_name,
	volume / 1000 AS total_sales
FROM sales;

------------------------------------------------
-------- 2) Filtering with WHERE clause --------
------------------------------------------------

SELECT * FROM sales 
WHERE volume > 1000;

SELECT * FROM sales 
WHERE is_recurring = 1; 

SELECT * FROM sales
WHERE (is_disputed = 1) AND (volume > 5000);

SELECT * FROM sales
WHERE (date_created > '2021-11-01')
	   AND (date_created < '2022-05-01');
	   
SELECT * FROM sales
WHERE date_created BETWEEN '2021-11-01' AND '2022-05-01';

SELECT * FROM sales 
WHERE volume BETWEEN 1000 AND 100000;

-- comparing text
SELECT * FROM sales 
WHERE customer_name <> 'Max Schwarz';

SELECT * FROM sales 
WHERE customer_name > 'Company A';

SELECT * FROM sales
WHERE DATEDIFF(day, date_created, date_fulfilled) <= 5;

------------------------------------------------
-------- 3) Ordering query results -------------
------------------------------------------------

-- ASCENDING ORDER
SELECT * FROM sales 
ORDER BY volume;

-- DESCENDING ORDER
SELECT * FROM sales 
ORDER BY volume DESC;

-- LIMITING THE NUMBER OF ROWS (FIRST TEN ROWS)
SELECT * FROM sales 
ORDER BY volume DESC
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY;

SELECT * FROM sales
WHERE is_disputed = 0
ORDER BY volume DESC, customer_name
OFFSET 0 ROWS 
FETCH NEXT 3 ROWS ONLY;

-- ADDING OFFSET (SKIPING ROWS)
SELECT * FROM sales 
ORDER BY volume DESC 
OFFSET 3 ROWS 
FETCH NEXT 5 ROWS ONLY;

-- SELECTING DISTINCT VALUES
SELECT DISTINCT customer_name FROM sales
ORDER BY customer_name;

------------------------------------------------
----------- 4) SubQueries ----------------------
------------------------------------------------

-- SELECT will return a temporary table (Result Set)
-- this Result Set can be queried just like any other table 
SELECT customer_name, product_name
FROM (SELECT * FROM sales -- subquery
WHERE volume > 1000) AS base_result;

-- Storing a query on a VIEW 
-- OBS: views are stored by the DB, they are not temporary
CREATE VIEW query AS SELECT * FROM sales
WHERE volume > 1000;

-- using the view 
SELECT customer_name, product_name
FROM query;