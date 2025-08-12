CREATE DATABASE IF NOT EXISTS XYZ;
USE XYZ;

CREATE TABLE IF NOT EXISTS Employee(
id INT PRIMARY KEY,
name VARCHAR(50),
salary LONG NOT NULL
);

INSERT INTO Employee
(id , name , salary)
VALUES
(1 , "Adam" , 25000),
(2 , "Bob" , 80000),
(3 , "Casey" , 98000);

SELECT * FROM Employee;

