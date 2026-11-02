USE DATATRANSFORMER;


-- QUERY 16: ASSIGN DISCOUNTS

SELECT
OrderID,
TotalAmount,
CASE
    WHEN TotalAmount > 1000 THEN '10% Discount'
    WHEN TotalAmount > 500 THEN '5% Discount'
    ELSE 'No Discount'
END AS Discount
FROM Orders;

-- QUERY 17: SALARY CATEGORIZATION

SELECT
EmployeeID,
FirstName,
LastName,
Department,
Salary,
CASE
    WHEN Salary > 80000 THEN 'High'
    WHEN Salary >= 50000 THEN 'Medium'
    ELSE 'Low'
END AS SalaryCategory
FROM Employees;