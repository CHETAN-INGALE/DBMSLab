CREATE TABLE student(
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT CHECK (Age >= 0),
    Percentage INT CHECK (Percentage >= 0 AND Percentage <= 100)
);

INSERT INTO student (RollNo, Name, Age, percentage)
VALUES (1, 'Shubham','23','69'),
       (2, 'Aman','21','25'),
       (3, 'Naveen','24','86'),
       (4, 'Aditya','21','78'),
       (5, 'Nishant','22','99');

Select * from student;

CREATE VIEW student_rollno_name AS
SELECT RollNo, Name
FROM student;

SELECT * FROM student_rollno_name;
