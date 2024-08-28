SET SERVEROUTPUT ON;

DECLARE 
    v_ID NUMBER;
    v_name VARCHAR2(30);

    CURSOR cur_getId(ID NUMBER := 5)IS 
        SELECT empID,empName FROM trg1 WHERE empId = ID;
        
BEGIN
    OPEN cur_getId;
    
    LOOP 
        FETCH cur_getId INTO v_ID,v_name;
        EXIT WHEN cur_getId%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('ID    : ' || v_ID);
        DBMS_OUTPUT.PUT_LINE('Name  : ' || v_name);
    END LOOP;
    
    CLOSE cur_getId;    
END;
/
SELECT * FROM trg1;

