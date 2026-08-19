USE EcommerceDB;

#View all customers
SELECT *
FROM EcommerceDB.customers;

#View all products
SELECT *
FROM EcommerceDB.Products;
    
#View all orders
SELECT *
FROM EcommerceDB.Orders;

#Total revenue generated
SELECT 
    SUM(Quantity * Price) AS Total_Revenue
FROM
    Orders
        INNER JOIN
    Products ON Products.ProductID = Orders.ProductID;

#Revenue by product category
SELECT 
    Category, SUM(Quantity * Price) AS Revenue
FROM
    Orders
        INNER JOIN
    Products ON Products.ProductID = Orders.ProductID
GROUP BY Category
ORDER BY Revenue DESC;

#Top customers by spending
SELECT Customers.CustomerName , Customers.CustomerID , SUM(Quantity * Price) AS Revenue,
RANK() OVER(ORDER BY SUM(Quantity * Price) DESC) AS Top_Spender
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
INNER JOIN Products
ON Products.ProductID = Orders.ProductID
GROUP BY CustomerName , CustomerID;

#Best-selling products
SELECT 
    Products.ProductName,
    Products.ProductID,
    SUM(Quantity) AS Best_Selling
FROM
    Products
        INNER JOIN
    Orders ON Products.ProductID = Orders.ProductID
GROUP BY ProductName , ProductID
ORDER BY ProductName DESC;

#Monthly sales trend
SELECT 
    DATE_FORMAT(OrderDate, '%Y-%m') AS Month,
    SUM(Quantity * Price)
FROM
    Orders
        INNER JOIN
    Products ON Orders.productID = Products.ProductID
GROUP BY DATE_FORMAT(OrderDate, '%Y-%m')
ORDER BY Month;

#Average order value
SELECT AVG(Quantity * Price) as AvgOrderValue
FROM Orders
INNER JOIN Products
ON Orders.ProductID = Products.ProductID;

#Customers who spent above average
SELECT *
FROM (
    SELECT
        c.CustomerID,
        c.CustomerName,
        SUM(o.Quantity * p.Price) AS TotalSpent
    FROM Customers c
    JOIN Orders o
        ON c.CustomerID = o.CustomerID
    JOIN Products p
        ON o.ProductID = p.ProductID
    GROUP BY c.CustomerID, c.CustomerName
) customer_spending
WHERE TotalSpent > (
    SELECT AVG(TotalSpent)
    FROM (
        SELECT
            SUM(o.Quantity * p.Price) AS TotalSpent
        FROM Orders o
        JOIN Products p
            ON o.ProductID = p.ProductID
        GROUP BY o.CustomerID
    ) avg_spending
);

#Product ranking using DENSE_RANK()
SELECT p.ProductName,
       p.ProductID,
       SUM(o.Quantity) AS TotalQuantitySold,
       DENSE_RANK() OVER (
           ORDER BY SUM(o.Quantity) DESC
       ) AS ProductRank
FROM Products p
JOIN Orders o
ON p.ProductID = o.ProductID
GROUP BY p.ProductName, p.ProductID;

#Highest-selling product in each category using ROW_NUMBER()
SELECT *
FROM (
    SELECT ProductName,
           Category,
           SUM(Quantity) AS TotalSold,
           ROW_NUMBER() OVER (
               PARTITION BY Category
               ORDER BY SUM(Quantity) DESC
           ) AS RNK
    FROM Products
    INNER JOIN Orders
        ON Products.ProductID = Orders.ProductID
    GROUP BY ProductName, Category
) RankProduct
WHERE RNK = 1;

#City-wise revenue contribution
SELECT 
    City, SUM(Quantity * Price) AS Revenue
FROM
    Customers
        JOIN
    Orders ON Customers.CustomerID = Orders.CustomerID
        JOIN
    Products ON Orders.ProductID = Products.ProductId
GROUP BY City
ORDER BY Revenue DESC;

#
SELECT c.CustomerName,
       SUM(o.Quantity * p.Price) AS TotalSpent,
       CASE
           WHEN SUM(o.Quantity * p.Price) >= 50000 THEN 'High Value'
           WHEN SUM(o.Quantity * p.Price) >= 10000 THEN 'Medium Value'
           ELSE 'Low Value'
       END AS CustomerSegment
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID
JOIN Products p
ON o.ProductID = p.ProductID
GROUP BY c.CustomerName;
