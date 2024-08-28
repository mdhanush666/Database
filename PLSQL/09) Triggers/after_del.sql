SELECT * FROM trg1;
COMMIT;
DELETE FROM trg1 WHERE empID = 4;

CREATE OR REPLACE TRIGGER after_del
AFTER DELETE ON trg1
FOR EACH ROW
ENABLE
BEGIN
  DBMS_OUTPUT.PUT_LINE('Employee ID ' || :OLD.empID || ' Record have been DELETED Successfully');
END;
/
