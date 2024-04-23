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


SELECT * FROM student
WHERE percentage BETWEEN 20 AND 70;


SELECT * FROM student
WHERE name LIKE 'A%';


UPDATE student
SET percentage = 55
WHERE RollNo = 4


SELECT * FROM student
WHERE name LIKE 'A%';


SELECT * FROM student
WHERE percentage >= 69;


alter table student
rename column RollNo to RN;


delete from student where RollNo = 3;


ALTER TABLE student DROP Age;
Select * from student;


TRUNCATE TABLE Student;
Select * from student;


DROP TABLE student;