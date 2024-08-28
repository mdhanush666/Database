-- %TYPE
    -- is a type that assigns or matches to any column datatype with the database
    -- Used to declare a variable according to database column definition
    
    -- Syntax : Variable_name table_name.Column_name%TYPE;

SET SERVEROUTPUT ON;

DECLARE 
  v_sal trg1.Salary%TYPE;
BEGIN
  SELECT Salary INTO v_sal FROM trg1 
  WHERE empID = 4;

  DBMS_OUTPUT.PUT_LINE('Salary : ' || v_sal);

END;
/
