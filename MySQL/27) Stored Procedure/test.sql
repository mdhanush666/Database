 SELECT * FROM people;

# DELIMITER $$
# CREATE PROCEDURE find_people()
# BEGIN
#     SELECT * FROM people;
# END $$

# DELIMITER ;
USE new_mydb;
CALL find_people();

-- call with parameter

DELIMITER $$

CREATE PROCEDURE a_find(IN getID INT)
BEGIN
	SELECT * FROM people WHERE ID = getID;
END $$

DELIMITER ;

DROP PROCEDURE a_find;

CALL a_find(5);

DELIMITER //
CREATE PROCEDURE age_greaterThan(IN getAge INT)
BEGIN
	SELECT * FROM people WHERE age > getAge;
END //
DELIMITER ;

CALL age_greaterThan(28);








    