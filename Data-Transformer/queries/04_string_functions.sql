-- QUERY 10: CONCATENATE FULL NAME
USE DATATRANSFORMER;

SELECT
CustomerID,
FirstName,
LastName,
CONCAT(FirstName, ' ', LastName) AS FullName
FROM Customers;

-- QUERY 11: REPLACE STRING
SELECT
CustomerID,
FirstName,
LastName,
REPLACE(FirstName, 'Rahul', 'Jonathan') AS UpdatedFirstName
FROM Customers;

-- QUERY 12: UPPERCASE AND LOWERCASE

SELECT
CustomerID,
FirstName,
LastName,
UPPER(FirstName) AS UpperFirstName,
LOWER(LastName) AS LowerLastName
FROM Customers;

-- QUERY 13: REMOVE EXTRA SPACES

SELECT
CustomerID,
Email,
TRIM(Email) AS CleanEmail
FROM Customers;