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
(104, 'Priya Singh', 66, 'C', 'Kolkata'),
(105, 'Ankit Verma', 59, 'D', 'Bangalore'),
(106, 'Riya Mukherjee', 74, 'B', 'Hyderabad');

SELECT * FROM student1;

/*Selecting specific columns*/
SELECT name,marks FROM student1;

/*Selecting unique cities*/
SELECT DISTINCT city FROM student1;

/*Selecting on the based of marks*/
SELECT * FROM student1 WHERE marks>=80 AND city='Delhi';

/*Getting best top 2 student by grade - used order by clause*/
SELECT name,grade FROM student1
ORDER BY grade ASC LIMIT 2;

/*Using functions*/
SELECT COUNT(name) FROM student1;
SELECT MAX(marks)  FROM student1;
SELECT AVG(marks)  FROM student1;
SELECT SUM(marks)  FROM student1;

/*Counting students according to the cities - using group by clause*/
SELECT city , count(rollno)
FROM student1
GROUP BY city;

USE temp1;
/*Using check constraint*/
CREATE TABLE temp1(
id INT,
name varchar(50),
age INT,
city varchar(20),
primary key(id , name),
constraint age_check check (age>18)
);

CREATE TABLE emp(
id INT ,
salary INT default 20
);

insert into emp 
(id) 
values 
(101);

SELECT * from temp1;
select * from emp;


