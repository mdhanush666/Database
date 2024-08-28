SET SERVEROUTPUT ON;

DECLARE
  v_c NUMBER := 1;

BEGIN 
  WHILE v_c <= 10 LOOP
    DBMS_OUTPUT.PUT_LINE(v_c);
    v_c := v_c + 1;
  END LOOP;
END;