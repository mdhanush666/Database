SELECT * FROM customers;
SELECT * FROM payments;

#Functions.....

SELECT cusName,LENGTH(cusName)AS Name_Length FROM customers;

SELECT SUBSTR(cusName,1,3) AS SUBSTR FROM customers;

SELECT INSTR(cusName,"e") AS INSTR FROM customers;

SELECT REPLACE(cusName,"B","K") AS REPLACED FROM customers;

SELECT TRIM("J" FROM cusName) AS TRIM FROM customers;

SELECT COUNT(Amount)AS Total_Count FROM payments;

SELECT MAX(Amount)AS Maximum FROM payments;

SELECT LPAD(Amount,10,"*") AS LPAD FROM payments;

SELECT RPAD(Amount,10,"*") AS RPAD FROM payments;

SELECT MIN(Amount)AS Minimum FROM payments;

SELECT AVG(Amount)AS Average FROM payments;

SELECT SUM(Amount)AS Sum FROM payments;

SELECT CONCAT(fName, " ", lName)AS Full_Name FROM employees;

