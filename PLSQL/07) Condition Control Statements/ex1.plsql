SET SERVEROUTPUT ON;

DECLARE
  v_n NUMBER := 11;

BEGIN
  IF v_n > 10 THEN
    DBMS_OUTPUT.PUT_LINE('OUTSIDE 10'); 

  ELSE 
    DBMS_OUTPUT.PUT_LINE('INSIDE 10');

  END IF;
END;
/

DECLARE
  v_place VARCHAR2(20);
  v_msg VARCHAR2(50) := 'City is Protected By : ';

BEGIN
  v_place := 'Nuwara Eliya';

  IF v_place = 'Colombo' THEN
    DBMS_OUTPUT.PUT_LINE(v_msg || 'Super-Man');
  ELSIF v_place = 'Kandy' THEN
    DBMS_OUTPUT.PUT_LINE(v_msg || 'Bat-Man');
  ELSIF v_place = 'Nuwara Eliya' THEN
    DBMS_OUTPUT.PUT_LINE(v_msg || 'Wonder-Women');
  ELSE
    DBMS_OUTPUT.PUT_LINE('PLEASE CALL AVENGERS');
  END IF;
END;
/
