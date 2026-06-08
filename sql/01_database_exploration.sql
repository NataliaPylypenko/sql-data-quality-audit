USE FunData

--SELECT * 
--FROM Customer
--WHERE Country = 'usa' AND [Last Year's Sales] > 5000

/*
BETWEEN, LIKE, IN, IS Conditions
*/

--SELECT [Customer Name], Country
--FROM Customer
--WHERE [Last Year's Sales] BETWEEN 5000 AND 10000

--SELECT [Customer Name], Country
--FROM Customer
--WHERE Country like '___na'

--SELECT [Customer Name], Country
--FROM Customer
--WHERE Country IN ('usa', 'canada')
--WHERE Country NOT IN ('usa', 'canada')

--SELECT [Contact First Name], Country, Address2
--FROM Customer
--WHERE Address2 IS NULL
--WHERE Address2 IS NOT NULL

--SELECT [Contact First Name], Country, Address2
--FROM Customer
--WHERE Country = 'usa' AND Address2 IS NOT NULL

--SELECT [Order ID], [Unit Price], Quantity
--FROM [Orders Detail]

/*
Calculated Fields
*/

--SELECT
--	[Order ID]
--	, FORMAT([Unit Price], 'c') AS 'Unit Price'
--	, Quantity
--	, FORMAT([Unit Price] * Quantity, 'C') AS 'Total Sales'
--FROM
--	[Orders Detail]

/*
ORDER BY Clause
*/

--SELECT
--	[Contact First Name] AS 'First Name'
--	, [Contact Last Name] AS 'Last Name'
--	, [Contact Position] AS 'Position'
--	, FORMAT([Last Year's Sales], 'C') AS "Last Year's Sales"
--FROM
--	Customer
--WHERE
--	Country = 'usa'
--ORDER BY
--	[First Name]

/*
Aggregate Functions
*/

--SELECT
--	COUNT(Quantity) AS 'Total Invoices'
--	, SUM(Quantity) AS 'Total Items Sold'
--	, AVG(Quantity) AS 'Average Items Sold'
--	, FORMAT(SUM([Unit Price] * Quantity), 'c') AS 'Total profit'
--FROM
--	[Orders Detail]