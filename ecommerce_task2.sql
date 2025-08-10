-- Step 1: Create database
CREATE DATABASE ecommerce_db;
USE ecommerce_db;

-- Step 2: Create tables
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15) DEFAULT NULL
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    stock INT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2) DEFAULT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Step 3: INSERT INTO (adding rows, some NULL values)
INSERT INTO customers (name, email, phone)
VALUES
('Anita Pandey', 'anita@example.com', '9876543210'),
('Rahul Mehta', 'rahul@example.com', NULL),
('Priya Sharma', 'priya@example.com', '9123456789');

INSERT INTO products (product_name, price, stock)
VALUES
('Laptop', 55000.00, 10),
('Headphones', 1500.00, 50),
('Smartphone', NULL, 20);

INSERT INTO orders (customer_id, order_date, total_amount)
VALUES
(1, '2025-08-10', 55000.00),
(2, '2025-08-10', NULL),
(3, '2025-08-09', 1500.00);

set sql_safe_updates = 0;

-- Step 4: UPDATE (fix NULL values)
UPDATE products
SET price = 20000.00
WHERE product_name = 'Smartphone';

UPDATE orders
SET total_amount = 1500.00
WHERE order_id = 2;

-- Step 5: DELETE
DELETE FROM products
WHERE stock = 0;