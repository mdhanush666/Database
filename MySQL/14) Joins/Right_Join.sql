
SELECT A.StuID,A.StuName,B.SubID,B.SubName,B.StuID 
FROM Students A 
RIGHT JOIN Subjects B 
ON A.StuID = B.StuID;