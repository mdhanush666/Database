
-- Index By Table (Associative Array)

    -- We cannot store this collection in a database and can be used in PL/SQL programs only
    -- We can use indexed using binary_integeror varchar2
    -- It is also called as PL/SQL tables
    -- These are useful when storing array of values retrieved from the database
    -- The size is unbounded and Size can increase/decrease dynamically
    -- Elements can be added to any position in the list ond deleted from any position
    
    -- Syntax :
    
    -- TYPE type_name 
    -- IS TABLE OF datatype
    -- Index By(Simple_integer || PLS_integer || Binary_integer || VARCHAR2(Size));
    

SET SERVEROUTPUT ON;

DECLARE
    TYPE idx_test
    IS TABLE OF VARCHAR2(30)
    INDEX BY SIMPLE_INTEGER;
    
    v_demo idx_test;
    
BEGIN    
    v_demo(1) := 'A';
    v_demo(2) := 'B';
    
    DBMS_OUTPUT.PUT_LINE(v_demo(2));
    
END;
/

DECLARE
    TYPE idx_test2
    IS TABLE OF trg1%ROWTYPE
    INDEX BY SIMPLE_INTEGER;
    
    v_demo2 idx_test2;
    
BEGIN    
    
    SELECT * INTO v_demo2(1)FROM trg1 WHERE empID = 1;
    
    
    DBMS_OUTPUT.PUT_LINE(v_demo2(1).empName);
    
END;
/


DECLARE 
    TYPE idx_own_test
    IS TABLE OF trg1%ROWTYPE
    INDEX BY SIMPLE_INTEGER;
    
    v_main1 idx_own_test;
    rowCount NUMBER;
    
BEGIN
    
    SELECT COUNT(empID) INTO rowCount FROM trg1;

    FOR c IN 1..rowCount LOOP
        SELECT * INTO v_main1(c) FROM trg1 WHERE empID = c;
        
        DBMS_OUTPUT.PUT_LINE('ID        : ' || v_main1(c).empID);
        DBMS_OUTPUT.PUT_LINE('Name      : ' || v_main1(c).empName);
        DBMS_OUTPUT.PUT_LINE('Salary    : ' || v_main1(c).Salary);
        DBMS_OUTPUT.PUT_LINE('Active    : ' || v_main1(c).Active);
        DBMS_OUTPUT.PUT_LINE(' ');

    END LOOP;
END;
/













