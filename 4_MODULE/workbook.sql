/*

A. Aggregate Functions
1. Total employees count karo.
2. Total salary calculate karo.
3. Average salary calculate karo.
4. Highest salary find karo.
5. Lowest salary find karo.
6. Unique departments count karo.
B. GROUP BY
7. Department-wise employee count.
8. Department-wise total salary.
9. Department-wise average salary.
10. City-wise employee count.
11. Department aur city-wise employee count.
C. HAVING
12. Sirf woh departments show karo jahan 3 se zyada employees hain.
13. Departments jinki average salary 45000 se zyada hai.
14. Cities jahan total employees 2 ya usse zyada hain.
D. Combined Practice
15. Delhi ke employees ko department-wise group karo aur unki average salary calculate karo.
16. Sirf un departments ko show karo jinki total salary 100000 se zyada hai.
17. IT department mein highest salary find karo.

*/



CREATE DATABASE module4_practice;
USE module4_practice;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Aman', 'IT', 50000, 'Delhi'),
(2, 'Rahul', 'HR', 35000, 'Mumbai'),
(3, 'Priya', 'IT', 60000, 'Delhi'),
(4, 'Neha', 'Finance', 45000, 'Noida'),
(5, 'Rohit', 'HR', 40000, 'Delhi'),
(6, 'Simran', 'IT', 55000, 'Mumbai'),
(7, 'Vikas', 'Finance', 50000, 'Noida'),
(8, 'Anjali', 'HR', 30000, 'Delhi'),
(9, 'Karan', 'IT', 70000, 'Noida'),
(10, 'Pooja', 'Finance', 48000, 'Mumbai');





SELECT COUNT(*) FROM employees;
SELECT SUM(salary) FROM employees;
SELECT AVG(salary) FROM employees;
SELECT MAX(salary) FROM employees;
SELECT MIN(salary) FROM employees;

SELECT COUNT(DISTINCT(department)) FROM employees;


SELECT department,
    COUNT(*) FROM employees
    GROUP BY department;
SELECT department,
 SUM(salary)
  FROM employees GROUP BY department;

  SELECT department ,
  AVG(salary)FROM employees
  GROUP BY department;
SELECT city , COUNT (*) FROM employees
GROUP BY city ;

SELECT department, city , COUNT(*) FROM employees
GROUP BY department , city;


SELECT department ,
    COUNT(*)
    FROM employees
GROUP BY department 
HAVING COUNT(*) > 3 ;

SELECT department,
    AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary ) > 45000;


SELECT city,
COUNT(*)
FROM employees
GROUP BY city
HAVING COUNT(*) > 2;


SELECT department,
    city,
    AVG(salary)
FROM employees
WHERE city = "Delhi"
GROUP BY department, city;

SELECT department,
    SUM(salary)
    FROM employees
GROUP BY department 
HAVING SUM(salary) > 100000;

SELECT department, MAX(salary)
FROM employees
WHERE department = 'IT'
GROUP BY department;
