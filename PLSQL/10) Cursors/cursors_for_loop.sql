SET SERVEROUTPUT ON;

DECLARE
    CURSOR cur_name IS 
        SELECT empID,empName FROM trg1;

BEGIN
    FOR c IN cur_name
        LOOP
        DBMS_OUTPUT.PUT_LINE('ID    : ' || c.empID);
        DBMS_OUTPUT.PUT_LINE('Name  : ' || c.empName);
        DBMS_OUTPUT.PUT_LINE('');
    
    END LOOP;
END;
/