

SQL Project.1 University DataBase Management System



TASK-1

USE sonu;
CREATE TABLE college (
    College_id INT PRIMARY KEY,
    College_Name NVARCHAR(255),
    College_Area NVARCHAR(255)
);

select*
from college
drop table college

USE sonu;
CREATE TABLE Department (
    Department_id INT PRIMARY KEY,
    Department_Name NVARCHAR(255),
    Department_Facility NVARCHAR(255)
);


select* From Department
drop table Department

USE sonu;
CREATE TABLE Professor (
    Professor_id INT PRIMARY KEY,
    Professor_Name NVARCHAR(255),
    Professor_subject NVARCHAR(255)
);


select* From Professor
drop table Professor

USE sonu;
CREATE TABLE Student (
    Student_id INT PRIMARY KEY,
    Student_Name NVARCHAR(255),
    Student_stream NVARCHAR(255)
);

select* from Student

INSERT INTO college (College_id, College_Name, College_Area)
VALUES
    (1, 'Harvard University', 'Cambridge, MA'),
    (2, 'Stanford University', 'Palo Alto, CA'),
    (3, 'MIT', 'Cambridge, MA'),
    (4, 'University of California, Berkeley', 'Berkeley, CA'),
    (5, 'Princeton University', 'Princeton, NJ'),
    (6, 'Yale University', 'New Haven, CT'),
    (7, 'University of Texas at Austin', 'Austin, TX'),
    (8, 'Columbia University', 'New York, NY'),
    (9, 'University of Chicago', 'Chicago, IL'),
    (10, 'University of Washington', 'Seattle, WA');

	select* from college
	drop table college


	INSERT INTO Department (Department_id, Department_Name, Department_Facility)
VALUES
    (1, 'Computer Science', 'Walter Hall'),
    (2, 'Physics', 'Einstein Building'),
    (3, 'Biology', 'Darwin Lab'),
    (4, 'Chemistry', 'Curie Hall'),
    (5, 'Mathematics', 'Newton Hall'),
    (6, 'History', 'Hamilton Building'),
    (7, 'Economics', 'Smith Hall'),
    (8, 'Psychology', 'Freud Lab'),
    (9, 'Literature', 'Shakespeare Building'),
    (10, 'Engineering', 'Edison Hall');

	select* from Department

	INSERT INTO Professor (Professor_id, Professor_Name, Professor_Subject)
VALUES
    (1, 'Dr. Smith', 'Computer Science'),
    (2, 'Dr. Johnson', 'Physics'),
    (3, 'Dr. Brown', 'Biology'),
    (4, 'Dr. Davis', 'Chemistry'),
    (5, 'Dr. Wilson', 'Mathematics'),
    (6, 'Dr. Clark', 'History'),
    (7, 'Dr. Lewis', 'Economics'),
    (8, 'Dr. White', 'Psychology'),
    (9, 'Dr. Hall', 'Literature'),
    (10, 'Dr. Moore', 'Engineering');

	select* from Professor

	INSERT INTO Student (Student_ID, Student_Name, Student_Stream)
VALUES
    (1, 'Alice Johnson', 'Computer Science'),
    (2, 'Bob Smith', 'Physics'),
    (3, 'Charlie Brown', 'Biology'),
    (4, 'David Davis', 'Chemistry'),
    (5, 'Eve Wilson', 'Mathematics'),
    (6, 'Frank Clark', 'History'),
    (7, 'Grace Lewis', 'Economics'),
    (8, 'Helen White', 'Psychology'),
    (9, 'Ian Hall', 'Literature'),
    (10, 'Julia Moore', 'Engineering');

	select* from Student

	TASk-2 


1) 	SELECT College_ID, College_Name
FROM College;

2) SELECT TOP 5 *
FROM Student;

3) SELECT Professor_Name
FROM Professor
WHERE Professor_ID = 5;

4) SELECT UPPER(Professor_Name) AS Uppercase_Name
FROM Professor

5) SELECT Student_Name
FROM Student
WHERE Student_Name LIKE 'A%';

6) SELECT College_Name
FROM College
WHERE College_Name LIKE '%a';

7) ALTER TABLE Professor
ADD Salary DECIMAL(10, 2);

select* from Professor

8) ALTER TABLE Student
ADD Contact VARCHAR(255);

select* from Student

9) SELECT SUM(Salary) AS Total_Salary
FROM Professor;

10) ALTER TABLE College
ALTER COLUMN College_Area TEXT;

select* from College



TASK-3

1) 	SELECT TOP 5 *
FROM Student
UNION ALL


SELECT TOP 5 *
FROM Professor;


2) SELECT 
    college.College_id,
    college.College_Name,
    college.College_Area,
    Department.Dept_Name,
    Professor.Professor_Name,
    Student.Student_Name,
    Student.Student_Stream
FROM College
INNER JOIN Department ON college.College_id = Department.College_id
INNER JOIN Professor ON Department.Dept_id = Professor.Dept_id
INNER JOIN Student ON College.College_id = Student.College_id;


3) SELECT *
FROM Department
WHERE Department_Name IS NULL;

SELECT *
FROM Professor
WHERE Professor_Name IS NULL;

4) CREATE VIEW CollegeStartsWithC AS
SELECT *
FROM College
WHERE College_Name LIKE 'C%';

5) CREATE PROCEDURE GetProfessorByID
    @InputProfessorID INT
AS
BEGIN
    SELECT *
    FROM Professor_Table
    WHERE Professor_ID = @InputProfessorID;
END;

6) EXEC sp_rename 'College', 'College_Tables_Data';



