USE DATATRANSFORMER;


-- QUERY 5: SUBQUERY

SELECT DISTINCT
c.CustomerID,
c.FirstName,
c.LastName
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.TotalAmount > (SELECT AVG(TotalAmount) 
FROM Orders);

-- QUERY 6: SUBQUERY
SELECT
EmployeeID,
FirstName,
LastName,
Department,
Salary
FROM Employees
WHERE Salary > (SELECT AVG(Salary)
FROM Employees
);

