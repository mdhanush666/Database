-- Collection Exception
    
    -- COLLECTION_IS_NULL
        -- 1) If Constructor has not been initialized
        -- 2) This exception applies to varrays and nested tables
    
    -- VALUE_ERROR
        -- 1) if character string buffer is small
        -- 2) if subscript value is not an integer
    
    -- SUBSCRIPT_OUTSIDE_LIMIT
        -- 1) If subscript value <=0
        
    -- SUBSCRIPT_BEYOND_COUNT
        --1) If subscript has more than the total count of the 
        --   number of elements in the collection
        
    -- NO_DATA_FOUND
        -- 1) If value not available in the array of elements
        


SET SERVEROUTPUT ON;

DECLARE
    TYPE v_data IS TABLE OF VARCHAR2(10);
    emp1 v_data := v_data('john','Ram');
BEGIN
    
--    emp1.delete(2);
--    emp1(1) := 'sdf';
    
    DBMS_OUTPUT.PUT_LINE(emp1(3));
    
    EXCEPTION 
        WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No Data Found!');
        WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('cant store the data, String buffer is small');
        DBMS_OUTPUT.PUT_LINE('Or, check the index value. Index value must be an Integer');
        WHEN SUBSCRIPT_OUTSIDE_LIMIT THEN
        DBMS_OUTPUT.PUT_LINE('Index value cannot be "0"');
        WHEN SUBSCRIPT_BEYOND_COUNT THEN
        DBMS_OUTPUT.PUT_LINE('No data found on the given index!');
        

END;
/















        