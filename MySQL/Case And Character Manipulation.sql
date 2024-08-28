USE studb;
SHOW TABLES;
SELECT * FROM student_details;

SELECT Name FROM student_details;

SELECT LOWER(Name) FROM student_details;
SELECT UPPER(Name) FROM student_details;


SELECT CONCAT(ID, " ", Name) FROM student_details;
SELECT SUBSTR(Name,1,5) FROM student_details;
SELECT LENGTH(Name) FROM student_details;
SELECT INSTR(Name,'u') FROM student_details;
SELECT LPAD(Name,10,'*') FROM student_details;
SELECT RPAD(Name,10,'*') FROM student_details;
SELECT TRIM('D' FROM Name) FROM student_details;
SELECT REPLACE(Name,'D','T' ) FROM student_details;











