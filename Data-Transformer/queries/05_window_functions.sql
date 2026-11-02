USE DATATRANSFORMER;

-- QUERY 14: RUNNING TOTAL
SELECT
OrderID,
OrderDate,
TotalAmount,
SUM(TotalAmount) OVER ( ORDER BY OrderDate, OrderID) AS RunningTotal
FROM Orders;

-- QUERY 15: RANK ORDERS

SELECT
OrderID,
CustomerID,
TotalAmount,
RANK() OVER (ORDER BY TotalAmount DESC) AS OrderRank
FROM Orders;