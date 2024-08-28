-- Varray
    
    -- We can store this collection in a database
    -- They can be indexed only by integer
    -- Individual element cannot be deleted so this will remain dense
    -- Need to specify the upper bound
    -- We need to initialize this collection
    -- The maximum size is 2147483647
    
-- Syntax
    -- TYPE type_name
    -- IS VARRAY(size_limit) OF (INTEGER | SIMPLE_INTEGER | PLS_INTEGER | 
    --                           BINARY_INTEGER | VARCHAR2(size));
    
SET SERVEROUTPUT ON;

DECLARE
    TYPE varray_demo
    IS VARRAY(5) OF VARCHAR2(1);
    
    v_data varray_demo;

BEGIN
    v_data := varray_demo();
    v_data.extend(3);
    
    v_data(1) := 'A';
    v_data(2) := 'B';
    
    DBMS_OUTPUT.PUT_LINE(v_data(1));
END;
/

DECLARE 
    TYPE varr_test2 
    IS VARRAY(5) OF trg1%ROWTYPE;
    
    v_data2 varr_test2 := varr_test2();
    rowCount NUMBER;
    
BEGIN
    SELECT COUNT(empID) INTO rowCount FROM trg1;
    
    v_data2.extend(5);
    
    FOR c IN 1..rowCount LOOP    
        SELECT * INTO v_data2(c) FROM trg1 WHERE empID = c;
        
        DBMS_OUTPUT.PUT_LINE(v_data2(c).empID);
        DBMS_OUTPUT.PUT_LINE(v_data2(c).empName);
        DBMS_OUTPUT.PUT_LINE(v_data2(c).Salary);
        DBMS_OUTPUT.PUT_LINE(v_data2(c).Active);
        DBMS_OUTPUT.PUT_LINE(' ');        
        
    END LOOP;    
END;
/

















