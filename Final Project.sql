CREATE DATABASE FINAL_PROJECT;

USE fINAL_PROJECT;

--=====================
--1.STUDENTS TABLE
--=====================

CREATE TABLE Students (
    StudentID      INT PRIMARY KEY AUTO_INCREMENT,
    FirstName      VARCHAR(50) NOT NULL,
    LastName       VARCHAR(50) NOT NULL,
    Email          VARCHAR(100) UNIQUE NOT NULL,
    BirthDate      DATE NOT NULL,
    EnrollmentDate DATE NOT NULL
);



--=====================
--2.COURSES TABLE
--=====================

CREATE TABLE Courses (
    CourseID     INT PRIMARY KEY AUTO_INCREMENT,
    CourseName   VARCHAR(100) NOT NULL,
    DepartmentID INT,
    Credits      INT NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);



--=====================
--3.INSTRUCTORES TABLE
--=====================

CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName    VARCHAR(50) NOT NULL,
    LastName     VARCHAR(50) NOT NULL,
    Email        VARCHAR(100) UNIQUE NOT NULL,
    DepartmentID INT,
    Salary       DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

--=====================
--4.ENROLLMENTS TABLE
--=====================

CREATE TABLE Enrollments (
    EnrollmentID   INT PRIMARY KEY AUTO_INCREMENT,
    StudentID      INT,
    CourseID       INT,
    EnrollmentDate DATE NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);


--=====================
--5.DEPARTMENTS TABLE
--=====================

CREATE TABLE Departments (
    DepartmentID   INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(100) NOT NULL
);

-- INSERT INTO STUDENTS

INSERT INTO Students (StudentID, FirstName, LastName, Email, BirthDate, EnrollmentDate) VALUES
(1,  'John',    'Doe',     'john.doe@email.com',     '2000-01-15', '2022-08-01'),
(2,  'Jane',    'Smith',   'jane.smith@email.com',   '1999-05-25', '2021-08-01'),
(3,  'Mike',    'Brown',   'mike.brown@email.com',   '2001-03-10', '2023-01-15'),
(4,  'Lisa',    'Davis',   'lisa.davis@email.com',   '2000-11-22', '2022-09-01'),
(5,  'Tom',     'Wilson',  'tom.wilson@email.com',   '1999-07-30', '2020-08-01'),
(6,  'Anna',    'Taylor',  'anna.taylor@email.com',  '2002-02-14', '2023-08-01'),
(7,  'Chris',   'Evans',   'chris.evans@email.com',  '2000-06-18', '2021-01-15'),
(8,  'Sara',    'Miller',  'sara.miller@email.com',  '2001-09-05', '2022-08-01'),
(9,  'Kevin',   'Lee',     'kevin.lee@email.com',    '1998-12-01', '2019-08-01'),
(10, 'Emma',    'Clark',   'emma.clark@email.com',   '2002-04-27', '2023-09-01'),
(11, 'Ryan',    'Hall',    'ryan.hall@email.com',    '2000-10-09', '2022-01-15'),
(12, 'Olivia',  'King',    'olivia.king@email.com',  '2001-01-20', '2021-09-01'),
(13, 'Daniel',  'Young',   'daniel.young@email.com', '1999-08-14', '2020-01-15'),
(14, 'Sophia',  'Wright',  'sophia.wright@email.com','2002-05-03', '2023-08-01'),
(15, 'Matthew', 'Hill',    'matthew.hill@email.com', '2000-03-25', '2022-08-01');



-- INSERT INTO COURSES

INSERT INTO Courses (CourseID, CourseName, DepartmentID, Credits) VALUES
(101, 'Introduction to SQL',   1,  3),
(102, 'Data Structures',       2,  4),
(103, 'Database Systems',      1,  4),
(104, 'Algorithms',            1,  4),
(105, 'Calculus I',            2,  3),
(106, 'Linear Algebra',        2,  3),
(107, 'Physics I',             3,  4),
(108, 'Organic Chemistry',     4,  4),
(109, 'Genetics',              5,  3),
(110, 'English Literature',    6,  3),
(111, 'World History',         7,  3),
(112, 'Microeconomics',        8,  3),
(113, 'Intro to Psychology',   9,  3),
(114, 'Sociology 101',         10, 3),
(115, 'Business Management',   12, 3);

--INSERT INTO INSTRUCTORS

INSERT INTO Instructors (InstructorID, FirstName, LastName, Email, DepartmentID, Salary) VALUES
(1,  'Alice',  'Johnson', 'alice.johnson@univ.com', 1,  75000.00),
(2,  'Bob',    'Lee',     'bob.lee@univ.com',       2,  68000.00),
(3,  'Carol',  'White',   'carol.white@univ.com',   1,  82000.00),
(4,  'David',  'Kim',     'david.kim@univ.com',     3,  71000.00),
(5,  'Eva',    'Green',   'eva.green@univ.com',     4,  69000.00),
(6,  'Frank',  'Moore',   'frank.moore@univ.com',   5,  73000.00),
(7,  'Grace',  'Turner',  'grace.turner@univ.com',  6,  65000.00),
(8,  'Henry',  'Adams',   'henry.adams@univ.com',   7,  66000.00),
(9,  'Irene',  'Scott',   'irene.scott@univ.com',   8,  70000.00),
(10, 'Jack',   'Wilson',  'jack.wilson@univ.com',   9,  67000.00),
(11, 'Karen',  'Hall',    'karen.hall@univ.com',    10, 64000.00),
(12, 'Leo',    'Martin',  'leo.martin@univ.com',    11, 72000.00),
(13, 'Mona',   'Clark',   'mona.clark@univ.com',    12, 74000.00),
(14, 'Nina',   'Patel',   'nina.patel@univ.com',    13, 63000.00),
(15, 'Oscar',  'Reed',    'oscar.reed@univ.com',    1,  90000.00);


--INSERT INTO ENROLLMENTS

INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, EnrollmentDate) VALUES
(1,  1,  101, '2022-08-01'),
(2,  2,  101, '2021-08-01'),
(3,  3,  101, '2023-01-15'),
(4,  4,  101, '2022-09-01'),
(5,  5,  101, '2020-08-01'),
(6,  6,  101, '2023-08-01'),
(7,  7,  101, '2021-01-15'),
(8,  8,  101, '2022-08-01'),
(9,  9,  101, '2019-08-01'),
(10, 10, 101, '2023-09-01'),
(11, 11, 101, '2022-01-15'),
(12, 1,  102, '2022-08-01'),
(13, 2,  102, '2021-08-01'),
(14, 3,  102, '2023-01-15'),
(15, 4,  102, '2022-09-01');



--INSERT INTO DEPARTMENTS

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1,  'Computer Science'),
(2,  'Mathematics'),
(3,  'Physics'),
(4,  'Chemistry'),
(5,  'Biology'),
(6,  'English'),
(7,  'History'),
(8,  'Economics'),
(9,  'Psychology'),
(10, 'Sociology'),
(11, 'Engineering'),
(12, 'Business'),
(13, 'Art'),
(14, 'Music'),
(15, 'Philosophy');

--==========================
-- OPERETIONS
--==========================

--------------------
--1.CURD OPERETIONS
--------------------

--1.STUDENTS

SELECT * FROM Students;

SELECT * FROM Students LIMIT 5;

UPDATE Students SET Email = 'doe222@newmail.com' WHERE StudentID  = 1 ;

SELECT * FROM Students WHERE FirstName= 'Sophia';

--2.COURSES

SELECT * FROM Courses;

SELECT * FROM Courses LIMIT 5;

UPDATE Courses SET CourseName = 'MATHS' WHERE CourseID  = 104 ;

SELECT * FROM Courses WHERE CourseName= 'Genetics';

--3.INSTRUCTORES

SELECT * FROM Instructors;

SELECT * FROM Instructors LIMIT 5;

UPDATE Instructors SET Salary  = 100000 WHERE InstructorID  = 10;

SELECT * FROM Instructors WHERE InstructorID  = 10;

--4.ENROLLMENTS

SELECT * FROM Enrollments;

SELECT * FROM Enrollments LIMIT 5;

UPDATE Enrollments SET EnrollmentDate = '2022-10-01' WHERE EnrollmentID  = 1;

SELECT * FROM Enrollments WHERE EnrollmentID  = 10;

--5.DEPARTMENTS

SELECT * FROM Departments;

SELECT * FROM Departments LIMIT 5;

UPDATE Departments SET DepartmentName = 'MATHS' WHERE DepartmentID  = 5;

SELECT * FROM Departments WHERE DepartmentID  = 15;


------------------------------------------------------------
--2. Retrieve students who enrolled after 2022
------------------------------------------------------------

SELECT * FROM Students WHERE EnrollmentDate > '2022-12-31';


----------------------------------------------------------------
--3. Retrieve courses offered by the Mathematics department
----------------------------------------------------------------

SELECT c.CourseID, c.CourseName, c.Credits
FROM Courses c
JOIN Departments d 
ON c.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Mathematics';

--------------------------------------------------
--4. Number of students enrolled in each course
--------------------------------------------------

SELECT c.CourseID, c.CourseName, COUNT(e.StudentID) AS NumStudents
FROM Courses c
JOIN Enrollments e ON c.CourseID = e.CourseID
GROUP BY c.CourseID, c.CourseName
HAVING COUNT(e.StudentID) > 2;

----------------------------------------------------------------------------
--5. Students enrolled in BOTH "Introduction to SQL" AND "Data Structures"
----------------------------------------------------------------------------

SELECT s.StudentID, s.FirstName, s.LastName
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
WHERE c.CourseName IN ('Introduction to SQL', 'Data Structures')
GROUP BY s.StudentID, s.FirstName, s.LastName

-----------------------------------------------------------------------------
--6. Students enrolled in EITHER "Introduction to SQL" OR "Data Structures"
-----------------------------------------------------------------------------

SELECT s.StudentID, s.FirstName, s.LastName
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
WHERE c.CourseName IN ('Introduction to SQL', 'Data Structures');

------------------------------------------------------------
--7. Average number of credits for all courses
------------------------------------------------------------

SELECT AVG(Credits) AS AvgCredits FROM Courses;

------------------------------------------------------------------------
--8. Maximum salary of instructors in the Computer Science department
-----------------------------------------------------------------------

SELECT MAX(i.Salary) AS MaxSalary
FROM Instructors i
JOIN Departments d ON i.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Computer Science';

------------------------------------------------------------
--9. Number of students enrolled in each department
------------------------------------------------------------

SELECT d.DepartmentName, COUNT(e.StudentID) AS NumStudents
FROM Departments d
JOIN Courses c ON d.DepartmentID = c.DepartmentID
JOIN Enrollments e ON c.CourseID = e.CourseID
GROUP BY d.DepartmentName;

------------------------------------------------------------
--10. INNER JOIN: students and their corresponding courses
------------------------------------------------------------

SELECT s.StudentID, s.FirstName, s.LastName, c.CourseName
FROM Students s
INNER JOIN Enrollments e ON s.StudentID = e.StudentID
INNER JOIN Courses c ON e.CourseID = c.CourseID;

---------------------------------------------------------------------
--11. LEFT JOIN: all students and their corresponding courses, if any
---------------------------------------------------------------------

SELECT s.StudentID, s.FirstName, s.LastName, c.CourseName
FROM Students s
LEFT JOIN Enrollments e ON s.StudentID = e.StudentID
LEFT JOIN Courses c ON e.CourseID = c.CourseID;

-----------------------------------------------------------------------------
--12. Subquery: students enrolled in courses that have more than 10 students
-----------------------------------------------------------------------------

SELECT s.StudentID, s.FirstName, s.LastName
FROM Students s
WHERE s.StudentID IN (
    SELECT e.StudentID
    FROM Enrollments e
    WHERE e.CourseID IN (
        SELECT CourseID
        FROM Enrollments
        GROUP BY CourseID
        HAVING COUNT(StudentID) > 10
    )
);

-----------------------------------------------------------
--13. Extract the year from the EnrollmentDate of students
-----------------------------------------------------------

SELECT StudentID, FirstName, LastName, YEAR(EnrollmentDate) AS EnrollmentYear FROM Students;

-------------------------------------------------------
--14. Concatenate the instructor's first and last name
-------------------------------------------------------

SELECT InstructorID, CONCAT(FirstName, ' ', LastName) AS FullName FROM Instructors;

----------------------------------------------------
--15. Running total of students enrolled in courses 
----------------------------------------------------

SELECT
    e.EnrollmentID,
    e.CourseID,
    e.StudentID,
    e.EnrollmentDate,
    COUNT(*) OVER (ORDER BY e.EnrollmentDate, e.EnrollmentID) AS RunningTotalEnrollments
FROM Enrollments e
ORDER BY e.EnrollmentDate, e.EnrollmentID;

------------------------------------------------------------------------
--16. Label students as 'Senior' or 'Junior' based on year of enrollment
------------------------------------------------------------------------
SELECT
    StudentID,
    FirstName,
    LastName,
    EnrollmentDate,
    CASE
        WHEN TIMESTAMPDIFF(YEAR, EnrollmentDate, CURDATE()) > 4 THEN 'Senior'
        ELSE 'Junior'
    END AS StudentStanding
FROM Students;