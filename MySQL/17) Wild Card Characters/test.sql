USE new_myDB;

CREATE TABLE people(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    fName VARCHAR(30),
    lName VARCHAR(30),
    age int
);

ALTER TABLE people AUTO_INCREMENT = 1;

INSERT INTO people(fName,lName,age) VALUES
("Tom","Tommy",22),
("Jer","Jerry",28),
("Day","Dayal",26),
("Kamal","Lash",30),
("Supun","Perera",45),
("Mano","Vimal",18),
("Karthik","Raja",19),
("Dannis","Raja",32),
("Vimal","Pannir",20);

SELECT * FROM people;

DELETE FROM people;


SELECT * FROM people WHERE fName LIKE "d%"; -- first chk
SELECT * FROM people WHERE lName LIKE "%a"; -- last chk

SELECT * FROM people WHERE age LIKE "_0";


