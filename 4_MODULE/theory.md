

# **MySQL Module 4 – Aggregate Functions & Grouping**


Is module mein hum seekhenge ki database ke thousands of records se meaningful information kaise extract karte hain.

Example:

- Total students kitne hain?
- Average fees kitni hai?
- Sabse highest fees kitni hai?
- Har city mein kitne students hain?
- Har department ki total salary kitni hai?
- Kis department ki average salary sabse zyada hai?

## **Module Roadmap**

1. **COUNT()** – Records count karna.
2. **SUM()** – Total calculate karna.
3. **AVG()** – Average calculate karna.
4. **MIN() & MAX()** – Minimum aur maximum values find karna.
5. **GROUP BY** – Records ko groups mein divide karna.
6. **HAVING** – Groups par conditions apply karna.

**Practice flow**

Theory → Syntax → Workbook → 8 Labs → Mini Project → Quiz → Debugging → Best Practices

# **Part 1 – Theory & Syntax**

## **Lesson 1: Aggregate Functions**

### **1. Aggregate Functions kya hote hain?**

Aggregate functions multiple records par calculation perform karke ek single result return karte hain.

Suppose hamare paas `students` table hai:

| student_id | name  | city   | fees  |
| ---------- | ----- | ------ | ----- |
| 1          | Aman  | Delhi  | 30000 |
| 2          | Rahul | Mumbai | 40000 |
| 3          | Priya | Delhi  | 35000 |
| 4          | Neha  | Noida  | 45000 |
| 5          | Rohit | Delhi  | 25000 |

### **2. COUNT()**

`COUNT()` records ya non-NULL column values count karta hai.

**Syntax:**

```
SELECT COUNT(column_name)
FROM table_name;
```

Example:

```
SELECT COUNT(*) AS total_students
FROM students;
```

Output:

| total_students |
| -------------- |
| 5              |

`COUNT(*)` sabhi rows count karta hai, including rows jisme NULL values hon.

**COUNT(column_name):**

```
SELECT COUNT(city) AS total_cities
FROM students;
```

Ye sirf un rows ko count karega jahan `city` NULL nahi hai.

**COUNT(DISTINCT):**

```
SELECT COUNT(DISTINCT city) AS unique_cities
FROM students;
```

Ye unique, non-NULL city values count karega.

### **3. SUM()**

`SUM()` numeric column ki total value calculate karta hai.

```
SELECT SUM(fees) AS total_fees
FROM students;
```

Output:

₹175,000

### **4. AVG()**

`AVG()` numeric column ka average calculate karta hai.

```
SELECT AVG(fees) AS average_fees
FROM students;
```

Output:

₹35,000

### **5. MIN()**

`MIN()` minimum value return karta hai.

```
SELECT MIN(fees) AS minimum_fees
FROM students;
```

Output: 25000

### **6. MAX()**

`MAX()` maximum value return karta hai.

```
SELECT MAX(fees) AS maximum_fees
FROM students;
```

Output: 45000

### **Quick Reference**

| Function | Purpose |
| -------- | ------- |
| COUNT()  | Count   |
| SUM()    | Total   |
| AVG()    | Average |
| MIN()    | Minimum |
| MAX()    | Maximum |

## **Lesson 2: GROUP BY**

Ab tak humne individual records par calculations ki hain.

Lekin agar mujhe har city ke students count karne hain, toh?

Yahan `GROUP BY` ka use hota hai.

### **1. GROUP BY kya hai?**

`GROUP BY` same values wale records ko groups mein divide karta hai, jiske baad aggregate functions har group par calculation kar sakte hain.

Example:

```
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city;
```

Expected output:

| city   | total_students |
| ------ | -------------- |
| Delhi  | 3              |
| Mumbai | 1              |
| Noida  | 1              |

Samjho kya hua:

1. SQL ne Delhi ke students ko ek group banaya.
2. Mumbai ke students ka alag group banaya.
3. Noida ke students ka alag group banaya.
4. `COUNT(*)` ne har group ke records count kiye.

### **2. Multiple Aggregate Functions with GROUP BY**

```
SELECT
    city,
    COUNT(*) AS total_students,
    SUM(fees) AS total_fees,
    AVG(fees) AS average_fees,
    MIN(fees) AS minimum_fees,
    MAX(fees) AS maximum_fees
FROM students
GROUP BY city;
```

Ek hi query mein har city ki multiple calculations!

### **3. GROUP BY Multiple Columns**

Agar city aur course dono ke according groups banane hain:

```
SELECT
    city,
    course,
    COUNT(*) AS total_students
FROM students
GROUP BY city, course;
```

Ab har unique `city + course` combination ka separate group banega.

## **Lesson 3: HAVING**

### **1. HAVING kya hai?**

`HAVING` ka use grouped results par conditions apply karne ke liye hota hai.

Example:

Humein sirf un cities ko show karna hai jahan 2 se zyada students hain.

```
SELECT
    city,
    COUNT(*) AS total_students
FROM students
GROUP BY city
HAVING COUNT(*) > 2;
```

Expected output:

| city  | total_students |
| ----- | -------------- |
| Delhi | 3              |

### **2. WHERE vs HAVING**

Ye bahut important difference hai.

| WHERE                                                | HAVING                                          |
| ---------------------------------------------------- | ----------------------------------------------- |
| Individual rows filter karta hai                     | Groups filter karta hai                         |
| GROUP BY se pehle logically apply hota hai           | GROUP BY ke baad logically apply hota hai       |
| Aggregate results par normally condition nahi lagate | Aggregate results par condition laga sakte hain |

Example – WHERE:

```
SELECT city, COUNT(*) AS total_students
FROM students
WHERE fees > 30000
GROUP BY city;
```

Pehle fees 30000 se zyada wale records select honge, phir city-wise groups banenge.

Example – HAVING:

```
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city
HAVING COUNT(*) >= 2;
```

Pehle city-wise groups banenge, phir sirf 2 ya usse zyada students wale groups milenge.

### **3. WHERE + GROUP BY + HAVING Together**

```
SELECT
    city,
    COUNT(*) AS total_students,
    AVG(fees) AS average_fees
FROM students
WHERE fees >= 30000
GROUP BY city
HAVING COUNT(*) >= 2;
```

Logical execution order:

**FROM – Table select**

**WHERE – Rows filter**

**GROUP BY – Groups create**

**HAVING – Groups filter**

**SELECT – Result columns**

**ORDER BY – Sort results**

**LIMIT – Limit results**

# **Part 2 – Workbook**

### **Workbook Setup**

Ek fresh practice database aur table create karo:

```
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
```

### **A. Aggregate Functions**

1. Total employees count karo.
2. Total salary calculate karo.
3. Average salary calculate karo.
4. Highest salary find karo.
5. Lowest salary find karo.
6. Unique departments count karo.

### **B. GROUP BY**

7. Department-wise employee count.
8. Department-wise total salary.
9. Department-wise average salary.
10. City-wise employee count.
11. Department aur city-wise employee count.

### **C. HAVING**

12. Sirf woh departments show karo jahan 3 se zyada employees hain.
13. Departments jinki average salary 45000 se zyada hai.
14. Cities jahan total employees 2 ya usse zyada hain.

### **D. Combined Practice**

15. Delhi ke employees ko department-wise group karo aur unki average salary calculate karo.
16. Sirf un departments ko show karo jinki total salary 100000 se zyada hai.
17. IT department mein highest salary find karo.

# **Part 3 – Independent Labs**

No hints. Khud solve karna.

| # | Challenge                                                                       |
| - | ------------------------------------------------------------------------------- |
| 1 | E-commerce mein total products count karo.                                      |
| 2 | Orders ka total revenue calculate karo.                                         |
| 3 | Highest aur lowest product price find karo.                                     |
| 4 | Category-wise products count karo.                                              |
| 5 | Category-wise average product price calculate karo.                             |
| 6 | Departments show karo jahan 5 se zyada employees hain.                          |
| 7 | Cities show karo jahan average salary 40000 se zyada hai.                       |
| 8 | Monthly sales report ke liye month-wise order count aur revenue calculate karo. |

*Lab 8 ke liye date-based grouping ki basic query likhna; date functions ki formal teaching Module 7 mein hogi. Abhi agar required date formatting nahi aati toh use pending rakh sakte ho.*

# **Part 4 – Mini Project: Sales Analytics System**

[E-Commerce Sales Dashboard Product UI/UX Redesign :: Behance](https://images.openai.com/static-rsc-4/7VvWCqViZInZSQqIegFlYhr4L9FGH0--yPk-DmKP6uIo0H361InMihsYFo99pcwT6Mqw181gsXYPHZOvUObfBB7Aqekarn9E3cN5_mGMCOnNrbU3vmxUZfHe8_bVrSTm6ZsVFQf9dGG1id-GPwcuCCkRn1xo_N5irgn0FT7hXEk?purpose=inline)

[behance.net](https://www.behance.net/gallery/212800553/E-Commerce-Sales-Dashboard-Product-UIUX-Redesign?utm_source=chatgpt.com)

**Database:** `sales_analytics_db`

**Table:** `orders`

Required columns:

| Column           | Data Type |
| ---------------- | --------- |
| order_id         | INT       |
| customer_name    | VARCHAR   |
| product_category | VARCHAR   |
| quantity         | INT       |
| unit_price       | DECIMAL   |
| city             | VARCHAR   |

Minimum 20 sample orders insert karo.

### **Project Tasks**

1. Total orders count.
2. Total revenue calculate.
3. Total quantity sold.
4. Average order value calculate.
5. Highest and lowest order value.
6. Category-wise total sales.
7. City-wise total revenue.
8. Category-wise order count.
9. Sirf un categories ko show karo jinki revenue 50000 se zyada hai.
10. Sirf un cities ko show karo jahan 3 se zyada orders hain.
11. Category-wise average unit price.
12. City-wise total orders aur revenue, revenue descending order mein.

Revenue calculation:

\\[ \text{Revenue} = \text{quantity} \times \text{unit\\\_price} \\]

# **Part 5 – Recap Quiz**

**8 Questions**

8/8 answered

**Q1. COUNT(\*) kya count karta hai?**

Only non-NULL column values

All rows

Only unique rows

Only numeric values

Incorrect – All rows

**Q2. AVG() kisliye use hota hai?**

Total

Maximum

Average

Count

Correct – Average

**Q3. GROUP BY ka main purpose kya hai?**

Rows delete karna

Same values ke groups banana

Tables join karna

Records update karna

Correct – Same values ke groups banana

**Q4. Group-level filtering ke liye kya use hota hai?**

WHERE

ORDER BY

HAVING

LIMIT

Correct – HAVING

**Q5. WHERE logically kab apply hota hai?**

GROUP BY se pehle

HAVING ke baad

SELECT ke baad

LIMIT ke baad

Correct – GROUP BY se pehle

**Q6. COUNT(column) NULL values ko count karta hai?**

Yes

No

Only once

Depends on ORDER BY

Correct – No

**Q7. MIN(salary) kya return karega?**

Highest salary

Average salary

Lowest salary

Total salary

Correct – Lowest salary

**Q8. GROUP BY department, city ka kya meaning hai?**

Two separate queries

Department aur city ke unique combinations ke groups

Only city grouping

Only department grouping

Correct – Department aur city ke unique combinations ke groups

# **7/8**

Retry Quiz

# **Part 6 – Debugging**

**Bug 1**

```
SELECT department COUNT(*)
FROM employees
GROUP BY department;
```

**Bug 2**

```
SELECT department, AVG(salary)
FROM employees
WHERE AVG(salary) > 40000
GROUP BY department;
```

**Bug 3**

```
SELECT city, COUNT(*)
FROM employees
GROUP BY city
HAVING COUNT(*) > 2
WHERE city = 'Delhi';
```

**Bug 4**

```
SELECT department, SUM(salary)
FROM employees
GROUP BY city;
```

Har bug ko identify, correct aur explain karna.

# **Part 7 – Best Practices**

1. Aggregate results ko meaningful aliases do.
2. `COUNT(*)` aur `COUNT(column)` ka difference samjho.
3. Filtering individual rows ke liye WHERE use karo.
4. Group-level conditions ke liye HAVING use karo.
5. GROUP BY mein non-aggregated selected columns ko properly include karo.
6. Large reports mein unnecessary columns select mat karo.
7. Calculations ke output ko actual records se verify karo.
8. Financial values ke liye `DECIMAL` prefer karo.

## **Module 4 Progress Tracker**

**Module 4**\
**7/7**

Theory & Syntax – 6 topics

Workbook – 17 exercises

Independent Labs – 8 challenges

Sales Analytics Mini Project

Recap Quiz – 8 MCQs

Debugging – 4 challenges

Best Practices

Apni progress track karo. Completion main tumhare actual SQL submissions review karne ke baad confirm karunga.

**Aaj ka target:** Theory ke saare 3 lessons samjho aur Workbook ke exercises 1–6 solve karo. Phir apna SQL code bhejna. Hum line-by-line review karenge.

Aur yaad rakho: ab tum sirf SQL queries nahi likh rahe — tum database se business insights nikalna seekh rahe ho! 🚀
