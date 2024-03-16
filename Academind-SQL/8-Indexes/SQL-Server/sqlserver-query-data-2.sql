SET SHOWPLAN_ALL ON;

SELECT * FROM addresses
WHERE street = 'Teststreet' AND city = 'Munich';

SET SHOWPLAN_ALL OFF;