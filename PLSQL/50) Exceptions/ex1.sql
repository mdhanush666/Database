-- Exceptions
/*
    It is used to handle errors that is raised during the execution of program 
    (run time error)
    
    Exception can be internally defined (by the run-time) or user defined
    
    Exception names must be unique within the Exceptions
    
    Declare User - Defined exception
        1. Using Variable of EXCEPTION type.
        2. Using PRAGMA EXCEPTION_INIT function.
        3. Using RAISE_APPLICATION_ERROR method.
        
*/

-- Structure..
/*
    --Declaration block
    DECLARE
        ..............
    
    -- Execution block
    BEGIN
        ............
        ............
    
    -- Exception block
    EXCEPTION
        WHEN exception_name THEN
            Statements;
    END;
    /
*/


SET SERVEROUTPUT ON;

DECLARE 
    v_name VARCHAR2(10);
BEGIN
    SELECT EMPNAME INTO v_name FROM trg1 WHERE EMPID = 21;
    
    DBMS_OUTPUT.PUT_LINE('Name : ' || v_name);
    
EXCEPTION
    WHEN no_data_found THEN
        DBMS_OUTPUT.PUT_LINE('Error : ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('Error : ' || SQLERRM);
    
END;
/



















