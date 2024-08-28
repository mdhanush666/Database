USE new_mydb;


SELECT * FROM people;

ALTER TABLE people ADD COLUMN Sex VARCHAR(1) AFTER lName;

UPDATE people SET Sex = "F" WHERE ID = 9;

SELECT * FROM people ORDER BY(fName)DESC;