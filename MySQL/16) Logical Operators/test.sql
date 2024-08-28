
# >
# <
# NOT
# IN
# OR
# AND
# BETWEEN

USE new_mydb;

SELECT * FROM payments;

SELECT * FROM payments WHERE Amount > 30;
SELECT * FROM payments WHERE Amount < 50;


SELECT * FROM payments WHERE payID NOT LIKE 4;

SELECT * FROM payments WHERE payID NOT LIKE 4;

