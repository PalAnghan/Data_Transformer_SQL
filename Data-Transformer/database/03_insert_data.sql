
USE DataTransformer;


INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, RegistrationDate)
VALUES
(1, 'Rahul', 'Sharma', 'rahul@gmail.com', '2024-01-15'),
(2, 'Priya', 'Patel', 'priya@gmail.com', '2024-02-20'),
(3, 'Amit', 'Verma', 'amit@gmail.com', '2024-03-10'),
(4, 'Neha', 'Desai', 'neha@gmail.com', '2024-04-05'),
(5, 'Karan', 'Mehta', 'karan@gmail.com', '2024-05-12'),
(6, 'Sneha', 'Shah', 'sneha@gmail.com', '2024-06-18'),
(7, 'Arjun', 'Reddy', 'arjun@gmail.com', '2024-07-22'),
(8, 'Anjali', 'Joshi', 'anjali@gmail.com', '2024-08-30');



INSERT INTO Orders
(OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(101, 1, '2024-09-01', 1500.00),
(102, 2, '2024-09-05', 2500.00),
(103, 1, '2024-09-10', 3500.00),
(104, 3, '2024-09-15', 1200.00),
(105, 4, '2024-09-20', 4500.00),
(106, 2, '2024-10-01', 3000.00),
(107, 5, '2024-10-05', 1800.00),
(108, 6, '2024-10-10', 5200.00),
(109, 3, '2024-10-15', 2800.00),
(110, 7, '2024-10-20', 6000.00),
(111, 1, '2024-11-01', 4200.00),
(112, 5, '2024-11-05', 2200.00);



INSERT INTO Employees
(EmployeeID, FirstName, LastName, Department, HireDate, Salary)
VALUES
(1, 'Rohan', 'Sharma', 'IT', '2021-01-15', 75000.00),
(2, 'Priya', 'Patel', 'HR', '2022-03-20', 55000.00),
(3, 'Amit', 'Verma', 'Finance', '2020-06-10', 85000.00),
(4, 'Neha', 'Desai', 'IT', '2023-02-05', 65000.00),
(5, 'Karan', 'Mehta', 'Marketing', '2019-05-12', 95000.00),
(6, 'Sneha', 'Shah', 'HR', '2022-08-18', 48000.00),
(7, 'Arjun', 'Reddy', 'IT', '2021-11-22', 90000.00),
(8, 'Anjali', 'Joshi', 'Finance', '2023-04-30', 60000.00);



SELECT * FROM Customers;



SELECT * FROM Orders;


SELECT * FROM Employees;
