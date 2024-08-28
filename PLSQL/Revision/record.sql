SET SERVEROUTPUT ON;

DECLARE 
    TYPE rec_demo
    IS RECORD(
        ID trg1.empID%TYPE,
        Name trg1.empName%TYPE,
        Salary trg1.Salary%TYPE,
        Active trg1.Active%TYPE
    );
    v_data rec_demo;

BEGIN
    SELECT * INTO v_data FROM trg1 WHERE empID = 5;
    DBMS_OUTPUT.PUT_LINE(v_data.ID);
    DBMS_OUTPUT.PUT_LINE(v_data.Name);
    DBMS_OUTPUT.PUT_LINE(v_data.Salary);
    DBMS_OUTPUT.PUT_LINE(v_data.Active);

END;
/