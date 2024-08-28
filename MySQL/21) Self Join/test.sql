USE new_mydb;

CREATE TABLE ex_self_join
(
	empID INT PRIMARY KEY,
    fName VARCHAR(30),
    lName VARCHAR(30),
    job VARCHAR(50)
);

INSERT INTO ex_self_join(empID,fName,lName,job) VALUES
(1,"Dhanush","Dhanu","Manager"),
(2,"Tom","Tommy","employee"),
(3,"Jer","Jerry","employee"),
(4,"Supun","Perera","Ass.Manager"),
(5,"kamal","Dev","employee");

SELECT * FROM ex_self_join;

ALTER TABLE ex_self_join ADD supervisorID INT;

UPDATE ex_self_join SET supervisorID = 4 WHERE empID = 5;

-- Self Join.....

SELECT 	a.fName,a.lName, 
		CONCAT(b.fName, " ", b.lName) AS Report_to
FROM ex_self_join AS a
INNER JOIN ex_self_join AS b 
ON a.supervisorID = b.empID;


SELECT * FROM ex_self_join;
