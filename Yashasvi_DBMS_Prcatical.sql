CREATE DATABASE ChandigarhUni;

USE ChandigarhUni;

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    department VARCHAR(50) NOT NULL,
    salary INT DEFAULT 30000 CHECK (salary > 0)
);
INSERT INTO Employee VALUES
(1, 'Aman', 'aman@gmail.com', 25, 'IT', 40000),
(2, 'Riya', 'riya@gmail.com', 28, 'HR', 35000),
(3, 'Rahul', 'rahul@gmail.com', 30, 'IT', 45000),
(4, 'Neha', 'neha@gmail.com', 26, 'Finance', 50000),
(5, 'Karan', 'karan@gmail.com', 32, 'HR', 38000);

SELECT * FROM Employee;

SELECT * FROM Employee
WHERE salary > 40000;

UPDATE Employee
SET salary = salary + 5000
WHERE department = 'IT';

DELETE FROM Employee
WHERE employee_id = 5;

ALTER TABLE Employee
ADD phone VARCHAR(15);

TRUNCATE TABLE Employee;

SELECT * FROM Employee;

