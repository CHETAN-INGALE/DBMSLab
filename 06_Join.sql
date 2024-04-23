CREATE TABLE student(
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT CHECK (Age >= 0)
);

CREATE TABLE marks(
    RollNo INT PRIMARY KEY,
    Percentage INT CHECK (Percentage >= 0 AND Percentage <= 100)
);

SELECT s.RollNo, s.Name, m.Percentage
FROM student s
INNER JOIN marks m ON s.RollNo = m.RollNo;


SELECT s.RollNo, s.Name, m.Percentage
FROM student s
LEFT JOIN marks m ON s.RollNo = m.RollNo;


SELECT s.RollNo, s.Name, m.Percentage
FROM student s
RIGHT JOIN marks m ON s.RollNo = m.RollNo;


SELECT s.RollNo, s.Name, m.Percentage
FROM student s
LEFT JOIN marks m ON s.RollNo = m.RollNo
UNION
SELECT s.RollNo, s.Name, m.Percentage
FROM student s
RIGHT JOIN marks m ON s.RollNo = m.RollNo;
