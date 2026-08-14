-- =========================================================
-- PROJECT: Student Performance & Attendance Tracker
-- =========================================================


CREATE DATABASE Student_Tracker;
USE Student_Tracker;

-- =========================================================
-- # CREATE TABLES
-- =========================================================


-- -------------------------
--1. Students Table
-- -------------------------

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dob DATE,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(200),
    admission_date DATE,
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);


-- -------------------------
--2. Faculty Table
-- -------------------------

CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone_number VARCHAR(15),
    department_id INT,
    hire_date DATE,
    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);


-- -------------------------
--3. Departments Table
-- -------------------------

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);


-- -------------------------
--4. Courses Table
-- -------------------------

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    faculty_id INT,
    FOREIGN KEY (faculty_id)
        REFERENCES Faculty(faculty_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);


-- -------------------------
--5. Enrollments Table
-- -------------------------

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id)
        REFERENCES Students(student_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (course_id)
        REFERENCES Courses(course_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


-- -------------------------
--6. Attendance Table
-- -------------------------

CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    attendance_date DATE,
    status ENUM('Present', 'Absent', 'Late'),
    FOREIGN KEY (student_id)
        REFERENCES Students(student_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (course_id)
        REFERENCES Courses(course_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


-- -------------------------
--7. Grades Table
-- -------------------------

CREATE TABLE Grades (
    grade_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks_obtained DECIMAL(5,2),
    FOREIGN KEY (student_id)
        REFERENCES Students(student_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (course_id)
        REFERENCES Courses(course_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- =========================================================
-- # INSERT DATA
-- =========================================================

-- -------------------------
--1. Students
-- -------------------------

INSERT INTO Students VALUES
(101, 'Aarav Patel', '2005-05-12', 'Male',
 'aarav@gmail.com', '9876543210', 'Surat',
 '2023-07-15', 1),

(102, 'Krina Ghori', '2005-08-20', 'Female',
 'krina@gmail.com', '9876543211', 'Surat',
 '2023-07-15', 1),

(103, 'Riya Shah', '2004-11-10', 'Female',
 'riya@gmail.com', '9876543212', 'Ahmedabad',
 '2022-07-20', 2),

(104, 'Dev Mehta', '2005-02-18', 'Male',
 'dev@gmail.com', '9876543213', 'Vadodara',
 '2023-07-15', 1),

(105, 'Neha Joshi', '2004-09-25', 'Female',
 'neha@gmail.com', '9876543214', 'Rajkot',
 '2022-07-20', 2),

(106, 'Rahul Desai', '2005-01-30', 'Male',
 'rahul@gmail.com', '9876543215', 'Surat',
 '2023-07-15', 3),

(107, 'Priya Patel', '2005-06-14', 'Female',
 'priya@gmail.com', '9876543216', 'Bharuch',
 '2023-07-15', 1),

(108, 'Karan Shah', '2004-12-05', 'Male',
 'karan@gmail.com', '9876543217', 'Surat',
 '2022-07-20', 2),

(109, 'Meera Dave', '2005-03-22', 'Female',
 'meera@gmail.com', '9876543218', 'Navsari',
 '2023-07-15', 3),

(110, 'Yash Patel', '2004-07-11', 'Male',
 'yash@gmail.com', '9876543219', 'Surat',
 '2022-07-20', 1);



 -- -------------------------
--2. Faculty
-- -------------------------

INSERT INTO Faculty VALUES
(201, 'Dr. Amit Shah', 'amit@college.com',
 '9988776601', 1, '2018-06-15'),

(202, 'Prof. Neha Patel', 'neha@college.com',
 '9988776602', 2, '2019-07-10'),

(203, 'Dr. Raj Mehta', 'raj@college.com',
 '9988776603', 3, '2017-08-20'),

(204, 'Prof. Kunal Desai', 'kunal@college.com',
 '9988776604', 4, '2024-01-15'),

(205, 'Dr. Pooja Shah', 'pooja@college.com',
 '9988776605', 5, '2020-05-10'),

(206, 'Prof. Rohan Patel', 'rohan@college.com',
 '9988776606', 1, '2025-01-10');


-- -------------------------
--3. Departments
-- -------------------------

INSERT INTO Departments VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Electronics'),
(4, 'Mechanical'),
(5, 'Civil');


-- -------------------------
--4. Courses
-- -------------------------
INSERT INTO Courses VALUES
(301, 'Database Management System', 201),
(302, 'Data Structures', 201),
(303, 'Web Development', 202),
(304, 'Computer Networks', 202),
(305, 'Digital Electronics', 203),
(306, 'Operating System', 201),
(307, 'Engineering Mechanics', 204),
(308, 'Environmental Engineering', NULL);


-- -------------------------
--5. Enrollments
-- -------------------------
INSERT INTO Enrollments VALUES
(1, 101, 301, '2023-07-20'),
(2, 101, 302, '2023-07-20'),
(3, 101, 306, '2023-07-20'),
(4, 102, 301, '2023-07-20'),
(5, 102, 302, '2023-07-20'),
(6, 102, 303, '2023-07-20'),
(7, 103, 303, '2023-07-20'),
(8, 103, 304, '2023-07-20'),
(9, 104, 301, '2023-07-20'),
(10, 104, 302, '2023-07-20'),
(11, 105, 303, '2023-07-20'),
(12, 105, 304, '2023-07-20'),
(13, 106, 305, '2023-07-20'),
(14, 107, 301, '2023-07-20'),
(15, 107, 306, '2023-07-20'),
(16, 108, 303, '2023-07-20'),
(17, 109, 305, '2023-07-20'),
(18, 110, 301, '2023-07-20'),
(19, 110, 302, '2023-07-20');


-- -------------------------
--6. Attendance
-- -------------------------

INSERT INTO Attendance VALUES
(1,101,301,'2026-01-05','Present'),
(2,101,301,'2026-01-06','Present'),
(3,101,301,'2026-01-07','Present'),
(4,101,301,'2026-01-08','Absent'),

(5,102,301,'2026-01-05','Present'),
(6,102,301,'2026-01-06','Present'),
(7,102,301,'2026-01-07','Present'),
(8,102,301,'2026-01-08','Present'),

(9,103,303,'2026-01-05','Absent'),
(10,103,303,'2026-01-06','Absent'),
(11,103,303,'2026-01-07','Present'),
(12,103,303,'2026-01-08','Present'),

(13,104,302,'2026-02-05','Present'),
(14,104,302,'2026-02-06','Present'),
(15,104,302,'2026-02-07','Absent'),
(16,104,302,'2026-02-08','Present'),

(17,105,303,'2026-02-05','Present'),
(18,105,303,'2026-02-06','Absent'),
(19,105,303,'2026-02-07','Absent'),
(20,105,303,'2026-02-08','Absent'),

(21,106,305,'2026-02-05','Present'),
(22,106,305,'2026-02-06','Present'),
(23,106,305,'2026-02-07','Late'),
(24,106,305,'2026-02-08','Present');

-- -------------------------
--7. Grades
-- -------------------------
INSERT INTO Grades VALUES
(1,101,301,92),
(2,101,302,88),
(3,101,306,91),
(4,102,301,96),
(5,102,302,94),
(6,102,303,89),
(7,103,303,72),
(8,103,304,68),
(9,104,301,85),
(10,104,302,78),
(11,105,303,65),
(12,105,304,70),
(13,106,305,93),
(14,107,301,97),
(15,107,306,95),
(16,108,303,81),
(17,109,305,74),
(18,110,301,90),
(19,110,302,87);



-- =========================================================
-- # CRUD OPERATIONS
-- =========================================================


-- INSERT NEW STUDENT

INSERT INTO Students VALUES
(111, 'Test Student', '2005-10-10', 'Male',
 'test@gmail.com', '9876500000', 'Surat',
 '2026-07-15', 1);

-- UPDATE STUDENT

UPDATE Students
SET phone_number = '9999999999',
    address = 'Ahmedabad'
WHERE student_id = 111;

-- DELETE STUDENT WHO DROPPED OUT

DELETE FROM Students
WHERE student_id = 111;

-- =========================================================
-- 4. WHERE, HAVING, LIMIT
-- =========================================================


-- Students from Computer Science Department

SELECT s.*
FROM Students s
JOIN Departments d
ON s.department_id = d.department_id
WHERE d.department_name = 'Computer Science';

-- Top 10 highest scoring students

SELECT
    s.student_id,
    s.name,
    AVG(g.marks_obtained) AS average_marks
FROM Students s
JOIN Grades g
ON s.student_id = g.student_id
GROUP BY s.student_id, s.name
ORDER BY average_marks DESC
LIMIT 10;

-- Students with attendance below 75%

SELECT
    s.student_id,
    s.name,
    COUNT(a.attendance_id) AS total_classes,
    SUM(a.status = 'Present') AS present_classes,
    ROUND(
        SUM(a.status = 'Present') * 100.0 /
        COUNT(a.attendance_id), 2
    ) AS attendance_percentage
FROM Students s
JOIN Attendance a
ON s.student_id = a.student_id
GROUP BY s.student_id, s.name
HAVING attendance_percentage < 75;


-- =========================================================
-- # AND, OR, NOT
-- =========================================================


-- Students who scored above 90 OR attendance above 90%

SELECT DISTINCT
    s.student_id,
    s.name
FROM Students s
LEFT JOIN Grades g
ON s.student_id = g.student_id
LEFT JOIN Attendance a
ON s.student_id = a.student_id
GROUP BY s.student_id, s.name
HAVING AVG(g.marks_obtained) > 90
OR
(
    SUM(a.status = 'Present') * 100.0 /
    COUNT(a.attendance_id)
) > 90;

-- Faculty NOT assigned to any course

SELECT f.*
FROM Faculty f
LEFT JOIN Courses c
ON f.faculty_id = c.faculty_id
WHERE c.course_id IS NULL;


-- =========================================================
-- 6. ORDER BY AND GROUP BY
-- =========================================================


-- Students alphabetically

SELECT *
FROM Students
ORDER BY name ASC;


-- Number of students in each department

SELECT
    d.department_name,
    COUNT(s.student_id) AS total_students
FROM Departments d
LEFT JOIN Students s
ON d.department_id = s.department_id
GROUP BY d.department_id, d.department_name;


-- Average marks by department

SELECT
    d.department_name,
    ROUND(AVG(g.marks_obtained), 2) AS average_marks
FROM Departments d
JOIN Students s
ON d.department_id = s.department_id
JOIN Grades g
ON s.student_id = g.student_id
GROUP BY d.department_id, d.department_name;




-- =========================================================
-- # AGGREGATE FUNCTIONS
-- =========================================================


-- Average attendance percentage

SELECT
    ROUND(
        SUM(status = 'Present') * 100.0 /
        COUNT(*), 2
    ) AS average_attendance_percentage
FROM Attendance;


-- Highest and lowest marks in each course

SELECT
    c.course_name,
    MAX(g.marks_obtained) AS highest_marks,
    MIN(g.marks_obtained) AS lowest_marks
FROM Courses c
JOIN Grades g
ON c.course_id = g.course_id
GROUP BY c.course_id, c.course_name;


-- Total students per department

SELECT
    d.department_name,
    COUNT(s.student_id) AS total_students
FROM Departments d
LEFT JOIN Students s
ON d.department_id = s.department_id
GROUP BY d.department_id, d.department_name;


-- =========================================================
-- # PRIMARY KEY & FOREIGN KEY RELATIONSHIPS
-- =========================================================


-- Check students in same course multiple times

SELECT
    course_id,
    COUNT(DISTINCT student_id) AS total_students
FROM Enrollments
GROUP BY course_id;


-- Faculty members and courses they teach

SELECT
    f.name AS faculty_name,
    c.course_name
FROM Faculty f
JOIN Courses c
ON f.faculty_id = c.faculty_id;


-- =========================================================
-- # INNER JOIN
-- =========================================================


-- Student details with department

SELECT
    s.student_id,
    s.name,
    d.department_name
FROM Students s
INNER JOIN Departments d
ON s.department_id = d.department_id;



-- =========================================================
-- # FULL OUTER JOIN
-- =========================================================

SELECT
    f.faculty_id,
    f.name AS faculty_name,
    c.course_id,
    c.course_name
FROM Faculty f
LEFT JOIN Courses c
ON f.faculty_id = c.faculty_id

UNION

SELECT
    f.faculty_id,
    f.name AS faculty_name,
    c.course_id,
    c.course_name
FROM Faculty f
RIGHT JOIN Courses c
ON f.faculty_id = c.faculty_id;


-- =========================================================
-- # SUBQUERIES
-- =========================================================


-- Students with marks above average

SELECT DISTINCT
    s.student_id,
    s.name
FROM Students s
JOIN Grades g
ON s.student_id = g.student_id
WHERE g.marks_obtained >
(
    SELECT AVG(marks_obtained)
    FROM Grades
);


-- =========================================================
-- # DATE & TIME FUNCTIONS
-- =========================================================


-- Extract month from attendance_date

SELECT
    attendance_id,
    attendance_date,
    MONTH(attendance_date) AS attendance_month
FROM Attendance;


-- Format attendance date as DD-MM-YYYY

SELECT
    attendance_id,
    DATE_FORMAT(
        attendance_date,
        '%d-%m-%Y'
    ) AS formatted_date
FROM Attendance;


-- =========================================================
-- # STRING MANIPULATION FUNCTIONS
-- =========================================================


-- Convert faculty names to uppercase

SELECT
    faculty_id,
    UPPER(name) AS faculty_name
FROM Faculty;



-- =========================================================
-- # WINDOW FUNCTIONS
-- =========================================================


-- Rank students based on overall marks

SELECT
    student_id,
    name,
    average_marks,
    RANK() OVER (
        ORDER BY average_marks DESC
    ) AS student_rank
FROM
(
    SELECT
        s.student_id,
        s.name,
        AVG(g.marks_obtained) AS average_marks
    FROM Students s
    JOIN Grades g
    ON s.student_id = g.student_id
    GROUP BY s.student_id, s.name
) AS student_scores;


-- =========================================================
-- # CASE EXPRESSIONS
-- =========================================================


-- Categorize attendance records

SELECT
    s.student_id,
    s.name,
    ROUND(
        SUM(a.status = 'Present') * 100.0 /
        COUNT(a.attendance_id), 2
    ) AS attendance_percentage,

    CASE
        WHEN
            SUM(a.status = 'Present') * 100.0 /
            COUNT(a.attendance_id) > 80
            THEN 'Regular'

        WHEN
            SUM(a.status = 'Present') * 100.0 /
            COUNT(a.attendance_id) BETWEEN 50 AND 80
            THEN 'Irregular'

        ELSE 'Defaulter'
    END AS attendance_category

FROM Students s
JOIN Attendance a
ON s.student_id = a.student_id
GROUP BY s.student_id, s.name;
