USE FunData

--1. IMPORT DATA

--SELECT
--    TABLE_NAME,
--    COLUMN_NAME,
--    DATA_TYPE
--FROM INFORMATION_SCHEMA.COLUMNS
--ORDER BY TABLE_NAME, ORDINAL_POSITION;


--2. IDENTIFY RELATIONSHIPS & CHECK ORPHAN RECORDS

/*
SELECT *
FROM Product p
LEFT JOIN [Product Type] pt
ON p.[Product Type ID] = pt.[Product Type ID]
WHERE pt.[Product Type ID] IS NULL;

SELECT *
FROM Product p
LEFT JOIN Supplier s
ON p.[Supplier ID] = s.[Supplier ID]
WHERE s.[Supplier ID] IS NULL;

SELECT *
FROM Orders o
LEFT JOIN Customer c
ON o.[Customer ID] = c.[Customer ID]
WHERE c.[Customer ID] IS NULL;

SELECT *
FROM [Orders Detail] od
LEFT JOIN Orders o
ON od.[Order ID] = o.[Order ID]
WHERE o.[Order ID] IS NULL;

SELECT *
FROM [Orders Detail] od
LEFT JOIN Product p
ON od.[Product ID] = p.[Product ID]
WHERE p.[Product ID] IS NULL;

SELECT *
FROM [Employee Addresses] ea
LEFT JOIN Employee e
ON ea.[Employee ID] = e.[Employee ID]
WHERE e.[Employee ID] IS NULL;

SELECT *
FROM [List Totals] lt
LEFT JOIN [Orders] o ON lt.[Order ID] = o.[Order ID]
WHERE o.[Order ID] IS NULL;
*/


--3. DELETING AN INCORRECT ENTRY

/*
DELETE FROM Orders
WHERE [Order ID] = 3122;

DELETE FROM [Orders Detail]
WHERE [Order ID] = 3122;

DELETE FROM [List Totals]
WHERE [Order ID] = 3122;
*/


--4. CHECK DATA QUALITY

/*
SELECT *
FROM Customer
WHERE [Customer Name] IS NULL;

SELECT *
FROM Customer
WHERE [Postal Code] IS NULL;

SELECT *
FROM Product
WHERE [Product Name] IS NULL;

SELECT
MIN([Price (SRP)]) AS Min_Price,
MAX([Price (SRP)]) AS Max_Price
FROM Product;

SELECT DISTINCT [M/F]
FROM Product;

SELECT *
FROM Orders
WHERE [Order Date] > GETDATE();

SELECT *
FROM Orders
WHERE [Ship Date] < [Order Date];

SELECT
    [Product ID],
    COUNT(*) AS Cnt
FROM Product
GROUP BY [Product ID]
HAVING COUNT(*) > 1;
*/


--5. VALIDATE PRIMARY KEYS

/*
SELECT COUNT(*)
FROM Customer
WHERE [Customer ID] IS NULL;

SELECT
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT [Customer ID]) AS UniqueCustomerIDs
FROM Customer;

SELECT COUNT(*) 
FROM Product 
WHERE [Product ID] IS NULL;

SELECT
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT [Product ID]) AS UniqueProductIDs
FROM Product;

SELECT COUNT(*) 
FROM Supplier 
WHERE [Supplier ID] IS NULL;

SELECT
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT [Supplier ID]) AS UniqueSupplierIDs
FROM Supplier;

SELECT COUNT(*) 
FROM Employee 
WHERE [Employee ID] IS NULL;

SELECT
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT [Employee ID]) AS UniqueEmployeeIDs
FROM Employee;
*/
