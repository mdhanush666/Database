SET SERVEROUTPUT ON;

--DECLARE
--    v_c NUMBER := 1;
--BEGIN
--    LOOP
--        DBMS_OUTPUT.PUT_LINE(v_c);
--        v_c := v_c + 1;
--        EXIT WHEN v_c = 11;
--    END LOOP;    
--END;
--/

--DECLARE
--    v_c NUMBER := 1;
--BEGIN
--    WHILE(v_c <= 10) LOOP
--        DBMS_OUTPUT.PUT_LINE(v_c);
--        v_c := v_c + 1;
--    END LOOP;    
--END;
--/


--BEGIN
--   FOR c IN REVERSE 1..10 LOOP
--    DBMS_OUTPUT.PUT_LINE(c);
--   END LOOP;
--END;
--/

DECLARE
    v_data trg1%ROWTYPE;
    ID NUMBER := 1;
    rowCount NUMBER;
    
BEGIN 
    SELECT COUNT(empID) INTO rowCount FROM trg1;
    LOOP
        SELECT * INTO v_data FROM trg1 WHERE empID = ID;
        DBMS_OUTPUT.PUT_LINE(v_data.empID);
        DBMS_OUTPUT.PUT_LINE(v_data.empName);
        DBMS_OUTPUT.PUT_LINE(v_data.Salary);
        DBMS_OUTPUT.PUT_LINE(v_data.Active);

        DBMS_OUTPUT.PUT_LINE(' ');
        
        ID := ID + 1;
        EXIT WHEN ID = rowCount+1;
        END LOOP;
END;
/
























