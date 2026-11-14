CREATE DATABASE mehtab;
SHOW DATABASES;
DROP DATABASE mehtab;


CREATE DATABASE school_db;
SHOW DATABASES;
USE school_db;

-- CREATE TABLE
CREATE TABLE students(
    id INT,
    name VARCHAR(100),
    course VARCHAR(50),
    father_Name VARCHAR(100),
    age INT(2),
    fees DECIMAL(10,2)

);

SHOW TABLES;

DESC students;

-- DELETE TABLE COLUMN
ALTER TABLE students
DROP COLUMN email;

-- ADD TABLE COLUMN
ALTER TABLE students
ADD COLUMN email VARCHAR(255)
AFTER name;  -- Position After 


ALTER TABLE students
DROP COLUMN father_Name;

ALTER TABLE students
ADD COLUMN father_name VARCHAR(100);


-- MODIFY OR UPDATE TABLE 
ALTER TABLE students
MODIFY COLUMN name VARCHAR(50);

-- RENAME COLUMN NAME AND DATA TYPE
ALTER TABLE students
CHANGE COLUMN name full_name VARCHAR(50);


-- RENAME ONLY COLUMN NAME
ALTER TABLE students
RENAME COLUMN full_name TO name;

DESC students;

-- ADD COLUMNS BY POSITION
ALTER TABLE students
ADD COLUMN qualification VARCHAR(100);   --Position Last by Default


ALTER TABLE students
DROP COLUMN id;


ALTER TABLE students
ADD COLUMN id INT
FIRST;  -- Position first at the beginning



-- TABLES COMMANDS
-- SHOW TABLES;
SHOW TABLES;
SHOW FULL TABLES;
SHOW TABLES FROM collage_db;

SHOW TABLES IN collage_db;
SHOW TABLES FROM collage_db LIKE 'stud%';


SELECT * FROM students;

-- INSERT/CREATE DATA INTO TABLE 
INSERT INTO school_db.students(id, name,email, course,age ,fees, qualification) 
VALUES(1, 'Mehtab', 'mehtab@example.com', 'B.Tech', 21, 50000.00, 'Bachelor of Technology');

-- RETRIEVE DATA FROM TABLE
SELECT * FROM students;











