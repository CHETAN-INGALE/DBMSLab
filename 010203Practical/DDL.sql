CREATE DATABASE ACPCE;

CREATE TABLE student(
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50),
    Age int,
percentage int
);

INSERT INTO student (RollNo, Name, Age, percentage)
VALUES (1, 'Shubham','23','69'),
       (2, 'Aman ','21','25'),
       (3, 'Naveen','24','86'),
       (4, 'Aditya','21','78'),
       (5, 'Nishant. Salchichas S.A.','22','99');
       
Select * from student;

alter table student
add phonenumber bigint;

alter table student
RENAME To students;

select * from students

truncate students;
select * from students;

drop table students;
select * from students;