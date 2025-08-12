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
(104, 'Priya Singh', 66, 'C', 'Chennai'),
(105, 'Ankit Verma', 59, 'D', 'Bangalore'),
(106, 'Riya Mukherjee', 74, 'B', 'Hyderabad');

SELECT * FROM student1;

/*Selecting specific columns*/
SELECT name,marks FROM student1;