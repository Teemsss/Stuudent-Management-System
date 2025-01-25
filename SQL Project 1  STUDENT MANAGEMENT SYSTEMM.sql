-- CREATING TABLES
CREATE TABLE Students (
Student_id INT PRIMARY KEY, 
First_Name VARCHAR (50),
Last_Name VARCHAR (50), 
DOB INT, 
Email VARCHAR (50), 
Phone_Number INT
);
SELECT *
FROM Students;

CREATE TABLE Courses ( 
Course_ID INT PRIMARY KEY, 
Course_Name VARCHAR (50), 
Course_Code VARCHAR (50), 
Credits VARCHAR (50)
);
SELECT *
FROM Courses;

CREATE TABLE Enrollments (
Enrollment_ID INT PRIMARY KEY, 
Student_ID INT, 
Course_ID INT,
Enrollment_Date INT
);
SELECT *
FROM Enrollments;

CREATE TABLE Grades( 
Grade_ID INT PRIMARY KEY, 
Enrollment_ID INT, 
Grade INT
);
SELECT *
FROM Grades;

-- Alterations & Modifications
ALTER TABLE Students
ADD Address VARCHAR (50);

ALTER TABLE Courses
MODIFY COLUMN Course_Name VARCHAR (100);

ALTER TABLE Courses
MODIFY COLUMN Credits VARCHAR (50)
AFTER Course_Code;

ALTER TABLE Students
RENAME COLUMN DOB TO Date_of_Birth;

-- Data Insertion
-- Insert at least 30 students into the `students` table
INSERT INTO Students (Student_id, First_Name, Last_Name, Date_of_Birth, Email, Phone_Number, Address) VALUES
(001, "Zainab", "Mumu", 03-12-2006, "zainab989@gmail.com", 234-988-6752, "10th Avenue, Abuja"),
(002, "Fatima", "Good", 09-07-2003, "fab003@gmail.com", 234-289-1286, "5th Abiola Street, Abuja"),
(003, "Gerald", "Ojukwu", 01-01-1995, "geraldojukwu@gmail.com", 234-988-8776, "FCDA, Abuja"),
(004, "Daniel", "Hardy",  08-08-2000, "danihardy@gmail.com", 234-898-7499, "Gwarimpa, Abuja"),
(005, "Micheal" ,"Olomola", 06-10-1960,"mike444@gmail.com", 234934-2959, "Keke St, Osun"),
(006, "John", "Doe", 01-15-2000, "john.doe@gmail.com", 234-156-7890, "123 Elm St, Cityville"),
(007, "Jane", "Smith", 02-20-1999, "jane.smith@gmail.com", 234-567-8901, "456 Oak St, Townsville"),
(008, "Mike", "Johnson", 03-30-2001, "mike.j@gmail.com", 234-678-9012, "789 Pine St, Villagetown"),
(009, "Emily", "Davis", 04-10-2000, "emily.davis@gmail.com", 234-789-0123, "321 Maple St, Cityplace"),
(010, "Chris", "Brown", 05-05-1998, "chris.brown@gmail.com", 234-890-1234, "654 Cedar St, Hamlet"),
(011, "Jessica", "Wilson", 06-15-2002, "jessica.w@gmail.com", 234-901-2345, "987 Birch St, Borough"),
(012, "David", "Miller", 07-25-1997, "david.miller@gmail.com",  234-012-3456, "159 Spruce St, Citycenter"),
(013, "Sarah", "Taylor", 08-30-2001, "sarah.taylor@gmail.com", 234-123-4567, "753 Fir St, Towncenter"),
(014, "Brian", "Anderson", 09-12-1996, "brian.a@gmail.com", 234-234-5678, "852 Willow St, Cityside"),
(015, "Megan", "Thomas", 10-22-1999, "megan.thomas@gmail.com", 234-345-6789, "963 Ash St, Villageview"),
(016, "Kevin", "Jackson", 11-11-2000, "kevin.j@gmail.com", 234-456-7891, "147 Oak St, Cityview"),
(017, "Rachel", "White", 12-01-1998, "rachel.w@gmail.com", 234-567-8902, "258 Maple St, Townview"),
(018, "Laura", "Harris", 01-22-2003, "laura.harris@gmail.com", 234-678-9013, "369 Pine St, Citypark"),
(019, "Daniel", "Martin", 02-14-1995, "daniel.m@gmail.com", 234-789-0124, "147 Cedar St, Hamletown"),
(020, "Amy", "Thompson", 03-09-2002, "amy.t@gmail.com", 234-890-1235, "258 Birch St, Cityfield"),
(021, "Mark", "Garcia", 04-18-1999, "mark.garcia@gmail.com", 234-678-9011, "47 Sheep St, Newyork"),
(022, "Christopher", "Rodriguez", 09-05-1995, "chrisr@gmail.com", 234-234-5678, "357 Fir St, Abuja"),
(023, "Amanda", "Lee", 10-30-2001, "amandal@gmail.com", 234-345-6789, "468 Willow St, Abuja"),
(024, "Matthew", "Walker", 11-12-1998, "mattheww@gmail.com", 234-456-7891, "579 Chestnut St, Abuja"),
(025, "Nicole", "Hall", 12-24-2000, "nicoleh@gmail.com", 234-567-8902, "680 Ash St, Abuja"),
(026, "Olivia", "Hernandez", 02-14-2002, "oliviah@gmail.com", 234-789-0124, "802 Oak St, Abuja"),
(027, "Benjamin", "Scott", 05-18-1998, "benjamins@gmail.com", 234-012-3457, "135 Cedar St, Abuja"),
(028, "Sophia", "Wright", 04-07-1997, "sophiaw@gmail.com", 234-901-2346, "024 Birch St, Abuja"),
(029, "Anthony", "King", 03-22-1996, "anthonyk@gmail.com", 234-890-1235, "913 Pine St, Abuja" ),
(030, "Jessica", "Martin", 08-18-1996, "jessicam@gmail.com", 234-123-4567, "246 Birch St, Abuja");

-- Insert at least 10 courses into the `courses` table
INSERT INTO Courses (Course_ID, Course_Name, Course_Code, Credits) VALUES
(001, "Introduction to Accounting", "ECO101", "A1"),
(002, "Psychology", "PSY304", "A1"),
(003, "Introduction to Philosophy", "PHI101", "C4"),
(004, "Criminal Law", "LAW302", "B2"),
(005, "Sociology", "S06", "D7"),
(006, "Literature-in-English", "LIT306", "B3"),
(007, "Commercial Law", "LAW305", "A1"),
(008, "Use of Library", "LIB105", "B3"),
(009, "Mathematics", "MAT201", "C6"),
(010, "Physics", "PHY403", "B2");

-- Insert at least 12 records into the `enrollments` table, ensuring that some students are enrolled in multiple courses
INSERT INTO Enrollments (Enrollment_ID, Student_ID, Course_ID, Enrollment_Date) VALUES
(131, 001, 007, 05-03-2020),
(103, 005, 004, 09-10-2019),
(106, 012, 010, 09-10-2019),
(101, 001, 010, 08-10-2019),
(110, 030, 001, 02-02-2016),
(102, 028, 002, 03-04-2016),
(109, 025, 005, 11-05-2017),
(112, 025, 003, 06-03-2015),
(104, 025, 006, 06-03-2015),
(107, 015, 006, 06-03-2015),
(111, 111, 009, 05-03-2020),
(108, 013, 008, 10-17-2021);

-- Insert grades for each enrollment in the `grades` table
INSERT INTO Grades (Grade_ID, Enrollment_ID, Grade) VALUES
(111, 131, 100),
(112, 111, 90),
(113, 013, 75),
(114, 015, 55),
(115, 007, 25),
(116, 012, 30),
(117, 025, 60),
(118, 028, 100),
(119, 030, 80),
(110, 026, 85);

 -- Complex Queries
 -- Write a query to retrieve the full names and courses for all students
SELECT CONCAT (S.First_Name, " ",S.Last_Name) AS Full_Name, C.Course_Name
FROM Students AS S
INNER JOIN Enrollments AS E
ON S.Student_ID = E.Student_ID
INNER JOIN Courses AS C
ON E.Course_ID = C.Course_ID;

-- Write a query to find all students who have not yet been assigned a grade
SELECT CONCAT (S.First_Name, " ",S.Last_Name) AS Full_Name, G.Grade
FROM Students AS S
INNER JOIN Enrollments AS E
ON S.Student_ID = E.Student_ID
LEFT JOIN Grades AS G
ON E.Enrollment_ID = G.Enrollment_ID
WHERE G.Grade IS NULL;

-- Write a query that returns the average grade for each course
SELECT C.Course_Name, AVG (G.Grade) AS Average_Grade
FROM Courses AS C
INNER JOIN Enrollments AS E
ON C.Course_ID = E.Course_ID
LEFT JOIN Grades AS G
ON E.Enrollment_ID = G.Enrollment_ID
GROUP BY C.Course_Name;

-- Create a `CASE` statement to assign letter grades (A, B, C, D, F) based on numerical grades
SELECT Enrollment_ID, Grade,
CASE 
WHEN Grade >= 85 THEN 'A'
WHEN Grade >= 75 THEN 'B'
WHEN Grade >= 59 THEN 'C'
WHEN Grade >= 55 THEN 'D'
ELSE 'F'
END AS Letter_Grade
FROM Grades;

-- Use subqueries to find students with the highest grades in each course
SELECT C.Course_Name, S.Student_Name, G.Grade
FROM Courses AS C
INNER JOIN Enrollments AS E
ON C.Course_ID = E.Course_ID
INNER JOIN Student AS S
ON E.Student_ID = S.Student_ID
LEFT JOIN Grades AS G
ON E.Enrollment_ID = G.Enrollment_ID
WHERE G.Grades = (SELECT MAX(G.Grades)
FROM Grades
INNER JOIN Enrollments
ON G.Enrollment_ID = E.Enrollment_ID
WHERE E.Course_ID = C.Course_ID);

-- Write a CTE to list all students with their course names and grades
WITH Student_List AS (
SELECT CONCAT (S.First_Name, " ",S.Last_Name) AS Full_Name, S.Student_ID, C.Course_Name, G.Grade
FROM Students AS S 
JOIN Enrollments AS E
ON S.Student_ID = E.Student_ID
JOIN Courses AS C
ON E.Course_ID = C.Course_ID
LEFT JOIN Grades AS G
ON E.Enrollment_ID = G.Enrollment_ID
)
SELECT Full_Name, Student_ID, Course_Name, Grade
FROM Student_List;

-- Write a CTE to find students who have taken more than 2 courses
WITH StudentCourse_List AS (
SELECT CONCAT (S.First_Name, " ",S.Last_Name) AS Full_Name, S.Student_ID, COUNT(E.Course_ID) AS Course_Count
FROM Students AS S
INNER JOIN Enrollments AS E
ON S.Student_ID = E.Student_ID 
GROUP BY S.Student_ID
)
SELECT Full_Name, Student_ID, Course_Count
FROM StudentCourse_List
WHERE Course_Count >2;

-- Write a query to count the number of students enrolled in each course
SELECT C.Course_Name, COUNT(E.Student_ID) AS Enrolled_Students
FROM Courses AS C
LEFT JOIN Enrollments AS E
ON C.Course_ID = E.Course_ID
GROUP BY C.Course_ID;

--  Additional Tasks:
-- Write a query to count the number of students enrolled in each course
SELECT C.Course_Name, COUNT(E.Student_ID) AS Enrolled_Students
FROM Courses AS C
INNER JOIN Enrollments AS E 
ON C.Course_ID = E.Course_ID
GROUP BY C.Course_Name;

-- Create a report showing the total number of students, courses, and enrollments
SELECT
(SELECT COUNT(*) FROM Students) AS Total_Students,
(SELECT COUNT(*) FROM Courses) AS Total_Courses,
(SELECT COUNT(*) FROM Enrollments) AS Total_Enrollments;

-- Use a JOIN to retrieve the names of students and the courses they are not enrolled in
SELECT S.First_Name, S.Last_Name, C.Course_Name
FROM Students AS S
CROSS JOIN Courses AS C
LEFT JOIN Enrollments AS E
ON S.Student_ID = E.Student_ID AND C.Course_ID = E.Course_ID
WHERE E.Enrollment_ID IS NULL;

-- Write a query to find students who share the same last name
SELECT S1.Student_ID, S1.First_Name, S1.Last_Name
FROM Students AS S1
INNER JOIN (SELECT Last_Name FROM Students GROUP BY Last_Name HAVING COUNT(*) > 1) S2 ON S1.Last_Name = S2.Last_name ORDER BY S1.Last_Name, S1.First_Name;

-- Create a new table named dropped_courses with the same structure as enrollments, then move all enrollments where the grade is "F" to this table
CREATE TABLE Dropped_Courses (
Enrollment_ID INT PRIMARY KEY,
Student_ID INT,
Course_ID INT,
Enrollment_Date DATE
);
SELECT *
FROM Dropped_Courses;


-- Delete all records from the grades table where the grade is below 50 and record the number of rows deleted
DELETE FROM Grades
WHERE grade < 50;

SELECT ROW_COUNT() AS Deleted_Rows;

SELECT *
FROM Grade