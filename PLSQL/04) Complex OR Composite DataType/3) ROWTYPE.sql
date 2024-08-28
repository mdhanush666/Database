-- %ROWTYPE
    -- is a type that defines record matching the name and its datatypes of 
    -- an entire table or view
    -- Declaring a variable according to a collection of column in a database 
    -- table or view
    
    -- Syntax : Variable_name table_name.%ROWTYPE
    
DECLARE 
  v_data1 trg1%ROWTYPE;
  v_data2 trg1%ROWTYPE;

BEGIN
  SELECT * INTO v_data1 FROM trg1
  WHERE empID = 1;
  
  SELECT * INTO v_data2 FROM trg1
  WHERE empID = 2;
  
--  DBMS_OUTPUT.PUT_LINE('ID| Name   | Salary| Active');
--  
--  DBMS_OUTPUT.PUT_LINE(v_data1.empID || ' | ' || v_data1.empName || ' | ' || v_data1.Salary
--  || ' | ' || v_data1.Active);
--  
--  DBMS_OUTPUT.PUT_LINE(v_data2.empID || ' | ' || v_data2.empName || ' | ' || v_data2.Salary
--  || ' | ' || v_data2.Active);
  
  DBMS_OUTPUT.PUT_LINE('Name    : ' || v_data1.empName);
  DBMS_OUTPUT.PUT_LINE('Salary  : ' ||v_data1.Salary);
  DBMS_OUTPUT.PUT_LINE('Active  : ' || v_data1.Active);

END; 
/
SET SERVEROUTPUT ON;
