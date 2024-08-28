USE new_mydb;

CREATE TABLE test(
	cDate DATE,
    cTime TIME,
    cDateTime DATETIME
);

INSERT INTO test(cDate,cTime,cDateTime)VALUES
(CURRENT_DATE(),CURRENT_TIME(),NOW());

SELECT * FROM test;
