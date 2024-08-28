-- CASE Statement
    -- It Will execute the process depending on whether the condition is True or False
    -- It is a statement and can be used in SQL and PLSQL
    -- It can be used as a part of expression or a standalone statement
    -- It accepts only the same datatype
    -- Semi Colon(;) must be used at the end of each statement for standalone case / 
-- statement case and not for Expression case statements

-- TYPES
    -- SIMPLE CASE Statements
    -- SEARCHED CASE Statements
    
-- SIMPLE CASE Statements

    -- We need to specify the selector and the selector value to check the condition
    
-- Syntax
    /*
        CASE selector
        WHEN selector_value1 THEN statements
        WHEN selector_value2 THEN statements
        [ELSE else_statements]
        END CASE;
    */
    
    
    
SET SERVEROUTPUT ON;

DECLARE 
    TYPE arr 
    IS TABLE OF SIMPLE_INTEGER;
    
    v_data arr := arr(1,2,3,4,5,6,7,8,9,10);
    temp NUMBER;
BEGIN

    FOR i IN v_data.FIRST..v_data.LAST LOOP
        
        temp := MOD(v_data(i),2);
        
        CASE temp
            WHEN 0 THEN
                DBMS_OUTPUT.PUT_LINE(v_data(i) || ' is EVEN NUMBER..');
            ELSE
                DBMS_OUTPUT.PUT_LINE(v_data(i) || ' is ODD NUMBER..');
        END CASE;
    END LOOP;    
END;
/
    
    
-- SEARCHED CASE Statements

    -- We can use multiple condition in this searched case statements
    
-- Syntax
    /*
        CASE
        WHEN selector_value1 THEN statements
        WHEN selector_value2 THEN statements
        [ELSE else_statements]
        END CASE;
    */    
    
    
DECLARE
    txt VARCHAR2(1)     := 'A';
    txt2 VARCHAR2(1)    := 'A';
BEGIN
    CASE 
        WHEN txt = 'A' AND txt2 = 'A' THEN
            DBMS_OUTPUT.PUT_LINE(txt || ' is a Vowel');
        WHEN txt = 'E' AND txt2 = 'E' THEN
            DBMS_OUTPUT.PUT_LINE(txt || ' is a Vowel');
        WHEN txt = 'I' AND txt2 = 'I' THEN
            DBMS_OUTPUT.PUT_LINE(txt || ' is a Vowel');
        WHEN txt = 'O' AND txt2 = 'O' THEN
            DBMS_OUTPUT.PUT_LINE(txt || ' is a Vowel');
        WHEN txt = 'U' AND txt2 = 'U' THEN
            DBMS_OUTPUT.PUT_LINE(txt || ' is a Vowel');
        ELSE
            DBMS_OUTPUT.PUT_LINE(txt || ' it is not a vowel');
    END CASE;
END;
/

