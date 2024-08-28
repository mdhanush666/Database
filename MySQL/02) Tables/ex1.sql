USE new_myDB;

CREATE TABLE employees
(
	empID INT,
    fName VARCHAR(30),
    lName VARCHAR(30),
    hourly_pay DECIMAL(5,2),
    hire_date DATE
);

SELECT * FROM employees;

RENAME TABLE employees TO workers;

# DROP TABLE workers

ALTER TABLE workers ADD COLUMN phNo VARCHAR(10);

ALTER TABLE workers RENAME COLUMN phNo TO email;

ALTER TABLE workers MODIFY COLUMN phNo INT;
ALTER TABLE workers DROP COLUMN phNO;



SELECT * FROM workers;