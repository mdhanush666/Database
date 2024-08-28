SHOW INDEX FROM people;

SELECT * FROM people;


CREATE INDEX fName_idx ON people(fName);
CREATE INDEX lName_idx ON people(lName);

ALTER TABLE people
DROP INDEX lName_idx;

