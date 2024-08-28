VARIABLE v_bind VARCHAR2(10);

EXEC :v_bind := 'Dhanush';


-- 2nd Way

SET SERVEROUTPUT ON;

BEGIN
  
  :v_bind := 'Hello';

  DBMS_OUTPUT.PUT_LINE(:v_bind);

END;
/

SET AUTOPRINT ON;
VARIABLE v_bind2 VARCHAR2(10);
EXECUTE :v_bind2 := 'Ben 10';