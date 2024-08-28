CREATE VIEW people_age AS
SELECT fName,age FROM people;

SELECT * FROM people_age;

UPDATE people SET age = 24 WHERE ID  = 1;

SELECT * FROM employees;

CREATE VIEW emp_view AS
SELECT empID,fName,hourly_pay FROM employees;

SELECT * FROM emp_view;