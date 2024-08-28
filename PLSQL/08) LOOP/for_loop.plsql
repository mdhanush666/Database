SET SERVEROUTPUT ON;

BEGIN
  FOR v_c IN 1 .. 10 LOOP
    DBMS_OUTPUT.PUT_LINE(v_c);
    END LOOP;
END;
/

BEGIN 
  FOR v_c2 IN REVERSE 1 .. 10 LOOP 
    DBMS_OUTPUT.PUT_LINE(v_c2);
  END LOOP;
END;
/

DECLARE 
  n NUMBER := 19;
BEGIN 
  FOR c IN 1 .. 12 LOOP 
    DBMS_OUTPUT.PUT_LINE(n || ' x ' || c || ' = ' || (n * c));
  END LOOP;
END;