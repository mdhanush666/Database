-- Multiset Operator
    -- MULTISET UNION       
        -- 1) It returns all records from all the collection set
        -- 2) Output will not be sorted by default
        -- 3) It will not remove the duplicate records
            
    -- MULTISET UNION DISTINCT 
        -- 1) It returns only the unique/distinct result
        -- 2) Output will be sorted by default
        
    -- MULTISET INTERSECT 
        -- 1) It returns all the common records from all the collection set
        -- 2) Output will be sorted by default
        -- 3) It will remove the duplicate records
        
    -- MULTISET EXCEPT 
        -- 1) It returns all the records from one set excluding the records from the other set
        -- 2) Output will be sorted by default
        -- 3) It will remove the duplicate records    
        
    -- Syntax:
        -- NESTED_TABLE_1
        -- MULTISET[UNION || UNION DISTINCT || INTERSECT || EXCEPT]
        -- NESTED_TABLE_2
        

SET SERVEROUTPUT ON;

DECLARE 
    TYPE v_data
    IS TABLE OF SIMPLE_INTEGER;
    
    d1 v_data := v_data(1,2,3,4,5);
    d2 v_data := v_data(6,7,1,2,8);
    
    d3 v_data := v_data();
    
BEGIN
   -- d3 := d1 MULTISET UNION d2;
   -- d3 := d1 MULTISET UNION DISTINCT d2;
   -- d3 := d1 MULTISET INTERSECT d2;
    d3 := d1 MULTISET EXCEPT d2;
    
    FOR i IN d3.FIRST..d3.LAST LOOP
        DBMS_OUTPUT.PUT_LINE(d3(i));
    END LOOP;
    
END;
/
               
        
        
        
        
        
        
        
        
        
        
        
        