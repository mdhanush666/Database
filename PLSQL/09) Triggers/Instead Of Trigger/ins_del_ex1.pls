CREATE VIEW trg_view AS 
    SELECT * FROM trg1;
    
SELECT * FROM trg_view;
SELECT * FROM trg1;

DELETE FROM trg_view WHERE empID = 5;

UPDATE trg_view SET Active = 1 WHERE empID = 4;

CREATE OR REPLACE TRIGGER view_trg
INSTEAD OF INSERT 
ON trg_view
FOR EACH ROW
BEGIN
    INSERT INTO trg1 VALUES(:NEW.empID,:NEW.empName,:NEW.Salary,:NEW.Active);
END;
/

CREATE OR REPLACE TRIGGER view_trg_del
INSTEAD OF DELETE 
ON trg_view
FOR EACH ROW
BEGIN
    UPDATE trg1 SET Active = 0 WHERE empID = :OLD.empID;
END;
/

INSERT INTO trg_view VALUES(5,'Dhanush',95000,1);

DELETE FROM trg_view WHERE empID = 5;
