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
	   
START TRANSACTION;

SAVEPOINT firstSave;

INSERT INTO student (RollNo, Name, Age, percentage)
VALUES (6, 'Chetan','19','69'),
       (7, 'Sarvesh ','9','17');
	   
Select * from student;

SAVEPOINT secondSave;

INSERT INTO student (RollNo, Name, Age, percentage)
VALUES (8, 'Sneha','21','89'),
       (9, 'Sairaj','42','42');
	   
ROLLBACK TO firstSave;
Select * from student;

COMMIT;  

DROP TABLE student;