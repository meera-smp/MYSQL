DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;
SHOW DATABASES;
USE employee;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);
SHOW TABLES;
CREATE TABLE Location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location_name VARCHAR(100) NOT NULL UNIQUE
);
SHOW TABLES;
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    gender CHAR(1) NOT NULL CHECK (gender IN ('M', 'F')),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);
SHOW TABLES;
DESCRIBE Departments;
DESCRIBE Location;
DESCRIBE Employees;
ALTER TABLE Employees
ADD COLUMN email VARCHAR(150);
DESCRIBE Employees;
ALTER TABLE Employees
MODIFY COLUMN designation VARCHAR(200);
DESCRIBE Employees;
ALTER TABLE Employees
DROP COLUMN age;
DESCRIBE Employees;
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;
DESCRIBE Employees;
RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
SHOW TABLES;
TRUNCATE TABLE Employees;SELECT * FROM Employees;
DROP TABLE Employees;
SHOW TABLES;
DROP DATABASE employee;
SHOW DATABASES;
DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE Location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    gender CHAR(1) NOT NULL CHECK (gender IN ('M', 'F')),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(200),
    department_id INT,
    location_id INT,

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);
INSERT INTO Departments
VALUES (1, 'IT');
INSERT INTO Departments
VALUES (2, 'HR');
INSERT INTO Departments
VALUES (3, 'IT');
INSERT INTO Departments
VALUES (3, NULL);INSERT INTO Location (location_name)
VALUES ('Hyderabad');
INSERT INTO Location (location_name)
VALUES ('Bangalore');
SELECT * FROM Location;
INSERT INTO Employees
(employee_id, employee_name, gender, age, designation, department_id, location_id)
VALUES
(101, 'Meera', 'F', 25, 'Data Analyst', 1, 1);
INSERT INTO Employees
(employee_id, employee_name, gender, age, designation, department_id, location_id)
VALUES
(102, 'Test User', 'F', 25, 'Analyst', 1, 1);
INSERT INTO Employees
(employee_id, employee_name, gender, age, designation, department_id, location_id)
VALUES
(103, 'Test User', 'F', 17, 'Analyst', 1, 1);
INSERT INTO Employees
(employee_id, employee_name, gender, age, designation, department_id, location_id)
VALUES
(104, 'Default Date User', 'F', 25, 'Analyst', 1, 1);
SELECT employee_id, employee_name, hire_date
FROM Employees;
INSERT INTO Employees
(employee_id, employee_name, gender, age, designation, department_id, location_id)
VALUES
(105, 'Foreign Key Test', 'F', 25, 'Analyst', 999, 999);