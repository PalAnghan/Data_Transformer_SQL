-- QUERY 1: INNER JOIN

USE DATATRANSFORMER;

SELECT 
c.CustomerID,
c.FirstName,
c.LastName,
c.Email,
o.OrderID,
o.OrderDate,
o.TOtalAmount 
FROM Customers as c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID;


-- QUERY 2: LEFT JOIN

SELECT
c.CustomerID,
c.FirstName,
c.LastName,
o.OrderID,
o.OrderDate,
o.TotalAmount
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;

-- QUERY 3: RIGHT JOIN

SELECT 
c.CustomerID,
c.FirstName,
c.LastName,
o.OrderID,
o.OrderDate,
o.TotalAmount
FROM Customers c                                     
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID;


-- QUERY 4: FULL OUTER JOIN

SELECT *
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
UNION
SELECT *
FROM Customers c
RIGHT JOIN Orders o
ON c.CustomerID = o.CustomerID;



