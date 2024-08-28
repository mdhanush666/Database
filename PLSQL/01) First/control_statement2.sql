SET SERVEROUTPUT ON;
DECLARE
    v_place VARCHAR2(30):= 'Nuwara Eliya';
    v_msg VARCHAR(30) := 'City is protected by : ';
BEGIN
    IF v_place = 'Colombo' THEN
        DBMS_OUTPUT.PUT_LINE(v_msg || 'Super-man');
    ELSE IF v_place = 'Kandy' THEN
        DBMS_OUTPUT.PUT_LINE(v_msg || 'Bat-Man');
    ELSE IF v_place = 'Nuwara Eliya' THEN
        DBMS_OUTPUT.PUT_LINE(v_msg || 'Wonder-Women');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Please call Avengers Thank You');
        
    END IF;
    END IF;
    END IF;
END;