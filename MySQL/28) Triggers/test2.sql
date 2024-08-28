CREATE DATABASE DB_trigger;
USE DB_trigger;

CREATE TABLE employees
(
	empID INT PRIMARY KEY AUTO_INCREMENT,
    empName VARCHAR(30),
    hourly_pay DECIMAL(4,2) DEFAULT 0,
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees (empName,hourly_pay,salary,hire_date) VALUES
("Tom",20.00,NULL,"2024-01-06"),
("Jerry",15.85,NULL,"2024-01-20"),
("Ben",10.20,NULL,"2024-02-10"),
("John",25.00,NULL,"2023-12-2");

UPDATE employees SET salary = (hourly_pay * 2080);

SELECT * FROM employees;

-- TRIGGER UPDATE............before_hourly_pay_insert

CREATE TRIGGER before_update_hourly_pay
BEFORE UPDATE ON employees
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);

UPDATE employees SET hourly_pay = 20.35 WHERE empID = 1;
SELECT * FROM employees;


-- TRIGGER INSERT............

INSERT INTO employees (empName,hourly_pay,salary,hire_date) VALUES
("Harris",30.00,NULL,"2023-06-10");

SELECT * FROM employees;

DELETE FROM employees WHERE empID = 6;

# ALTER TABLE employees AUTO_INCREMENT = 6;

CREATE TRIGGER before_insert
BEFORE INSERT ON employees
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);

-- .............................

CREATE TABLE expens
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    expensName VARCHAR(30),
    expensTotal DECIMAL(10,2)
);

INSERT INTO expens (expensName,expensTotal) VALUES
("Salaries",NULL);

SELECT * FROM expens;
UPDATE expens SET expensTotal = (SELECT SUM(salary) FROM employees);

-- TRIGGER UPDATE...................

CREATE TRIGGER after_salary_update
AFTER UPDATE ON employees
FOR EACH ROW
UPDATE expens SET expensTotal = (SELECT SUM(salary) FROM employees);

SELECT * FROM expens;
SELECT * FROM employees;
SELECT SUM(salary) FROM employees;

DELETE FROM employees WHERE empID = 6;

UPDATE employees SET hourly_pay = 18.45 WHERE empID = 3;
INSERT INTO employees(empName,hourly_pay,salary,hire_date) VALUE("Peter",21.50,NULL,"2024-03-05");

-- TRIGGER INSERT...................

CREATE TRIGGER after_salary_insert
AFTER INSERT ON employees
FOR EACH ROW
UPDATE expens SET expensTotal = (SELECT SUM(salary) FROM employees);

-- TRIGGER DELETE...................

CREATE TRIGGER after_salary_delete
AFTER DELETE ON employees
FOR EACH ROW
UPDATE expens SET expensTotal = (SELECT SUM(salary) FROM employees);










