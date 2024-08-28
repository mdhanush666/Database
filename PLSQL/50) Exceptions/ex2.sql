ACCEPT var_Age NUMBER PROMPT 'Enter your Age : ';
DECLARE
    age NUMBER := &varAge;
BEGIN
    IF age < 18 THEN
        RAISE_APPLICATION_ERROR(-20008,'You cant vote');
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('You can Vote');
    
    EXCEPTION
        WHEN others THEN
            DBMS_OUTPUT.PUT_LINE(SQLERRM);
    
END;
/