CREATE DATABASE company_db;
SHOW DATABASES;
USE company_db;

CREATE TABLE employees (
    id INT,
    name VARCHAR(100),
    age INT,
    department VARCHAR(50),
    salary DECIMAL(10,2)
);
DESC employees;

INSERT INTO employees
VALUES
(1, "Rahul", 24, "IT", 35000),
(2, "Aman", 25, "HR", 30000),
(3, "Priya", 23, "IT", 40000),
(4, "Neha", 26, "SALES", 32000),
(5, "Karan", 27, "FINANE", 45000);

SELECT * FROM employees;
SELECT name from employees;
SELECT name, salary from employees;
DESCRIBE employees;


CREATE DATABASE collage_db;
SHOW DATABASES;
USE collage_db;
CREATE TABLE students (id INT, name VARCHAR(100), age INT, course VARCHAR(50), fees DECIMAL(5,2));

ALTER TABLE students MODIFY COLUMN fees DECIMAL(10,2);

TRUNCATE TABLE students;

INSERT INTO students
VALUES
(1, "Neha", 23, "Basic Computer", 15500),
(2, "Rahul", 26, "MERN Stack", 32000),
(3, "Ajay", 19, "Digital Marketing", 45600),
(4, "Soniya", 22, "NodeJS", 9000),
(5, "Mehtab", 18, "Java", 2000);


SELECT * FROM students;
SELECT name , course FROM students;

CREATE TABLE registrationStudents(
    id INt, name VARCHAR(100), email VARCHAR(255),
    age INT
);

DESCRIBE registrationStudents;

INSERT INTO registrationStudents
VALUES
(1, "Mehtab", "mehtab123@gmail.com", 24),
(1, "Neha", "neha123@gmail.com", 24),
(1, "Ajay", "ajay123@gmail.com", 24),
(1, "Pooja", "pooja123@gmail.com", 24),
(1, "Rahul", "rahul123@gmail.com", 24);

SELECT * from registrationStudents;

UPDATE registrationStudents
SET age = 25
WHERE name = "Neha";
SELECT * from registrationStudents;
UPDATE registrationStudents
SET id = 2
WHERE name = "Neha";


update registrationStudents
SET id =3,
    age=19
WHERE name = "Ajay";
SELECT * FROM registrationStudents WHERE name = "Ajay";
update registrationStudents
SET id =4,
    age=26
WHERE name = "Pooja";


update registrationStudents
SET id =5,
    age=30
WHERE name = "Rahul";

SELECT * from registrationStudents;




CREATE DATABASE hospitalManagement;
SHOW DATABASES;
Drop DATABASE IF EXISTS hospitalManagement;


-- Project: Student Management Database
CREATE DATABASE student_management_db;
USE student_management_db;
CREATE TABLE students(
    id INT,
    full_Name VARCHAR(100),
    age INT,
    email VARCHAR(255),
    course VARCHAR(50),
    city VARCHAR(50),
    fees DECIMAL(10,2)
);

DESC students;



INSERT INTO students (
    id,
    full_name,
    age,
    email,
    course,
    city,
    fees
)
VALUES
(1, 'Mehtab Ansari', 24, 'mehtab123@gmail.com', 'Full Stack Development', 'Delhi', 54000),

(2, 'Mehtab Ansari', 24, 'pooja123@gmail.com', 'Full Stack Development', 'Delhi', 54000),

(3, 'Neha Sharma', 20, 'neha@gmail.com', 'Web Designing', 'Haryana', 32000),

(4, 'Saziya', 22, 'saziya@gmail.com', 'Digital Marketing', 'UP', 54000),

(5, 'Rahul Kumar', 25, 'rahul@gmail', 'Frontend Development', 'Delhi', 45000),

(6, 'Aman Verma', 23, NULL, 'Backend Development', 'Noida',  NULL),

(7, 'Priya Singh', 21, 'priya@gmail.com', '', 'Lucknow', 35000),

(8, 'Karan Malhotra', 26, 'karan123@gmail.com', 'Full Stack Development', '', 60000),

(9, 'Rohit Sharma', NULL, 'rohit@gmail.com', 'Web Designing', 'Mumbai', 40000),

(10, 'Mehtab Ansari', 24, 'mehtab123@gmail.com', 'Full Stack Development', 'Delhi', 54000);



SELECT * from students;


UPDATE students
SET full_Name = "Pooja",
    fees = 45800
WHERE id = 2;

SELECT * FROM students WHERE id =2; 
UPDATE students
 SET email  = "aman342@gmail.com",
     fees = 22500
WHERE full_Name = "Aman Verma";



UPDATE students
 SET 
    course  = CASE 
        WHEN id = 7  THEN  "Frontend Development"
        ELSE  course
    END,
    city = CASE 
        WHEN id = 8 THEN "Noida"
        ELSE city
    END,
    age = CASE 
        WHEN id= 9 THEN 22  
        ELSE  age
    END
WHERE id IN (7,8,9);

SELECT * from students;
SELECT full_Name as name , email from students;


UPDATE students
SET
    full_Name = "Aakib Khan",
    email = "aakib123@gmail.com",
    age = 28,
    course="Android Development",
    fees=62000
WHERE id = 10;
SELECT * from students WHERE id = 10 ;

DESC students;



-- DEB 1
CREATE DATABASE school_db

USE school_db;

CREATE TABLE students (
    id INT,
    name VARCHAR(100),
    age INT
);


-- DEB 2
INSERT INTO students (id, name, age)
VALUES
(1, Rahul, 22),
(2, Aman, 24);

SELECT name , age FROM students;
done I know mene where update and delete jese methods use kr liye hai pr tum module jese tha wese hi rkhna
