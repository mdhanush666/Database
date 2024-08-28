CREATE TABLE transaction(
	transID INT AUTO_INCREMENT PRIMARY KEY,
    transAmount DECIMAL(4,2),
    transTime DATETIME
    #transTime DATETIME DEFAULT NOW()
);

ALTER TABLE transaction MODIFY COLUMN transTime DATETIME DEFAULT NOW();

SELECT * FROM transaction;

DROP TABLE transaction;

INSERT INTO transaction (transAmount)VALUES
(50.50);