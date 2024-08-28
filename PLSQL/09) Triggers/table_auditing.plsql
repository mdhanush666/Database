SET SERVEROUTPUT ON;
CREATE TABLE trg1_audit(
  newName VARCHAR2(20),
  oldName VARCHAR2(20),
  history DATE,
  Operation VARCHAR2(10)
);

SELECT * FROM trg1 ORDER BY (EMPID)ASC;
SELECT * FROM trg1_audit;

CREATE OR REPLACE TRIGGER trg1_audit_trigger
BEFORE INSERT OR UPDATE OR DELETE
ON trg1
FOR EACH ROW
ENABLE
DECLARE
    v_his VARCHAR2(30);    
BEGIN
    
    v_his := TO_CHAR(sysdate,'DD/MON/YYYY HH24:MI:SS');
    
    IF INSERTING THEN
        INSERT INTO trg1_audit VALUES (:NEW.empName,NULL,sysdate,'INSERT');
        ELSE IF UPDATING THEN
            INSERT INTO trg1_audit VALUES (:NEW.empName,:OLD.empName,sysdate,'UPDATE');
            ELSE IF DELETING THEN
                INSERT INTO trg1_audit VALUES (NULL,:OLD.empName,sysdate,'DELETE');
            END IF;
        END IF;
    END IF;
END;
/

DROP TRIGGER trg1_audit_trigger;

INSERT INTO trg1 VALUES(6,'kabil',75000,1);
UPDATE trg1 SET empName = 'Kabileshwaran' WHERE empID = 6;
DELETE FROM trg1 WHERE empID = 6;

SELECT * FROM trg1;
SELECT * FROM trg1_audit;

DELETE FROM trg1_audit;










