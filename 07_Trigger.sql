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
 
CREATE OR REPLACE FUNCTION student_audit_trigger()
RETURNS TRIGGER AS
$$
BEGIN
    -- Your trigger logic here
    -- For demonstration purposes, let's print a message
    RAISE NOTICE 'Student record modified: %', NEW.Name;
    RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER student_after_insert_trigger
AFTER INSERT ON student
FOR EACH ROW
EXECUTE FUNCTION student_audit_trigger();


INSERT INTO student (RollNo, Name, Age, percentage)
VALUES (6, 'Alice', 20, 92);