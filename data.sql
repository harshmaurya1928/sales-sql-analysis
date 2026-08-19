INSERT INTO Customers (CustomerID, CustomerName, City)
VALUES
(1, 'Amit', 'Delhi'),
(2, 'Priya', 'Mumbai'),
(3, 'Rahul', 'Delhi'),
(4, 'Sneha', 'Bangalore');

TRUNCATE TABLE Products;
INSERT INTO Products (ProductID, ProductName, Category, Price)
VALUES
(101, 'Laptop', 'Electronics', 60000),
(102, 'Phone', 'Electronics', 30000),
(103, 'Headphones', 'Accessories', 2000),
(104, 'Keyboard', 'Accessories', 1500);

TRUNCATE TABLE Orders;

INSERT INTO Orders (OrderID, CustomerID, ProductID, Quantity, OrderDate)
VALUES
(1001, 1, 101, 1, '2026-01-10'),
(1002, 2, 102, 2, '2026-01-12'),
(1003, 1, 103, 3, '2026-01-15'),
(1004, 3, 101, 1, '2026-02-01'),
(1005, 4, 104, 4, '2026-02-05'),
(1006, 2, 103, 2, '2026-02-08');
