
-- CREATE TABLE employees(
--   empID INT,
--   Fname VARCHAR(30),
--   Salary DECIMAL(7,2)
-- );

-- INSERT INTO EMPLOYEES (empID,Fname,Salary) VALUES
-- (1,'Dhanush',50000.00),
-- (2,'Ben',25000.00),
-- (3,'Tom',35000.00),
-- (4,'Jerry',75000.00);

-- SELECT * FROM EMPLOYEES;

SET SERVEROUTPUT ON;

DECLARE
  v_sal NUMBER(7,2);

BEGIN
  SELECT salary INTO v_sal FROM employees WHERE empID = 1;
  DBMS_OUTPUT.PUT_LINE(v_sal);
END;
/

DECLARE
  v_fName VARCHAR2(30);
  v_sal NUMBER(7,2);

BEGIN
  SELECT Fname,Salary INTO v_fName,v_sal FROM EMPLOYEES 
  WHERE empID = 2;

  DBMS_OUTPUT.PUT_LINE('Name    : ' || v_fName);
  DBMS_OUTPUT.PUT_LINE('Salary  : ' || v_sal);

END;
