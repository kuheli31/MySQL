/*Checking if this below database doesn't created previously then only allowed to create this new one*/
CREATE DATABASE IF NOT EXISTS college;
/*Creating Database*/
create database temp1;
/*Deleting Database*/
DROP DATABASE temp1;
/*Checking if the database exists then only delete*/
DROP DATABASE IF EXISTS company;
/*Creating Database*/
CREATE DATABASE college;
/*Using this college Database currently*/
USE college;

/*Creating the student table for college database*/
CREATE TABLE student(
	/*1st column = id*/
    id INT PRIMARY KEY,
    /*2nd column = name*/
    name VARCHAR(50),
    /*3rd column = age*/
    age INT NOT NULL
);

/*Inserting Datas to Student table in college Database using two ways.*/
/*1st way*/
INSERT INTO student VALUES(1 , "KUHELI" , 21);
INSERT INTO student VALUES(2 , "KOYEL" , 15);
/*2nd way*/
INSERT INTO student
(id , name , age)
VALUES
(3 , "DURJOY" , 10),
(4 , "VAIB" , 24),
(5 , "SANDY" , 56);

/*Displaying the Student Table*/
SELECT *FROM student;

CREATE TABLE course(
	/*1st column = id*/
    id INT PRIMARY KEY,
    /*2nd column = name*/
    course VARCHAR(50)
);

INSERT INTO course (id, course)
VALUES
(1, 'Mathematics'),
(2, 'Physics'),
(3, 'Computer Science');

SELECT *FROM course;
DROP TABLE course;

/*INNER JOIN*/
SELECT * FROM 
student 
INNER JOIN course
WHERE student.id = course.id;

/*ALIAS INNER JOIN*/
SELECT * FROM 
student as s1
INNER JOIN course c1
ON s1.id = c1.id;

/*LEFT JOIN*/
SELECT * FROM 
student as s1
LEFT JOIN course c1
ON s1.id = c1.id;

/*RIGHT JOIN*/
SELECT * FROM 
student as s1
RIGHT JOIN course c1
ON s1.id = c1.id;

/*FULL JOIN*/
SELECT * FROM 
student as s1
LEFT JOIN course c1
ON s1.id = c1.id
UNION
SELECT * FROM 
student as s1
RIGHT JOIN course c1
ON s1.id = c1.id;

/*Displaying all the databases*/
SHOW DATABASES;

/*Displaying the current Tables*/
SHOW TABLES;

/*Deleting student Table*/
DROP TABLE student;

CREATE TABLE student1(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student1
(rollno , name , marks , grade , city)
VALUES
(101, 'Amit Sharma', 85, 'A', 'Kolkata'),
(102, 'Sneha Roy', 78, 'B', 'Mumbai'),
(103, 'Rahul Das', 92, 'A', 'Delhi'),
(104, 'Priya Singh', 66, 'C', 'Chennai'),
(105, 'Ankit Verma', 59, 'D', 'Bangalore'),
(106, 'Riya Mukherjee', 74, 'B', 'Hyderabad');

DROP TABLE student1;

SELECT * FROM student1;

ALTER TABLE student1
RENAME COLUMN name TO full_name;

DELETE FROM student1
WHERE marks<80;

ALTER TABLE student1
DROP COLUMN grades;

/*Selecting specific columns*/
SELECT name,marks FROM student1;

-- Update grades
UPDATE student1
SET grade = 'O'
WHERE grade = 'A';

-- View updated results
SELECT rollno, name, grade
FROM student1;
 
SET SQL_SAFE_UPDATES = 0;

CREATE TABLE dept(
id INT primary key,
name varchar(50)
);

SELECT * FROM dept;

CREATE TABLE teacher(
id INT primary key,
name varchar(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

select * from teacher;

/*SELF JOIN*/
CREATE TABLE employee(
id INT primary key,
name varchar(50),
mid int
);

INSERT INTO employee (id, name, mid)
VALUES
(101, 'Alice Johnson', NULL),     -- No manager
(205, 'Bob Smith', 101),          -- Reports to Alice
(317, 'Charlie Davis', 101),      -- Reports to Alice
(412, 'Diana Roberts', 205),      -- Reports to Bob
(523, 'Ethan Brown', 205),        -- Reports to Bob
(634, 'Fiona Clark', 317),        -- Reports to Charlie
(748, 'George Harris', 317),      -- Reports to Charlie
(859, 'Hannah Lewis', 412),       -- Reports to Diana
(964, 'Ian Walker', 523),         -- Reports to Ethan
(1075, 'Julia Turner', 523);      -- Reports to Ethan

SELECT * 
FROM employee as e
JOIN employee as m
ON e.id = m.mid;

/*SELF JOIN*/
SELECT e.id AS emp_id,
       e.name AS emp_name,
       m.id AS mgr_id,
       m.name AS mgr_name
FROM employee AS e
JOIN employee AS m
    ON e.mid = m.id;
