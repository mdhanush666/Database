-- Records
    -- Record is nothing but the user defined datatype
    -- Allows only combination of data types
    -- To store multiple columns into a single variable
    
    -- Syntax :
        -- TYPE type_name
        -- IS RECORD (variable1 datatype,..
                    --variable(n) datatype);
DECLARE
    TYPE rec_demo 
    IS RECORD (
        v_id trg1.empID%TYPE,
        v_Name trg1.empName%TYPE,
        v_sal trg1.Salary%TYPE,
        v_act trg1.Active%TYPE
    );

v_main1 rec_demo;

BEGIN 
    SELECT * INTO v_main1 FROM trg1 
    WHERE empID = 1;
    
    DBMS_OUTPUT.PUT_LINE(v_main1.v_id || ' ' ||
                         v_main1.v_Name || ' ' ||
                         v_main1.v_sal || ' ' || 
                         v_main1.v_act);
    
END;
/
