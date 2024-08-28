SET SERVEROUTPUT ON;

DECLARE 
    v_empName VARCHAR2(30);
    v_salary NUMBER(7,2);

BEGIN
    SELECT empName,Salary INTO v_empName,v_salary FROM trg1 WHERE empID = 1;
    DBMS_OUTPUT.PUT_LINE('Hello ' || v_empname);
    DBMS_OUTPUT.PUT_LINE(v_empName || ' your Salary is : ' || v_salary);
END;
/

SELECT * FROM trg1;