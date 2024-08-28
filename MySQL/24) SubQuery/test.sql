SELECT * FROM workers;

SELECT fName,lName,hourly_pay FROM workers 
WHERE hourly_pay > 
	(SELECT AVG(hourly_pay)FROM workers);

SELECT * FROM customers;
SELECT * FROM payments;

SELECT cusName FROM customers 
WHERE cusID IN
	(SELECT cusID FROM payments);
    
SELECT cusName FROM customers 
WHERE cusID NOT IN
	(SELECT cusID FROM payments);

USE new_mydb;

SELECT * FROM payments;
SELECT AVG(Amount) FROM payments;
SELECT AVG(Amount) FROM payments WHERE payID IN (4,5);

SELECT payID, MAX(Amount) FROM payments 
WHERE Amount < 
(SELECT MAX(Amount) FROM payments WHERE Amount < 
	(SELECT MAX(Amount) FROM payments)
);

SELECT payID, MAX(Amount) FROM payments; -- Max 

SELECT payID, MAX(Amount) FROM payments 
WHERE Amount < 
(SELECT MAX(Amount) FROM payments); -- Second Max

SELECT payID, MAX(Amount) FROM payments 
WHERE Amount < 
(SELECT MAX(Amount) FROM payments WHERE Amount < 
	(SELECT MAX(Amount) FROM payments)
); -- Third Max

SELECT payID, MAX(Amount) FROM payments 
WHERE Amount < 
(SELECT MAX(Amount) FROM payments WHERE Amount < 
	(SELECT MAX(Amount) FROM payments WHERE Amount < 
		(SELECT MAX(Amount) FROM payments)
    )
); -- Fourth Max