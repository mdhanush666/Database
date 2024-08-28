
CREATE TABLE employees
(
	empID INT,
    fName VARCHAR(30),
    lName VARCHAR(30),
    hourly_pay DECIMAL(5,2),
    hire_date DATE
	#CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 20)
);

DROP TABLE employees;

ALTER TABLE employees ADD CONSTRAINT chk_hourly_pay CHECK(hourly_pay >= 20);

INSERT INTO employees VALUE(1,"DDD","zzz",20.50,"2020-01-05");

SELECT * FROM employees;