SHOW DATABASES;
USE ecommerce_db;

CREATE Table orders (
    order_id INT NOT NULL AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    product_category VARCHAR(100) NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    unit_price DECIMAL(10, 2) NOT NULL CHECK (unit_price >= 0),
    city VARCHAR(100) NOT NULL,
    PRIMARY KEY (order_id)
);


DESC orders;


INSERT INTO orders (customer_name, product_category, quantity, unit_price, city) VALUES
('Aarav Sharma', 'Electronics', 1, 48000.00, 'Delhi'),
('Priya Verma', 'Electronics', 2, 18500.00, 'Mumbai'),
('Rohan Gupta', 'Clothing', 4, 1500.00, 'Lucknow'),
('Ananya Singh', 'Home & Kitchen', 2, 7500.00, 'Delhi'),
('Vikram Patel', 'Footwear', 2, 4200.00, 'Mumbai'),
('Sneha Nair', 'Electronics', 1, 32000.00, 'Bengaluru'),
('Kabir Mehta', 'Clothing', 5, 1200.00, 'Delhi'),
('Pooja Joshi', 'Home & Kitchen', 1, 14500.00, 'Jaipur'),
('Arjun Yadav', 'Footwear', 3, 2800.00, 'Lucknow'),
('Neha Kapoor', 'Electronics', 1, 25000.00, 'Mumbai'),
('Siddharth Rao', 'Clothing', 3, 2200.00, 'Bengaluru'),
('Divya Tiwari', 'Home & Kitchen', 2, 6000.00, 'Lucknow'),
('Manish Kumar', 'Electronics', 2, 15000.00, 'Delhi'),
('Ritu Malhotra', 'Footwear', 1, 5500.00, 'Jaipur'),
('Karan Verma', 'Clothing', 6, 950.00, 'Mumbai'),
('Simran Kaur', 'Electronics', 1, 52000.00, 'Delhi'),
('Aditya Mishra', 'Home & Kitchen', 3, 4500.00, 'Bengaluru'),
('Meera Choudhary', 'Footwear', 2, 3400.00, 'Delhi'),
('Harsh Vardhan', 'Clothing', 4, 1800.00, 'Lucknow'),
('Nandini Joshi', 'Electronics', 1, 29000.00, 'Jaipur'),
('Deepak Soni', 'Footwear', 2, 3100.00, 'Mumbai');



SELECT
    COUNT(*) AS total_orders
FROM orders;

-- total revenue
SELECT
    quantity,
    unit_price 
FROM orders;

SELECT 
    SUM(quantity * unit_price) AS total_revenue
FROM orders;


SELECT 
    SUM(quantity) 
FROM orders;

SELECT 
    AVG(quantity * unit_price) AS avg_order_value
FROM orders;

SELECT
    MAX(quantity * unit_price) AS highest_order_value,
    MIN(quantity * unit_price) AS lowest_order_value
FROM orders;

SELECT * FROM orders;


-- category wise total sales
SELECT 
    product_category AS category,
    COUNT(quantity) AS total_order,
    SUM(quantity * unit_price) AS total_sales
FROM orders
GROUP BY product_category;

-- city wise total revenue
SELECT 
    city,
    COUNT(quantity) AS total_order,
    SUM(quantity * unit_price)
FROM orders
GROUP BY city;

-- category wise order count
SELECT 
    product_category AS category,
    COUNT(quantity)
FROM orders
GROUP BY product_category;

SELECT 
    product_category AS category,
    SUM(quantity *  unit_price) AS revenue
FROM orders
GROUP BY product_category
HAVING SUM(quantity * unit_price) > 50000;

SELECT 
    city,
    COUNT(quantity) AS total_orders
FROM orders
GROUP BY city
HAVING COUNT(quantity) > 3;



SELECT
    product_category AS category,
    AVG(quantity * unit_price)
FROM orders
GROUP BY product_category;

SELECT
    city,
    COUNT(quantity) AS total_orders,
    SUM(quantity * unit_price) AS total_revenue
FROM orders
GROUP BY city 
ORDER BY total_revenue DESC;



-- order total revenue
SELECT
    SUM(quantity * unit_price) AS total_revenue
FROM orders;

