SELECT * FROM customers;
SELECT * FROM payments;

INSERT INTO payments (Amount,cusID) VALUES (40.25,NULL);

SELECT payID,Amount,cusName FROM payments 
INNER JOIN customers ON payments.cusID = customers.cusID;

SELECT payID,Amount,cusName FROM payments 
LEFT JOIN customers ON payments.cusID = customers.cusID;

SELECT payID,Amount,cusName FROM payments 
RIGHT JOIN customers ON payments.cusID = customers.cusID;
