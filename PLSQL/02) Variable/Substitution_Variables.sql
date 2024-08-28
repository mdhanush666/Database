SET SERVEROUTPUT ON;

-- Substitution Variables
    -- Used to get input from the user
    -- Identified by ampersand symbol (&)
    
DECLARE 
    v_name VARCHAR2(30);
    
BEGIN    
    SELECT empName INTO v_name FROM trg1
    WHERE empID = &Employee_ID;
    
    DBMS_OUTPUT.PUT_LINE(v_name );    
END;
/
