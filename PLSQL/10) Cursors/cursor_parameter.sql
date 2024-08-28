SET SERVEROUTPUT ON;

DECLARE 
    v_name VARCHAR2(30);
    CURSOR cur_getId(ID NUMBER)IS 
        SELECT empName FROM trg1 WHERE empId = ID;
        
BEGIN
    OPEN cur_getId(1);
    
    LOOP 
        FETCH cur_getId INTO v_name;
        EXIT WHEN cur_getId%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v_name);
    END LOOP;
    
    CLOSE cur_getId;    
END;
/
SELECT * FROM trg1;

