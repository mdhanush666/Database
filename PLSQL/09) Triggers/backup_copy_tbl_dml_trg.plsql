SELECT * FROM trg1;
SELECT * FROM backup_tbl;

DELETE FROM trg1 WHERE empID = 5;

INSERT INTO trg1 VALUES(5,'Dhanush',85000,1);
UPDATE trg1 SET empName = 'ddd' WHERE empID = 5;
DELETE FROM trg1 WHERE empID = 5;

CREATE TABLE backup_tbl AS SELECT * FROM trg1;


CREATE OR REPLACE TRIGGER backup_tbl_trigger
BEFORE INSERT OR UPDATE OR DELETE 
ON trg1
FOR EACH ROW 
ENABLE
BEGIN
    IF INSERTING THEN
        INSERT INTO backup_tbl VALUES (:NEW.empID,:NEW.empName,:NEW.Salary,:NEW.Active);
        
        ELSE IF UPDATING THEN
            UPDATE backup_tbl SET empID = :NEW.empID, empName = :NEW.empName,
                                Salary = :NEW.Salary, Active = :NEW.Active
                                WHERE empId = :OLD.empID;                                
            
            ELSE IF DELETING THEN
                DELETE FROM backup_tbl WHERE empID = :OLD.empID;
            END IF;    
        END IF;    
    END IF;    
END;
/
