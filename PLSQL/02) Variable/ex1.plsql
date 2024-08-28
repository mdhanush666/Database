SET SERVEROUTPUT ON;

DECLARE 
  v_name VARCHAR2(20);
BEGIN
  v_name := 'Dhanush';
  DBMS_OUTPUT.PUT_LINE('Hello ' || v_name);
END;