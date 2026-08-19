CREATE DATABASE EcommerceDB;
USE EcommerceDB;

CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(50),
    City VARCHAR(20)
);


CREATE TABLE Products (
    ProductID INT,
    ProductName VARCHAR(50),
    Category VARCHAR(20),
    Price DECIMAL(10,2)
);


CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    OrderDate DATE
);
