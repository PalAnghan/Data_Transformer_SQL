-- QUERY 7: EXTRACT YEAR AND MONTH

USE DATATRANSFORMER;

SELECT
OrderID,
OrderDate,
YEAR(OrderDate) AS OrderYear,
MONTH(OrderDate) AS OrderMonth
FROM Orders;

--QUERY 8: DATE DIFFERENCE

SELECT
OrderID,
OrderDate,
CURDATE() AS CurrentDate,
DATEDIFF(CURDATE(), OrderDate) AS DaysPassed
FROM Orders;

-- QUERY 9: FORMAT ORDER DATE
SELECT
OrderID,
OrderDate,
DATE_FORMAT(OrderDate, '%d-%m-%y')AS FormattedDate
FROM Orders;