--     Part 3 – Independent Labs
-- Inhe independently solve karna. No hints, no solutions.

-- 1. Employee Salary Filter: Employees find karo jinki salary 30000 se 50000 ke beech hai.
SELECT *
from employees
WHERE
    salary BETWEEN 30000 AND 50000;
-- 2. Product Price Filter: Products find karo jinki price 1000 se kam ya 5000 se zyada hai.
    SELECT *
FROM products
WHERE price < 1000 OR price > 5000;
-- 3. Student Search: Aise students find karo jinka naam A se start hota hai.
        SELECT * FROM students
         WHERE name LIKE 'A%';
-- 4. Library Search: Aisi books find karo jinke title mein SQL present hai.
            SELECT * FROM library
             WHERE title LIKE '%sql%';

-- 5. Customer Location: Delhi, Mumbai aur Lucknow ke customers find karo.
    SELECT * FROM customer
    WHERE location IN('Delhi', 'Mumbai','Lucknow');

-- 6. Top Performers: Highest marks wale top 5 students find karo.
    SELECT * from students
    ORDER BY marks DESC LIMIT 5;
-- 7. Employee Sorting: Employees ko department ascending aur salary descending order mein arrange karo.
    SELECT * FROM employees
    ORDER BY department , salary DESC;

-- 8. Banking Filter: Aise accounts find karo jinka balance 10000 se 100000 ke beech hai.
    SELECT * from users
     WHERE balance BETWEEN 10000 AND 100000;
