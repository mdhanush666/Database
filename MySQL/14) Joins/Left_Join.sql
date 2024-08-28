CREATE DATABASE ex_Joins;
USE ex_Joins;

CREATE TABLE Students
(
	StuID VARCHAR(4) PRIMARY KEY,
    StuName VARCHAR(30)    
);

CREATE TABLE Subjects
(
	SubID VARCHAR(4) PRIMARY KEY,
    SubName VARCHAR(30),
    StuID VARCHAR(4),
    FOREIGN KEY (StuID) REFERENCES Students(StuID)
);

INSERT INTO Students (StuID,StuName) VALUES
("S001","Tom"),
("S002","Jerry"),
("S003","Ben"),
("S004","Ben");

INSERT INTO Subjects(SubID,SubName,StuID) VALUES
("Sub1","ICT","S001"),
("Sub2","English","S002"),
("Sub3","Mathematics","S003"),
("Sub4","Tamil",null);

SELECT * FROM Students;
SELECT * FROM Subjects;

SELECT A.StuID,A.StuName,B.SubID,B.SubName,B.StuID FROM Students A LEFT JOIN Subjects B 
ON A.StuID = B.StuID;














