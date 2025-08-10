create database school;
use school;
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
SELECT * FROM Products;
SELECT ProductName, Price FROM Products;
SELECT * FROM Products
WHERE Category = 'Electronics';
SELECT * FROM Products
ORDER BY Price DESC;
SELECT * FROM Products
LIMIT 3;