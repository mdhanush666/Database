-- Explicit Cursor 

SET SERVEROUTPUT ON;

DECLARE
    v_name VARCHAR2(30);
    CURSOR cur_name IS
        SELECT empName FROM trg1;
BEGIN
    
    OPEN cur_name;
    
    LOOP
        FETCH cur_name INTO v_name;
        DBMS_OUTPUT.PUT_LINE(v_name);
        EXIT WHEN cur_name%NOTFOUND;
    END LOOP; 
    
    CLOSE cur_name;
END;
/