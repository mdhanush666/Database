USE new_myDB;

SELECT fName,lName FROM workers
UNION ALL
SELECT fName,lName FROM people;

SELECT * FROM workers;
SELECT * FROM people;