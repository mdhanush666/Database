SET SERVEROUTPUT ON;

DECLARE 
    vName VARCHAR2(30):= 'Dhanush';
    cPI NUMBER(7,3):= 3.141592;

BEGIN
    
    DBMS_OUTPUT.PUT_LINE('Hello '|| vName);
    DBMS_OUTPUT.PUT_LINE('PI : ' || cPI);

END;