SET SERVEROUTPUT ON;

DECLARE 
v_n NUMBER := 19;
v_c NUMBER := 1;

BEGIN
  LOOP 
    -- IF v_c = 13 THEN
    --   EXIT;
    -- ELSE
    --   DBMS_OUTPUT.PUT_LINE(v_n || ' x ' || v_c || ' = ' || (v_n * v_c));
    --   v_c := v_c + 1;      
    -- END IF;

    DBMS_OUTPUT.PUT_LINE(v_n || ' x ' || v_c || ' = ' || (v_n * v_c));  
    v_c := v_c + 1;
    EXIT WHEN v_c = 13;

  END LOOP;
END;
