SHOW DATABASES;

CREATE DATABASE e_commerce_db;

DROP DATABASE e_commerce_db;

CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE products (
    product_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(150) NOT NULL,
    sku VARCHAR(100) NOT NULL UNIQUE,
    category VARCHAR(100) NOT NULL DEFAULT 'Electronics',
    brand VARCHAR(100),
    price DECIMAL(10, 2) NOT NULL CHECK (price >= 0),
    discount_price DECIMAL(10, 2) DEFAULT NULL CHECK (discount_price >= 0),
    stock INT NOT NULL DEFAULT 0 CHECK (stock >= 0),
    description TEXT,
    is_available BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (product_id),
    INDEX idx_category (category),
    INDEX idx_price (price)
);

DESCRIBE products;

TRUNCATE TABLE products;
ALTER TABLE products AUTO_INCREMENT = 1;

INSERT INTO products (product_name, sku, category, brand, price, discount_price, stock, description, is_available, created_at, updated_at) VALUES
('Wireless Noise-Cancelling Headphones', 'ELEC-HDP-001', 'Electronics', 'Sony', 29999.00, 24999.00, 45, 'Over-ear wireless active noise-cancelling headphones.', 1, '2025-03-10 14:30:00', '2025-03-15 10:00:00'),
('Smartphone Pro 5G', 'ELEC-PHN-002', 'Electronics', 'OnePlus', 49999.00, 45999.00, 30, 'Flagship 5G smartphone with AMOLED display.', 1, '2025-04-12 10:15:00', '2025-04-20 18:30:00'),
('Gaming Laptop 15.6"', 'ELEC-LAP-003', 'Electronics', 'ASUS', 85000.00, 79999.00, 0, 'High-performance gaming laptop with RTX graphics.', 0, '2025-05-18 09:00:00', '2025-06-01 12:00:00'),
('Smartwatch Series 7', 'ELEC-WAT-004', 'Electronics', 'Apple', 41999.00, 38999.00, 50, 'Advanced fitness tracking and retina display.', 1, '2025-06-20 16:45:00', '2025-06-25 14:10:00'),
('Bluetooth Portable Speaker', 'ELEC-SPK-005', 'Electronics', 'JBL', 6499.00, 4999.00, 120, 'Waterproof portable bluetooth speaker.', 1, '2025-07-22 11:20:00', '2025-07-30 09:15:00'),
('4K Ultra HD Smart TV 55"', 'ELEC-TV-006', 'Electronics', 'Samsung', 55000.00, 48999.00, 10, 'Crystal 4K UHD smart LED TV.', 1, '2025-08-05 13:10:00', '2025-08-10 11:25:00'),
('Ergonomic Office Chair', 'HOME-CHR-007', 'Home & Kitchen', 'GreenSoul', 12999.00, 9999.00, 0, 'Breathable mesh office chair with lumbar support.', 0, '2025-09-15 08:30:00', '2025-09-20 17:00:00'),
('Stainless Steel Air Fryer', 'HOME-AFR-008', 'Home & Kitchen', 'Philips', 10999.00, 8999.00, 40, 'Digital air fryer with rapid air technology.', 1, '2025-10-10 12:00:00', '2025-10-15 15:40:00'),
('Robot Vacuum Cleaner', 'HOME-VAC-009', 'Home & Kitchen', 'Xiaomi', 21999.00, 18999.00, 18, 'Smart robotic vacuum cleaner with mapping.', 1, '2025-11-01 15:40:00', '2025-11-05 10:20:00'),
('Non-Stick Cookware Set', 'HOME-CNS-010', 'Home & Kitchen', 'Prestige', 3499.00, 2799.00, 60, 'Durablend non-stick aluminum cookware set.', 1, '2025-11-25 09:50:00', '2025-12-02 12:10:00'),
('Running Shoes For Men', 'FOOT-RUN-011', 'Footwear', 'Nike', 7999.00, 6499.00, 85, 'Lightweight running shoes designed for daily comfort.', 1, '2025-12-05 14:10:00', '2025-12-10 08:30:00'),
('Casual Sneakers', 'FOOT-SNK-012', 'Footwear', 'Puma', 4599.00, 3499.00, 0, 'Classic low-top casual sneakers.', 0, '2025-12-18 11:30:00', '2025-12-22 14:50:00'),
('Formal Leather Shoes', 'FOOT-FOR-013', 'Footwear', 'Bata', 2999.00, 2499.00, 40, 'Genuine leather formal oxfords.', 1, '2026-01-08 10:00:00', '2026-01-12 11:15:00'),
('Sports Training Shoes', 'FOOT-TRN-014', 'Footwear', 'Adidas', 5999.00, 4799.00, 55, 'Durable training shoes with extra cushioning.', 1, '2026-01-15 13:20:00', '2026-01-20 16:40:00'),
('Slip-On Walking Shoes', 'FOOT-SLP-015', 'Footwear', 'Skechers', 6999.00, 5599.00, 35, 'Memory foam slip-on shoes for walking.', 1, '2026-01-28 15:00:00', '2026-02-02 09:30:00'),
('Cotton Casual Hoodie', 'CLTH-HUD-016', 'Clothing', 'H&M', 2499.00, 1999.00, 150, 'Fleece-lined cotton pullover hoodie.', 1, '2026-02-02 09:15:00', '2026-02-08 13:10:00'),
('Slim Fit Denim Jeans', 'CLTH-JNS-017', 'Clothing', 'Levi\'s', 3999.00, 2999.00, 0, 'Stretchable slim-fit denim jeans.', 0, '2026-02-14 16:30:00', '2026-02-20 10:00:00'),
('Formal Cotton Shirt', 'CLTH-SHT-018', 'Clothing', 'Van Heusen', 2199.00, 1699.00, 75, 'Solid long-sleeve formal shirt.', 1, '2026-02-20 11:45:00', '2026-02-25 14:20:00'),
('Waterproof Windcheater', 'CLTH-JKT-019', 'Clothing', 'Decathlon', 3499.00, 2999.00, 45, 'Lightweight windproof outdoor jacket.', 1, '2026-03-01 10:20:00', '2026-03-05 11:00:00'),
('Graphic Printed T-Shirt', 'CLTH-TSH-020', 'Clothing', 'Zara', 1299.00, 999.00, 200, '100% pure cotton casual t-shirt.', 1, '2026-03-10 14:00:00', '2026-03-15 16:30:00'),
('Leather Messenger Bag', 'ACC-BAG-021', 'Accessories', 'WildCraft', 4500.00, 3500.00, 30, 'Vintage style leather messenger bag.', 1, '2026-03-15 08:50:00', '2026-03-20 09:15:00'),
('Minimalist Quartz Watch', 'ACC-WTC-022', 'Accessories', 'Titan', 5999.00, 4999.00, 0, 'Analog stainless steel watch.', 0, '2026-03-22 12:15:00', '2026-03-28 14:00:00'),
('Polarized Sunglasses', 'ACC-SUN-023', 'Accessories', 'Fastrack', 2299.00, 1799.00, 65, 'UV protected polarized sunglasses.', 1, '2026-03-30 15:30:00', '2026-04-04 11:20:00'),
('RFID Blocking Wallet', 'ACC-WLT-024', 'Accessories', 'Woodland', 1499.00, 1199.00, 80, 'Genuine leather bi-fold wallet.', 1, '2026-04-02 09:40:00', '2026-04-07 10:50:00'),
('Dumbbell Set 10kg', 'SPRT-DMB-025', 'Sports', 'Kore', 2499.00, 1999.00, 50, 'PVC home gym dumbbell weight set.', 1, '2026-04-08 11:10:00', '2026-04-14 15:00:00'),
('Yoga Mat Anti-Slip', 'SPRT-YOG-026', 'Sports', 'Strauss', 999.00, 799.00, 100, 'Eco-friendly thick anti-slip yoga mat.', 1, '2026-04-12 14:25:00', '2026-04-18 09:40:00'),
('Badminton Racquet Combo', 'SPRT-BAT-027', 'Sports', 'Yonex', 3299.00, 2799.00, 40, 'Graphite lightweight badminton racquet set.', 1, '2026-04-19 16:00:00', '2026-04-24 12:10:00'),
('Mechanical Keyboard', 'ELEC-KEY-028', 'Electronics', 'Razer', 7499.00, 5999.00, 0, 'RGB backlit mechanical gaming keyboard.', 0, '2026-04-25 10:30:00', '2026-05-01 17:20:00'),
('Wireless Gaming Mouse', 'ELEC-MSE-029', 'Electronics', 'Logitech', 3999.00, 3299.00, 70, 'Ergonomic wireless gaming mouse.', 1, '2026-05-02 13:45:00', '2026-05-07 11:30:00'),
('External SSD 1TB', 'ELEC-SSD-030', 'Electronics', 'SanDisk', 9999.00, 8499.00, 45, 'Portable high-speed external SSD.', 1, '2026-05-08 09:20:00', '2026-05-12 14:10:00'),
('Electric Kettle 1.5L', 'HOME-KTL-031', 'Home & Kitchen', 'Pigeon', 1299.00, 899.00, 90, 'Stainless steel fast boiling kettle.', 1, '2026-05-14 11:50:00', '2026-05-19 10:00:00'),
('Microwave Oven 20L', 'HOME-MIC-032', 'Home & Kitchen', 'LG', 7999.00, 6999.00, 20, 'Solo microwave oven for quick cooking.', 1, '2026-05-20 15:10:00', '2026-05-26 13:40:00'),
('Memory Foam Pillow', 'HOME-PLW-033', 'Home & Kitchen', 'Sleepwell', 1999.00, 1499.00, 60, 'Ergonomic memory foam pillow.', 1, '2026-05-25 08:15:00', '2026-05-30 09:50:00'),
('Running Track Pants', 'CLTH-PNT-034', 'Clothing', 'Nike', 2999.00, 2399.00, 85, 'Breathable athletic track pants.', 1, '2026-06-01 12:40:00', '2026-06-06 16:10:00'),
('Winter Woolen Beanie', 'ACC-BNI-035', 'Accessories', 'WildCraft', 699.00, 499.00, 110, 'Soft woolen knitted beanie cap.', 1, '2026-06-05 10:00:00', '2026-06-11 11:20:00'),
('Stainless Steel Bottle', 'HOME-BTL-036', 'Home & Kitchen', 'Milton', 899.00, 699.00, 130, 'Insulated vacuum flask water bottle.', 1, '2026-06-10 14:30:00', '2026-06-15 08:30:00'),
('Desk LED Lamp', 'HOME-LMP-037', 'Home & Kitchen', 'Wipro', 1599.00, 1199.00, 0, 'Dimmable touch-control LED desk lamp.', 0, '2026-06-15 16:20:00', '2026-06-21 14:00:00'),
('Canvas Backpack', 'ACC-BCK-038', 'Accessories', 'American Tourister', 2500.00, 1999.00, 50, 'Casual water-resistant canvas backpack.', 1, '2026-06-20 09:30:00', '2026-06-26 10:15:00'),
('Bluetooth Earbuds', 'ELEC-ERB-039', 'Electronics', 'boAt', 2499.00, 1499.00, 160, 'True wireless earbuds with fast charging.', 1, '2026-06-25 11:15:00', '2026-07-01 12:30:00'),
('Collapsible Wardrobe', 'HOME-WRD-040', 'Home & Kitchen', 'DeckUp', 2299.00, 1799.00, 25, 'Portable fabric storage organizer.', 1, '2026-07-02 13:00:00', '2026-07-07 09:45:00'),
('Formal Blazer', 'CLTH-BLZ-041', 'Clothing', 'Raymond', 6999.00, 5999.00, 20, 'Tailored fit premium formal blazer.', 1, '2026-07-08 15:45:00', '2026-07-13 11:10:00'),
('Running Shorts', 'CLTH-SRT-042', 'Clothing', 'Puma', 1499.00, 1099.00, 90, 'Lightweight athletic shorts.', 1, '2026-07-14 10:10:00', '2026-07-19 15:20:00'),
('Leather Belt', 'ACC-BLT-043', 'Accessories', 'Hidesign', 1799.00, 1399.00, 60, 'Classic formal pure leather belt.', 1, '2026-07-20 12:30:00', '2026-07-25 10:00:00'),
('Hair Dryer', 'ELEC-HDR-044', 'Electronics', 'Havells', 1499.00, 1199.00, 75, 'Compact foldable hair dryer.', 1, '2026-07-25 09:00:00', '2026-07-30 13:15:00'),
('Trimmer for Men', 'ELEC-TRM-045', 'Electronics', 'Philips', 1899.00, 1499.00, 0, 'Cordless rechargeable beard trimmer.', 0, '2026-08-01 14:15:00', '2026-08-06 16:40:00'),
('Cotton Bedsheet King Size', 'HOME-BED-046', 'Home & Kitchen', 'Bombay Dyeing', 1999.00, 1499.00, 55, 'Printed 100% cotton king size bedsheet.', 1, '2026-08-05 11:20:00', '2026-08-10 09:30:00'),
('Gym Duffle Bag', 'SPRT-BAG-047', 'Sports', 'Nike', 2999.00, 2499.00, 40, 'Durable waterproof gym sports duffle bag.', 1, '2026-08-12 16:00:00', '2026-08-17 11:00:00'),
('Skipping Rope', 'SPRT-ROP-048', 'Sports', 'Vector X', 499.00, 349.00, 150, 'Adjustable steel wire speed rope.', 1, '2026-08-18 10:45:00', '2026-08-23 14:20:00'),
('Smart LED Bulb 9W', 'HOME-BLB-049', 'Home & Kitchen', 'Syska', 799.00, 499.00, 200, 'Wi-Fi enabled color-changing smart bulb.', 1, '2026-08-25 13:30:00', '2026-08-30 10:15:00'),
('Portable Power Bank 20000mAh', 'ELEC-PWR-050', 'Electronics', 'Mi', 2199.00, 1799.00, 95, 'High-capacity dual output power bank.', 1, '2026-09-02 11:00:00', '2026-09-07 15:00:00');


-- Project Requirements
-- 1. All products retrieve karo.
    SELECT * FROM products;
-- 2. Electronics category ke products find karo.
    SELECT product_name AS 'Products', category AS 'Category' 
    FROM products
    WHERE category = 'Electronics'

    -- OR
    SELECT * FROM products
    WHERE category IN('electronics');

-- 3. Price 500 se 5000 ke beech wale products.
    SELECT * FROM products
    WHERE price BETWEEN 500 AND 5000;

-- 4. Stock 0 se zyada wale products.
    SELECT * FROM products
    WHERE stock > 0;
-- 5. Top 5 expensive products.
    SELECT * from products
    ORDER BY price DESC LIMIT 5;
-- 6. Product names jo S se start hote hain.
    SELECT * FROM products
    WHERE product_name LIKE 'S%';
-- 7. Electronics OR Furniture category.
    SELECT * FROM products
    WHERE category = "Electronics" OR category = "Clothing";

    -- or
    SELECT * FROM products
    WHERE category IN ("Electronics" , "Home & Kitchen");
    
-- 8. Products ko price ascending order mein arrange karo.
    SELECT * FROM products
    ORDER BY price ;
-- 9. First 5 products skip karke next 5 show karo.
    SELECT * FROM products
    LIMIT 5, 5;



    
