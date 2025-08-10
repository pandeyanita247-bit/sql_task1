create database college;
use college;
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);
INSERT INTO Products (ProductName, Category, Price, Stock) VALUES
('Laptop', 'Electronics', 65000.00, 10),
('Smartphone', 'Electronics', 30000.00, 20),
('Shoes', 'Fashion', 2000.00, 50),
('Washing Machine', 'Home Appliances', 25000.00, 5),
('T-Shirt', 'Fashion', 800.00, 100),
('Headphones', 'Electronics', 1500.00, 35),
('Microwave', 'Home Appliances', 7000.00, 8);
SELECT Category, SUM(Stock) AS TotalStock
FROM Products
GROUP BY Category;
SELECT Category, COUNT(*) AS ProductCount
FROM Products
GROUP BY Category;
SELECT Category, AVG(Price) AS AvgPrice
FROM Products
GROUP BY Category;
SELECT Category, SUM(Stock) AS TotalStock
FROM Products
GROUP BY Category
HAVING SUM(Stock) > 30;
SELECT Category, COUNT(*) AS ProductCount, AVG(Price) AS AvgPrice, SUM(Stock) AS TotalStock
FROM Products
GROUP BY Category;