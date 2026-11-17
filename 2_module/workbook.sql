USE student_management_db;
SHOW TABLES;
 
CREATE TABLE students (
    student_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50), 
    email VARCHAR(255) NOT NULL,
    age INT NOT NULL CHECK (age>= 18),
    date_of_birth DATE NOT NULL,
    enrollment_date DATE DEFAULT (CURRENT_DATE),
    city VARCHAR(100) NOT NULL DEFAULT 'Delhi',
    skills JSON NOT NULL DEFAULT ('["JS"]'),
    PRIMARY KEY(student_id) ,
    UNIQUE( email)
);
DESC students;

INSERT INTO students (first_name, last_name, email, age, date_of_birth, enrollment_date, city, skills)
 VALUES
('Aarav', 'Sharma', 'aarav.sharma@example.com', 20, '2006-03-12', '2026-01-10', 'Delhi', '["React", "Node.js", "MySQL", "Python", "HTML"]'),
('Vivaan', 'Verma', 'vivaan.verma@example.com', 22, '2004-07-19', '2026-01-12', 'Mumbai', '["Node.js", "Python"]'),
('Aditya', 'Gupta', 'aditya.gupta@example.com', 19, '2007-11-05', '2026-01-15', 'Delhi', '["MySQL"]'),
('Vihaan', 'Malhotra', 'vihaan.malhotra@example.com', 23, '2003-02-28', '2026-01-18', 'Bangalore', '[]'),
('Arjun', 'Mehta', 'arjun.mehta@example.com', 21, '2005-09-14', '2026-01-20', 'Pune', '["React", "CSS", "JS"]'),
('Sai', 'Reddy', 'sai.reddy@example.com', 24, '2002-06-22', '2026-01-22', 'Hyderabad', '["Node.js", "EXPRESS"]'),
('Reyansh', 'Iyer', 'reyansh.iyer@example.com', 18, '2008-01-09', '2026-01-25', 'Chennai', '["MySQL", "HTML", "CSS", "JS"]'),
('Ayaan', 'Bose', 'ayaan.bose@example.com', 20, '2006-08-30', '2026-01-28', 'Kolkata', '["Python"]'),
('Krishna', 'Joshi', 'krishna.joshi@example.com', 22, '2004-12-03', '2026-02-01', 'Delhi', '[]'),
('Ishaan', 'Nair', 'ishaan.nair@example.com', 21, '2005-04-17', '2026-02-03', 'Bangalore', '["Node.js", "React", "Python"]'),
('Dhruv', 'Patel', 'dhruv.patel@example.com', 25, '2001-10-11', '2026-02-05', 'Ahmedabad', '["MySQL", "CSS"]'),
('Kabir', 'Chopra', 'kabir.chopra@example.com', 19, '2007-05-25', '2026-02-08', 'Mumbai', '["Python", "JS"]'),
('Ritvik', 'Saxena', 'ritvik.saxena@example.com', 23, '2003-09-08', '2026-02-10', 'Delhi', '["React", "Node.js", "MySQL", "Python", "EXPRESS"]'),
('Ananya', 'Singh', 'ananya.singh@example.com', 20, '2006-02-14', '2026-02-12', 'Pune', '["Node.js"]'),
('Diya', 'Sharma', 'diya.sharma@example.com', 21, '2005-07-19', '2026-02-15', 'Delhi', '[]'),
('Aadhya', 'Verma', 'aadhya.verma@example.com', 18, '2008-11-20', '2026-02-18', 'Bangalore', '["Python", "HTML"]'),
('Saanvi', 'Gupta', 'saanvi.gupta@example.com', 22, '2004-03-30', '2026-02-20', 'Mumbai', '["React", "CSS", "JS", "NODE"]'),
('Pari', 'Reddy', 'pari.reddy@example.com', 23, '2003-08-12', '2026-02-22', 'Hyderabad', '["Node.js"]'),
('Riya', 'Malhotra', 'riya.malhotra@example.com', 19, '2007-01-05', '2026-02-25', 'Chennai', '["MySQL"]'),
('Meera', 'Iyer', 'meera.iyer@example.com', 20, '2006-06-16', '2026-02-28', 'Kolkata', '[]'),
('Kavya', 'Bose', 'kavya.bose@example.com', 24, '2002-10-29', '2026-03-01', 'Delhi', '["React", "Python"]'),
('Navya', 'Joshi', 'navya.joshi@example.com', 21, '2005-12-04', '2026-03-03', 'Bangalore', '["Node.js", "HTML", "CSS"]'),
('Shanaya', 'Nair', 'shanaya.nair@example.com', 22, '2004-05-18', '2026-03-05', 'Ahmedabad', '["MySQL", "JS", "NODE", "EXPRESS"]'),
('Avani', 'Patel', 'avani.patel@example.com', 19, '2007-09-21', '2026-03-08', 'Mumbai', '["Python"]'),
('Rohan', 'Chopra', 'rohan.chopra@example.com', 25, '2001-04-11', '2026-03-10', 'Delhi', '[]'),
('Kunal', 'Saxena', 'kunal.saxena@example.com', 20, '2006-11-02', '2026-03-12', 'Pune', '["Node.js", "React"]'),
('Amit', 'Singh', 'amit.singh@example.com', 23, '2003-01-25', '2026-03-15', 'Delhi', '["MySQL", "Python", "CSS"]'),
('Sumit', 'Sharma', 'sumit.sharma@example.com', 21, '2005-08-07', '2026-03-18', 'Bangalore', '["Python"]'),
('Rahul', 'Verma', 'rahul.verma@example.com', 22, '2004-02-19', '2026-03-20', 'Mumbai', '["React", "HTML"]'),
('Siddharth', 'Gupta', 'siddharth.gupta@example.com', 24, '2002-07-14', '2026-03-22', 'Hyderabad', '["Node.js", "MySQL", "Python", "JS", "CSS"]'),
('Karan', 'Reddy', 'karan.reddy@example.com', 19, '2007-10-31', '2026-03-25', 'Chennai', '["MySQL"]'),
('Varun', 'Malhotra', 'varun.malhotra@example.com', 20, '2006-05-03', '2026-03-28', 'Kolkata', '[]'),
('Tanuja', 'Iyer', 'tanuja.iyer@example.com', 21, '2005-03-15', '2026-03-30', 'Delhi', '["React", "Node.js"]'),
('Pooja', 'Bose', 'pooja.bose@example.com', 22, '2004-09-20', '2026-04-02', 'Bangalore', '["Node.js", "EXPRESS", "JS"]'),
('Neha', 'Joshi', 'neha.joshi@example.com', 23, '2003-11-12', '2026-04-05', 'Ahmedabad', '["MySQL"]'),
('Priya', 'Nair', 'priya.nair@example.com', 18, '2008-04-22', '2026-04-08', 'Mumbai', '["Python"]'),
('Divya', 'Patel', 'divya.patel@example.com', 20, '2006-12-01', '2026-04-10', 'Delhi', '[]'),
('Komal', 'Chopra', 'komal.chopra@example.com', 25, '2001-06-18', '2026-04-12', 'Pune', '["Node.js", "React"]'),
('Sneha', 'Saxena', 'sneha.saxena@example.com', 21, '2005-02-09', '2026-04-15', 'Delhi', '["MySQL", "Python", "HTML"]'),
('Tanvi', 'Singh', 'tanvi.singh@example.com', 19, '2007-08-27', '2026-04-18', 'Bangalore', '["Python"]'),
('Akash', 'Sharma', 'akash.sharma@example.com', 22, '2004-01-14', '2026-04-20', 'Mumbai', '["React", "CSS"]'),
('Vikas', 'Verma', 'vikas.verma@example.com', 24, '2002-05-19', '2026-04-22', 'Hyderabad', '["Node.js", "JS", "EXPRESS"]'),
('Alok', 'Gupta', 'alok.gupta@example.com', 20, '2006-09-25', '2026-04-25', 'Chennai', '["MySQL"]'),
('Manoj', 'Reddy', 'manoj.reddy@example.com', 23, '2003-03-04', '2026-04-28', 'Kolkata', '[]'),
('Sandeep', 'Malhotra', 'sandeep.malhotra@example.com', 21, '2005-10-10', '2026-04-30', 'Delhi', '["React", "Node.js", "Python", "MySQL", "JS"]'),
('Deepak', 'Iyer', 'deepak.iyer@example.com', 18, '2008-02-18', '2026-05-03', 'Bangalore', '["Node.js"]'),
('Pankaj', 'Bose', 'pankaj.bose@example.com', 22, '2004-06-21', '2026-05-05', 'Ahmedabad', '["MySQL", "HTML"]'),
('Manish', 'Joshi', 'manish.joshi@example.com', 20, '2006-10-08', '2026-05-08', 'Mumbai', '["Python", "CSS"]'),
('Nitin', 'Nair', 'nitin.nair@example.com', 25, '2001-12-15', '2026-05-10', 'Delhi', '["React"]'),
('Sachin', 'Patel', 'sachin.patel@example.com', 19, '2007-07-02', '2026-05-12', 'Pune', '[]'),
('Ajay', 'Chopra', 'ajay.chopra@example.com', 23, '2003-04-11', '2026-05-15', 'Delhi', '["MySQL", "Node.js"]'),
('Vijay', 'Saxena', 'vijay.saxena@example.com', 21, '2005-09-03', '2026-05-18', 'Bangalore', '["Python", "JS", "EXPRESS"]'),
('Sanjay', 'Singh', 'sanjay.singh@example.com', 24, '2002-01-29', '2026-05-20', 'Mumbai', '["React"]'),
('Rajesh', 'Sharma', 'rajesh.sharma@example.com', 20, '2006-04-17', '2026-05-22', 'Hyderabad', '["Node.js"]'),
('Mukesh', 'Verma', 'mukesh.verma@example.com', 22, '2004-08-24', '2026-05-25', 'Chennai', '["MySQL", "Python"]'),
('Ramesh', 'Gupta', 'ramesh.gupta@example.com', 19, '2007-12-09', '2026-05-28', 'Kolkata', '[]'),
('Suresh', 'Reddy', 'suresh.reddy@example.com', 21, '2005-05-12', '2026-05-30', 'Delhi', '["React", "Node.js", "MySQL"]'),
('Dinesh', 'Malhotra', 'dinesh.malhotra@example.com', 23, '2003-10-01', '2026-06-02', 'Bangalore', '["Node.js"]'),
('Mahesh', 'Iyer', 'mahesh.iyer@example.com', 25, '2001-02-14', '2026-06-05', 'Ahmedabad', '["MySQL", "HTML", "CSS"]'),
('Naresh', 'Bose', 'naresh.bose@example.com', 20, '2006-07-22', '2026-06-08', 'Mumbai', '["Python"]'),
('Ganesh', 'Joshi', 'ganesh.joshi@example.com', 18, '2008-06-11', '2026-06-10', 'Delhi', '[]'),
('Rakesh', 'Nair', 'rakesh.nair@example.com', 22, '2004-03-16', '2026-06-12', 'Pune', '["Node.js", "React"]'),
('Satish', 'Patel', 'satish.patel@example.com', 21, '2005-11-25', '2026-06-15', 'Delhi', '["MySQL", "Python", "JS"]'),
('Umesh', 'Chopra', 'umesh.chopra@example.com', 24, '2002-04-05', '2026-06-18', 'Bangalore', '["Python"]'),
('Yogesh', 'Saxena', 'yogesh.saxena@example.com', 19, '2007-09-14', '2026-06-20', 'Mumbai', '["React", "CSS"]'),
('Hitesh', 'Singh', 'hitesh.singh@example.com', 23, '2003-07-28', '2026-06-22', 'Hyderabad', '["Node.js", "EXPRESS", "HTML"]'),
('Jitesh', 'Sharma', 'jitesh.sharma@example.com', 20, '2006-01-31', '2026-06-25', 'Chennai', '["MySQL"]'),
('Nitesh', 'Verma', 'nitesh.verma@example.com', 22, '2004-10-19', '2026-06-28', 'Kolkata', '[]'),
('Bhavesh', 'Gupta', 'bhavesh.gupta@example.com', 21, '2005-06-03', '2026-06-30', 'Delhi', '["React", "Node.js", "Python", "MySQL", "JS"]'),
('Kamlesh', 'Reddy', 'kamlesh.reddy@example.com', 25, '2001-08-20', '2026-07-02', 'Bangalore', '["Node.js"]'),
('Jignesh', 'Malhotra', 'jignesh.malhotra@example.com', 19, '2007-02-12', '2026-07-05', 'Ahmedabad', '["MySQL", "CSS"]'),
('Paresh', 'Iyer', 'paresh.iyer@example.com', 23, '2003-05-15', '2026-07-08', 'Mumbai', '["Python", "JS"]'),
('Hasmukh', 'Bose', 'hasmukh.bose@example.com', 20, '2006-08-04', '2026-07-10', 'Delhi', '[]'),
('Hemant', 'Joshi', 'hemant.joshi@example.com', 22, '2004-12-25', '2026-07-12', 'Pune', '["Node.js", "React"]'),
('Pratik', 'Nair', 'pratik.nair@example.com', 21, '2005-03-29', '2026-07-15', 'Delhi', '["MySQL", "Python", "EXPRESS"]'),
('Kiran', 'Patel', 'kiran.patel@example.com', 18, '2008-07-14', '2026-07-18', 'Bangalore', '["Python"]'),
('Prakash', 'Chopra', 'prakash.chopra@example.com', 24, '2002-09-07', '2026-07-20', 'Mumbai', '["React"]'),
('Subhash', 'Saxena', 'subhash.saxena@example.com', 19, '2007-04-19', '2026-07-22', 'Hyderabad', '[]'),
('Kailash', 'Singh', 'kailash.singh@example.com', 23, '2003-11-30', '2026-07-25', 'Chennai', '["MySQL", "Node.js"]'),
('Avinash', 'Sharma', 'avinash.sharma@example.com', 20, '2006-05-11', '2026-07-28', 'Kolkata', '["Python", "JS", "HTML"]'),
('Rajnish', 'Verma', 'rajnish.verma@example.com', 22, '2004-01-22', '2026-07-30', 'Delhi', '["React"]'),
('Alok', 'Gupta', 'alok.gupta2@example.com', 21, '2005-08-16', '2026-08-02', 'Bangalore', '["Node.js"]'),
('Santosh', 'Reddy', 'santosh.reddy@example.com', 25, '2001-10-04', '2026-08-05', 'Ahmedabad', '["MySQL", "Python"]'),
('Santosh', 'Malhotra', 'santosh.malhotra2@example.com', 19, '2007-03-27', '2026-08-08', 'Mumbai', '[]'),
('Anil', 'Iyer', 'anil.iyer@example.com', 23, '2003-06-18', '2026-08-10', 'Delhi', '["React", "Node.js", "MySQL"]'),
('Sunil', 'Bose', 'sunil.bose@example.com', 20, '2006-09-12', '2026-08-12', 'Pune', '["Node.js"]'),
('Anil', 'Joshi', 'anil.joshi2@example.com', 22, '2004-04-09', '2026-08-15', 'Delhi', '["MySQL", "CSS"]'),
('Sunil', 'Nair', 'sunil.nair2@example.com', 21, '2005-12-21', '2026-08-18', 'Bangalore', '["Python", "JS"]'),
('Manoj', 'Patel', 'manoj.patel2@example.com', 24, '2002-07-03', '2026-08-20', 'Mumbai', '["React"]'),
('Vinod', 'Chopra', 'vinod.chopra@example.com', 18, '2008-05-15', '2026-08-22', 'Hyderabad', '[]'),
('Pramod', 'Saxena', 'pramod.saxena@example.com', 23, '2003-02-14', '2026-08-25', 'Chennai', '["MySQL", "Node.js", "Python"]'),
('Pramod', 'Singh', 'pramod.singh2@example.com', 20, '2006-11-20', '2026-08-28', 'Kolkata', '["Python"]'),
('Ashok', 'Sharma', 'ashok.sharma@example.com', 22, '2004-09-05', '2026-08-30', 'Delhi', '["React", "CSS"]'),
('Ashok', 'Verma', 'ashok.verma2@example.com', 21, '2005-01-18', '2026-09-01', 'Bangalore', '["Node.js"]'),
('Arun', 'Gupta', 'arun.gupta@example.com', 25, '2001-05-23', '2026-09-04', 'Ahmedabad', '["MySQL"]'),
('Tarun', 'Reddy', 'tarun.reddy@example.com', 19, '2007-10-12', '2026-09-07', 'Mumbai', '[]'),
('Varun', 'Malhotra', 'varun.malhotra2@example.com', 23, '2003-08-01', '2026-09-10', 'Delhi', '["React", "Node.js", "Python", "MySQL", "EXPRESS"]'),
('Bharat', 'Iyer', 'bharat.iyer@example.com', 20, '2006-03-24', '2026-09-12', 'Pune', '["Node.js"]'),
('Bharat', 'Bose', 'bharat.bose2@example.com', 22, '2004-06-15', '2026-09-15', 'Delhi', '["MySQL", "HTML"]');

SELECT * FROM students ;
SELECT COUNT(*) from students;
SELECT COUNT(first_name) from students;

SELECT COUNT(student_id) as 'Student Count' from students ;

INSERT INTO students (first_name, email, age, date_of_birth) 
VALUES ('Mehtab', 'mehtab@gmail.com', 24, '2001-05-09');

COMMIT;
SELECT first_name AS 'Name', city AS 'City' from students
WHERE city = 'Delhi' LIMIT 100;

SELECT COUNT(first_name) AS 'Name', city AS 'City' from students
WHERE city = 'Delhi';
 
ALTER TABLE students 
ADD COLUMN course VARCHAR(50) NOT NULL;

DESCRIBE students;

ALTER Table students
DROP COLUMN course;

DESCRIBE students;
/
ALTER TABLE students 
ADD COLUMN course VARCHAR(50) NOT NULL
AFTER email;

DESCRIBE students;


SELECT * FROM students ;
COMMIT;

SELECT * from students
 WHERE course = 'Data Science';

SELECT COUNT(course) from students 
WHERE course = 'Data Science';



SELECT first_name AS 'Name', age AS 'Age' from students
WHERE age = 22 ;


ALTER TABLE students 
ADD COLUMN fees DOUBLE(7,2) NOT NULL;

ALTER Table students
DROP COLUMN fees;


ALTER TABLE students 
ADD COLUMN fees DOUBLE(7,2) NOT NULL
AFTER course;
DESC students;

ALTER TABLE students
MODIFY COLUMN fees DECIMAL(7, 2) NOT NULL DEFAULT 0.00 CHECK (fees >= 0);


SELECT * FROM students ; 

-- COMPARISON OPERATOR
SELECT * FROM students
WHERE age > 22;


SELECT * FROM students
WHERE fees > 40000
ORDER BY fees DESC;


SELECT * FROM students
WHERE age <= 22
ORDER BY age ;

SELECT *  FROM students
WHERE fees != 35000;

SELECT * FROM students
WHERE NOT fees = 50000;

-- AND OR
SELECT * FROM students
WHERE city = "Delhi"  AND age = 24;

SELECT first_name AS 'Name' , city AS 'City' FROM students
WHERE city = 'Delhi' OR city = 'Mumbai';


SELECT * FROM students
WHERE age > 20 AND fees > 35000;

SELECT * FROM students
WHERE course = "MERN Stack" OR course = "Python Backend";

SELECT * FROM students
WHERE course IN ("Mern Stack", "Python Backend","Data Science")
LIMIT 10 OFFSET 10;

SELECT * FROM students
WHERE last_name IS NULL;


SELECT COUNT(*) FROM students
WHERE city IN("Delhi", "Noida", "Mumbai");

SELECT * FROM students
WHERE age BETWEEN 20 AND 25 ;

SELECT * FROM students
WHERE fees BETWEEN 30000 AND 55000;

SELECT * FROM students
WHERE city NOT IN ("Delhi", "Mumbai");


SELECT * FROM students
WHERE first_name Like 'M%';

SELECT 
first_name AS 'Name'
FROM students
WHERE first_name LIKE '%A';




SELECT * FROM students
WHERE last_name LIKE "%Sharma%";

SELECT * FROM students
WHERE first_name LIKE "%ha%";


SELECT * FROM students
ORDER BY age;


SELECT * FROM students
ORDER BY fees DESC;

SELECT * FROM students
ORDER BY fees DESC LIMIT 3;

SELECT * FROM students
ORDER BY age LIMIT 5;

SELECT * FROM students
LIMIT 5 OFFSET 5;

-- Step 7 – Guided Mini Workbook Project
-- Project: Student Search & Ranking System

-- Requirements:
-- - Delhi ke students retrieve karo.
SELECT first_name AS 'Name', city AS 'City' FROM students
-- WHERE city = 'Delhi'
WHERE city IN('Delhi')
;



-- - Age 20–25 ke students find karo.
SELECT * from students
WHERE age BETWEEN 20 AND 25;

-- - Fees 40000 se zyada wale students retrieve karo.
SELECT * FROM students
WHERE fees > 40000;


-- - Top 3 highest-fee students find karo.
SELECT * FROM students
ORDER BY fees DESC LIMIT 3; 

-- - MERN Stack aur Data Science find karo.
SELECT * FROM students
WHERE course IN('Mern stack', 'Data science');
-- - Names containing a find karo.
SELECT * FROM students
WHERE first_name LIKE '%a%';

SELECT COUNT(*) FROM students
WHERE first_name LIKE '%a%';



SELECT * FROM students
FETCH FIRST 3 ROWS ONLY;













