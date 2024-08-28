-- Nested Table

    -- We can store this collection in a database
    -- They can be indexed only by integer
    -- You can perform multiset operation on this collection
    -- The size is unbounded and can be increase dynamically
    -- We need to initialize this collection
    -- This can be sparse, you can delete the elements
    
-- Syntax
    -- TYPE type_name
    -- IS TABLE OF (SIMPLE_INTEGER || PLS_INTEGER || BINARY_INTEGER || VARCHAR2(size));
    
SET SERVEROUTPUT ON;

DECLARE 
    TYPE nested_demo
    IS TABLE OF VARCHAR2(20);
    
    v_data nested_demo := nested_demo(); -- Initialize
    
BEGIN
    
    v_data.extend(2);
    
    v_data(1) := 'Apple';
    v_data(2) := 'Orange';
    
    DBMS_OUTPUT.PUT_LINE(v_data(2));
END;
/

DECLARE 
    TYPE nested_demo2Array
    IS TABLE OF VARCHAR2(20);
    
    v_data nested_demo2Array := nested_demo2Array('Banana','Mango'); -- Initialize
    
BEGIN
    
    DBMS_OUTPUT.PUT_LINE(v_data(2));
END;
/









