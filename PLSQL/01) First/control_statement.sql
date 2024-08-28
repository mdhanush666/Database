SET SERVEROUTPUT ON;
DECLARE
    v_Num NUMBER := 9;
BEGIN
    IF v_Num > 10 THEN
        DBMS_OUTPUT.PUT_LINE('outside 10');
    ELSE
        DBMS_OUTPUT.PUT_LINE('inside 10');
    END IF;
END;

