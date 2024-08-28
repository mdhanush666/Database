-- Different method 
-- Learned form new Utube Channel (Not Working) ^_^
-- Did in Learned Method

USE DB_trigger;

SELECT * FROM employees;

CREATE TABLE emp_audit
(
	empID INT AUTO_INCREMENT PRIMARY KEY,
    Operation VARCHAR(20),
    History DATE 
);

-- TRIGGER...............

CREATE TRIGGER trg_emp_after_insert
AFTER INSERT ON employees
FOR EACH ROW
INSERT INTO emp_audit(empId,Operation,History) VALUES
(NEW.empID,'INS',NOW());

CREATE TRIGGER trg_emp_after_delete
AFTER DELETE ON employees
FOR EACH ROW
INSERT INTO emp_audit(empId,Operation,History) VALUES
(OLD.empID,'DEL',NOW());

DROP TRIGGER trg_emp_after_delete;

SELECT * FROM emp_audit;

SELECT * FROM employees;
SELECT * FROM expens;

INSERT INTO employees (empName,hourly_pay,salary,hire_date) VALUES
("Dhanush",45.35,NULL,"2024-01-06");

DELETE FROM employees WHERE empID = 6;
# ALTER TABLE employees AUTO_INCREMENT = 6;

DROP TRIGGER trg_emp_audit;






