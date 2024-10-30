
--Remove Duplicates
SELECT 
	DISTINCT customer_id
FROM 
	SQLTutorial.dbo.CustomerTable

--Viewing customers id with country that is from US or USA
SELECT
	country
FROM
	SQLTutorial.dbo.CustomerTable
WHERE
	LEN(country) > 2

SELECT
	DISTINCT(customer_id), country
FROM
	SQLTutorial.dbo.CustomerTable
WHERE
	SUBSTRING(country, 1, 2) = 'US'

--OH state has extra space so I removed it using TRIM function 
SELECT 
	DISTINCT(customer_id) 
FROM 
	SQLTutorial.dbo.CustomerTable
WHERE
	TRIM(state) = 'OH'