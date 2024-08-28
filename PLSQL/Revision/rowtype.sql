SET SERVEROUTPUT ON;

DECLARE 
    v_data1 trg1%ROWTYPE;
BEGIN
    SELECT * INTO v_data1 FROM trg1 WHERE empID = 1;
    DBMS_OUTPUT.PUT_LINE(v_data1.empID);
    DBMS_OUTPUT.PUT_LINE(v_data1.empName);
    DBMS_OUTPUT.PUT_LINE(v_data1.Salary);
    DBMS_OUTPUT.PUT_LINE(v_data1.Active);
END;
/