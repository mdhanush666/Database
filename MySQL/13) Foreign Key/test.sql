USE new_mydb;
# Parent...
CREATE TABLE customers (
	cusID INT PRIMARY KEY AUTO_INCREMENT,
    cusName VARCHAR(30)
);

INSERT INTO customers (cusName) VALUES
("Tom"),
("JERRY"),
("BEN 10"),
("kamal");

SELECT * FROM customers;

# Child
CREATE TABLE payments(
	payID INT PRIMARY KEY AUTO_INCREMENT,
    Amount DECIMAL(5,2) DEFAULT 0,
    cusID INT
    #FOREIGN KEY (cusID) REFERENCES customers(cusID)
);

ALTER TABLE payments AUTO_INCREMENT = 1000;

DELETE FROM payments;

# ALTER TABLE payments DROP FOREIGN KEY payments_ibfk_1;

ALTER TABLE payments ADD CONSTRAINT fk_payment_cusID 
FOREIGN KEY (cusID) REFERENCES customers(cusID);

INSERT INTO payments (Amount,cusID) VALUES 
(50.85,1),
(20.75,3),
(80.85,2),
(NULL,null);

SELECT * FROM payments;






