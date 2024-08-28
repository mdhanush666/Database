USE new_myDB;

DESC emp_data;

SET AUTOCOMMIT = OFF;
COMMIT;
SELECT * FROM emp_data;

SHOW TRIGGERS;

DROP TRIGGER before_hourly_pay_update;

UPDATE emp_data SET salary = hourly_pay * 2080;
UPDATE emp_data SET salary = null;
UPDATE emp_data SET hourly_pay = 28.20 WHERE eID = 1;


DELETE FROM emp_data;
ROLLBACK;
SELECT * FROM emp_data;

-- TRIGGER.............

CREATE TRIGGER before_hourly_pay_update
BEFORE UPDATE ON emp_data
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay) * 2080;

SELECT * FROM emp_data;
SHOW TRIGGERS;

UPDATE emp_data SET salary = (hourly_pay) * 2080;
UPDATE emp_data SET hourly_pay = 40.13 WHERE eID = 1;


INSERT INTO emp_data VALUES(9,"New","Entry",35.45,null,"2023-2-20");
DELETE FROM emp_data WHERE eID = 9;

-- TRIGGER INSERT.............

CREATE TRIGGER before_hourly_pay_insert
BEFORE INSERT ON emp_data
FOR EACH ROW
SET NEW.salary  = (NEW.hourly_pay) * 2080;

INSERT INTO emp_data VALUES(10,"New","New",10.00,null,"2023-2-16");

SELECT * FROM emp_data;
SELECT SUM(salary) FROM emp_data;
SHOW TRIGGERS;

CREATE TABLE expenses
(
	expensID INT PRIMARY KEY,
    expensName VARCHAR(50),
    expensTotal DECIMAL(10,2) DEFAULT 0
);

SELECT * FROM expenses;

INSERT INTO expenses(expensID,expensName) VALUES
(1,"salaries"),
(2,"suplies"),
(3,"taxes");

UPDATE expenses SET expensTotal = (SELECT SUM(salary) FROM emp_data)
WHERE expensName = "salaries";

DELETE FROM emp_data WHERE eID = 10;
DELETE FROM expenses;

CREATE TRIGGER after_salary_delete
AFTER DELETE ON emp_data
FOR EACH ROW
UPDATE expenses SET expensTotal = expensTotal - OLD.salary
WHERE expensName = "salaries";

SHOW TRIGGERS;

INSERT INTO emp_data VALUES(10,"New","Entry2",45.45,null,"2023-1-20");

CREATE TRIGGER after_salary_insert
AFTER INSERT ON emp_data
FOR EACH ROW
UPDATE expenses SET expensTotal = expensTotal + NEW.salary 
WHERE expensName = "salaries";

SELECT * FROM expenses;
SELECT SUM(salary) FROM emp_data;

SELECT * FROM emp_data;

UPDATE emp_data SET hourly_pay = 18.45 WHERE eID = 4;

CREATE TRIGGER after_salary_update
AFTER UPDATE ON emp_data
FOR EACH ROW
UPDATE expenses SET expensTotal = expensTotal + (NEW.salary - OLD.salary)
WHERE expensName = "salaries";








