
-- Part 3 – Independent Labs
-- No hints. Khud solve karna.
-- count total products

-- #	Challenge
-- 1	E-commerce mein total products count karo.
SELECT 
    COUNT(*) AS total_products
FROM products;
-- 2	Orders ka total revenue calculate karo.

-- 3	Highest aur lowest product price find karo.
-- highest and lowest products price
SELECT
    MAX(price) AS highest_product_price,
    MIN(price) AS lowest_product_price
FROM products;
-- 4	Category-wise products count karo.
SELECT 
    category AS product_category,
    COUNT(*)
FROM products
GROUP BY category;
-- 5	Category-wise average product price calculate karo.
SELECT 
    category AS product_category,
    AVG(price) AS avg_product_price
FROM products
GROUP BY category;
-- 6	Departments show karo jahan 5 se zyada employees hain.
SELECT
    department,
    COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;
-- 7	Cities show karo jahan average salary 40000 se zyada hai.
SELECT
    city,
    AVG(salary) AS avg_salary
FROM employees
GROUP BY city
HAVING AVG(salary) > 40000;
-- 8	Monthly sales report ke liye month-wise order count aur revenue calculate karo.

-- department show kro jaha avg salary > 40000
SELECT
    department,
    AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 40000;

-- city show kro yaha employees greater than 2 ho 
select 
    city,
    COUNT(*) AS total_employees
from employees
WHERE city = 'DELHI'
GROUP BY city
HAVING COUNT(*) > 2;




    



    
