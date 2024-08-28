SET SERVEROUTPUT ON;

DECLARE
  v_name VARCHAR2(20) := 'Dhanush';

BEGIN
  DBMS_OUTPUT.PUT_LINE('Hello ' || v_name);  
END;
