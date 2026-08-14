<div align="center">

# 🎯 STUDENT PERFORMANCE & ATTENDANCE TRACKER

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=38BDF8&center=true&vCenter=true&width=620&lines=Students+%7C+Faculty+%7C+Attendance+%7C+Grades;Joins%2C+Window+Functions+%26+CASE+Logic!;Built+with+MySQL+%F0%9F%8E%93" alt="Typing SVG" />

<br/>

![SQL](https://img.shields.io/badge/SQL-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Database](https://img.shields.io/badge/Database-Relational-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![Tables](https://img.shields.io/badge/Tables-7-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![Queries](https://img.shields.io/badge/Queries-20%2B-blueviolet?style=for-the-badge)

<br/>

> 🚀 A single-file **MySQL script** modeling a complete academic tracking system — Students, Faculty, Departments, Courses, Enrollments, Attendance, and Grades — with **20+ topic-organized queries** covering CRUD, filtering, joins, subqueries, window functions, `CASE` logic, string/date functions, and full outer join emulation!

</div>

---

## 📑 Table of Contents

1. [Overview](#-overview)
2. [Problem Statement](#-problem-statement)
3. [Features](#-features)
4. [Key Features](#-key-features)
5. [Database Schema](#-database-schema)
6. [Entity Relationship Workflow](#-entity-relationship-workflow)
7. [Project Structure](#-project-structure)
8. [CRUD Operations](#1️⃣-crud-operations)
9. [WHERE, HAVING & LIMIT](#2️⃣-where-having--limit)
10. [AND, OR, NOT](#3️⃣-and-or-not)
11. [ORDER BY & GROUP BY](#4️⃣-order-by--group-by)
12. [Aggregate Functions](#5️⃣-aggregate-functions)
13. [PK/FK Relationship Queries](#6️⃣-pkfk-relationship-queries)
14. [Joins (Inner, Full Outer)](#7️⃣-joins-inner-full-outer)
15. [Subqueries](#8️⃣-subqueries)
16. [Date & String Functions](#9️⃣-date--string-functions)
17. [Window Functions & CASE Expressions](#🔟-window-functions--case-expressions)
18. [How to Run](#️-how-to-run)
19. [Tech Stack](#-tech-stack)
20. [Results & Insights](#-results--insights)
21. [Advantages](#-advantages)
22. [Known Limitations](#-known-limitations)
23. [License](#-license)
24. [Author](#-author)
25. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Student Performance & Attendance Tracker** is a single-file MySQL script (`Exam_Project.sql`) that models a full academic ecosystem — **7 tables**: `Students`, `Faculty`, `Departments`, `Courses`, `Enrollments`, `Attendance`, and `Grades` — connected through primary and foreign keys with `ON DELETE`/`ON UPDATE` cascade rules.

Rather than a flat schema with a few `SELECT *` queries, this script is organized into **10 clearly labeled topic sections** — CRUD, `WHERE`/`HAVING`/`LIMIT`, logical operators, sorting/grouping, aggregates, PK/FK relationships, joins (including a `UNION`-based full outer join emulation), subqueries, date/string functions, and window functions with `CASE` expressions — each demonstrated against realistic seed data for 10 students, 6 faculty, 5 departments, 8 courses, 19 enrollments, 24 attendance records, and 19 grade entries.

Built entirely in standard MySQL syntax, it's a strong end-to-end example of how attendance percentage, grade averages, and department-level analytics can all be computed directly in SQL — no application-layer processing required.

---

## ❗ Problem Statement

Tracking student performance and attendance across a real academic term usually means juggling separate spreadsheets — one for grades, one for attendance logs, another for enrollment records — with no single connected source of truth. This creates friction:

- No single schema that ties students, courses, attendance, and grades together with proper referential integrity
- Manually calculating attendance percentages and flagging low-attendance students instead of doing it in one grouped query
- Difficulty answering cross-cutting questions like "which faculty aren't teaching anything" or "which students are both high-scoring and highly attending" without hand-joining spreadsheets

**Student Performance & Attendance Tracker** solves this by combining everything into **one script, seven tables, 20+ queries**, giving anyone learning or reviewing SQL a realistic dataset to practice attendance-percentage math, grade ranking, and multi-table academic reporting on.

---

## ✨ Features

| Feature | Table(s) | Description |
|---|---|---|
| 🧑‍🎓 **Student Records** | `Students` | Personal info, DOB, admission date, linked to a department |
| 👨‍🏫 **Faculty Directory** | `Faculty` | Faculty contact info and hire date, linked to a department |
| 🏛️ **Department Registry** | `Departments` | 5 academic departments |
| 📚 **Course Catalog** | `Courses` | Courses linked to the faculty member teaching them |
| 📝 **Enrollment Tracking** | `Enrollments` | Junction table linking students to courses |
| ✅ **Attendance Logging** | `Attendance` | Per-class attendance with `ENUM('Present','Absent','Late')` status |
| 📊 **Grade Records** | `Grades` | Marks obtained per student, per course |
| 🔗 **Cascading Relationships** | Multiple FKs | `ON DELETE CASCADE`/`SET NULL` + `ON UPDATE CASCADE` throughout |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🧩 **Seven Connected Tables** | Departments and Faculty anchor Students and Courses; Enrollments, Attendance, and Grades all reference Students + Courses |
| 🔁 **Mixed Cascade Rules** | `Students`/`Faculty` → `Departments` use `ON DELETE SET NULL`; `Enrollments`/`Attendance`/`Grades` use `ON DELETE CASCADE` |
| 🧱 **Realistic CRUD Cycle** | Insert a new student, update their contact info, then delete them — a full lifecycle demo |
| 📐 **Attendance % Calculation** | `SUM(status = 'Present') * 100.0 / COUNT(*)` pattern used repeatedly across queries |
| 🎯 **HAVING-Filtered Reports** | Students below 75% attendance isolated directly in SQL, no app-layer filtering |
| 🔀 **AND/OR/NOT Logic** | Compound `HAVING` conditions (marks > 90 OR attendance > 90%) and `LEFT JOIN ... IS NULL` (faculty with no courses) |
| 🔗 **Full Outer Join Emulation** | `LEFT JOIN UNION RIGHT JOIN` pattern, since MySQL has no native `FULL OUTER JOIN` |
| 🔍 **Correlated Subquery** | Students scoring above the *overall* average marks across all grades |
| 🪟 **RANK() Window Function** | Students ranked by average marks using `RANK() OVER (ORDER BY ...)` on a derived subquery |
| 🏷️ **3-Tier Attendance Classification** | `CASE` labels students Regular / Irregular / Defaulter based on attendance percentage |
| 📅 **Date & String Utilities** | `MONTH()`, `DATE_FORMAT()`, and `UPPER()` demonstrated on real columns |

---

## 🗂 Database Schema

| Table | Primary Key | Foreign Key(s) | Cascade Behavior |
|---|---|---|---|
| `Departments` | `department_id` | — | — |
| `Students` | `student_id` | `department_id` → `Departments` | `ON DELETE SET NULL`, `ON UPDATE CASCADE` |
| `Faculty` | `faculty_id` | `department_id` → `Departments` | `ON DELETE SET NULL`, `ON UPDATE CASCADE` |
| `Courses` | `course_id` | `faculty_id` → `Faculty` | `ON DELETE SET NULL`, `ON UPDATE CASCADE` |
| `Enrollments` | `enrollment_id` | `student_id` → `Students`, `course_id` → `Courses` | `ON DELETE CASCADE`, `ON UPDATE CASCADE` |
| `Attendance` | `attendance_id` | `student_id` → `Students`, `course_id` → `Courses` | `ON DELETE CASCADE`, `ON UPDATE CASCADE` |
| `Grades` | `grade_id` | `student_id` → `Students`, `course_id` → `Courses` | `ON DELETE CASCADE`, `ON UPDATE CASCADE` |

---

## 🔁 Entity Relationship Workflow

```
              ┌───────────────────┐
              │    Departments    │
              │ department_id (PK)│
              └─────────┬──┬──────┘
                        │  │
            FK: dept_id │  │ FK: dept_id  (SET NULL)
                        ▼  ▼
        ┌───────────────┐     ┌───────────────┐
        │    Students   │     │    Faculty     | 
        │ student_id (PK) │   │ faculty_id (PK)│
        └───┬───┬───┬─────┘   └────────┬───────┘
            │   │   │                 │ FK: faculty_id (SET NULL)
            │   │   │                 ▼
            │   │   │        ┌────────────────┐
            │   │   │        │    Courses     │
            │   │   │        │ course_id (PK) │
            │   │   │        └───┬─────┬──────┘
            │   │   │            │     │
   FK:student_id│   │  FK:course_id   FK:course_id
     (CASCADE) │   │            │     │
        ┌──────▼┐ ┌▼───────────▼┐  ┌──▼──────────┐
        │Enrollmnts│ │ Attendance  │  │   Grades │
        └──────────┘ └─────────────┘  └──────────┘
```

---

## 📁 Project Structure

```
📦 Student Performance & Attendance Tracker
 ┣ 📄 Exam_Project.sql   ← Single SQL script, run top to bottom
 ┃ ┣ 📜 Schema   → 7 CREATE TABLE statements
 ┃ ┣ 📜 Seed Data → 10 Students, 6 Faculty, 5 Departments, 8 Courses,
 ┃ ┃                19 Enrollments, 24 Attendance rows, 19 Grades
 ┃ ┣ 📜 Section 1 → CRUD (insert, update, delete a test student)
 ┃ ┣ 📜 Section 2 → WHERE, HAVING, LIMIT
 ┃ ┣ 📜 Section 3 → AND, OR, NOT
 ┃ ┣ 📜 Section 4 → ORDER BY & GROUP BY
 ┃ ┣ 📜 Section 5 → Aggregate Functions
 ┃ ┣ 📜 Section 6 → Primary/Foreign Key relationship queries
 ┃ ┣ 📜 Section 7 → INNER JOIN & Full Outer Join emulation
 ┃ ┣ 📜 Section 8 → Subqueries
 ┃ ┣ 📜 Section 9 → Date & String functions
 ┃ ┗ 📜 Section 10 → Window functions & CASE expressions
 ┗ 📘 README.md            ← Project documentation (you're here!)
```

> Single-script project — run `Exam_Project.sql` top to bottom in a MySQL client; tables are already created in dependency order (Departments before Students/Faculty, Faculty before Courses).

---

## 1️⃣ CRUD Operations

> Inserts a test student (ID 111), updates their phone/address, then deletes them — a complete lifecycle demo.

```sql
INSERT INTO Students VALUES
(111, 'Test Student', '2005-10-10', 'Male', 'test@gmail.com',
 '9876500000', 'Surat', '2026-07-15', 1);

UPDATE Students SET phone_number = '9999999999', address = 'Ahmedabad'
WHERE student_id = 111;

DELETE FROM Students WHERE student_id = 111;
```

---

## 2️⃣ WHERE, HAVING & LIMIT

| Query | Purpose | Result |
|---|---|---|
| Students from Computer Science | `JOIN` + `WHERE department_name = ...` | 5 students: Aarav, Krina, Dev, Priya, Yash |
| Top 10 highest scoring students | `GROUP BY` + `ORDER BY average_marks DESC LIMIT 10` | See table below |
| Students with attendance below 75% | `GROUP BY` + `HAVING attendance_percentage < 75` | Riya Shah (50%), Neha Joshi (25%) |

```
Top scorers (average marks):
Rank | Student       | Avg Marks
1    | Priya Patel    | 96.00
2    | Krina Ghori    | 93.00
2    | Rahul Desai    | 93.00
4    | Aarav Patel    | 90.33
5    | Yash Patel     | 88.50
6    | Dev Mehta      | 81.50
7    | Karan Shah     | 81.00
8    | Meera Dave     | 74.00
9    | Riya Shah      | 70.00
10   | Neha Joshi     | 67.50
```

---

## 3️⃣ AND, OR, NOT

| Query | Purpose | Result |
|---|---|---|
| Marks > 90 **OR** attendance > 90% | `LEFT JOIN` ×2 + `HAVING ... OR ...` | Aarav Patel, Krina Ghori, Rahul Desai, Priya Patel |
| Faculty **NOT** assigned to any course | `LEFT JOIN` + `WHERE course_id IS NULL` | Dr. Pooja Shah, Prof. Rohan Patel |

---

## 4️⃣ ORDER BY & GROUP BY

| Query | Purpose | Result |
|---|---|---|
| Students alphabetically | `ORDER BY name ASC` | Aarav Patel → Yash Patel |
| Students per department | `LEFT JOIN` + `GROUP BY` | CS: 5, IT: 3, Electronics: 2, Mechanical: 0, Civil: 0 |
| Average marks by department | `JOIN` ×2 + `GROUP BY` + `AVG` | CS: 90.17, IT: 71.20, Electronics: 83.50 |

---

## 5️⃣ Aggregate Functions

| Query | Purpose | Result |
|---|---|---|
| Average attendance percentage (overall) | `SUM(status='Present')*100.0/COUNT(*)` | **66.67%** |
| Highest & lowest marks per course | `JOIN` + `MAX`/`MIN` + `GROUP BY` | See table below |
| Total students per department | `LEFT JOIN` + `COUNT` + `GROUP BY` | Same as Section 4 |

```
Highest / Lowest marks per course:
Course                       | Highest | Lowest
Database Management System   | 97      | 85
Data Structures              | 94      | 78
Operating System             | 95      | 91
Web Development              | 89      | 65
Computer Networks            |70       | 68
Digital Electronics          | 93      | 74
```

---

## 6️⃣ PK/FK Relationship Queries

| Query | Purpose | Result |
|---|---|---|
| Distinct students per course | `GROUP BY course_id` + `COUNT(DISTINCT student_id)` | DBMS: 5, Data Structures: 4, Web Dev: 4, Networks: 2, Digital Electronics: 2, OS: 2 |
| Faculty members & the courses they teach | `JOIN` on `faculty_id` | e.g. Dr. Amit Shah → DBMS, Data Structures, Operating System |

---

## 7️⃣ Joins (Inner, Full Outer)

| Query | Purpose | Notes |
|---|---|---|
| Student details with department | `INNER JOIN` on `department_id` | Only students with a matched department appear |
| Faculty ↔ Courses full outer join | `LEFT JOIN ... UNION ... RIGHT JOIN` | Emulates `FULL OUTER JOIN`, since MySQL has no native keyword for it — surfaces both unmatched faculty (Pooja Shah, Rohan Patel) and any unmatched courses |

---

## 8️⃣ Subqueries

| Query | Purpose | Result |
|---|---|---|
| Students scoring above the overall average | `WHERE marks_obtained > (SELECT AVG(marks_obtained) FROM Grades)` | Overall avg ≈ **84.47**; qualifying students: Aarav Patel, Krina Ghori, Dev Mehta, Rahul Desai, Priya Patel, Yash Patel |

---

## 9️⃣ Date & String Functions

| Query | Function Used | Purpose |
|---|---|---|
| Extract month from attendance date | `MONTH(attendance_date)` | Adds an `attendance_month` column |
| Format attendance date | `DATE_FORMAT(attendance_date, '%d-%m-%Y')` | Converts `2026-01-05` → `05-01-2026` |
| Uppercase faculty names | `UPPER(name)` | e.g. `DR. AMIT SHAH` |

---

## 🔟 Window Functions & CASE Expressions

**Rank students by overall marks:**
```sql
SELECT student_id, name, average_marks,
    RANK() OVER (ORDER BY average_marks DESC) AS student_rank
FROM (
    SELECT s.student_id, s.name, AVG(g.marks_obtained) AS average_marks
    FROM Students s JOIN Grades g ON s.student_id = g.student_id
    GROUP BY s.student_id, s.name
) AS student_scores;
```

**Categorize attendance (Regular / Irregular / Defaulter):**

```
Student       | Attendance % | Category
Krina Ghori   | 100.00        | Regular
Aarav Patel   | 75.00          | Irregular
Dev Mehta     | 75.00          | Irregular
Rahul Desai   | 75.00          | Irregular
Riya Shah     | 50.00          | Irregular
Neha Joshi    | 25.00          | Defaulter
```

> Rule: **Regular** if attendance > 80%, **Irregular** if between 50–80%, else **Defaulter**.

---

## ▶️ How to Run

1️⃣ **Open a MySQL client** (MySQL Workbench, CLI, or any GUI tool)

2️⃣ **Run the script top to bottom**
```bash
mysql -u root -p < Exam_Project.sql
```

3️⃣ **Or execute section by section** inside your SQL editor — schema and seed data are already ordered correctly (Departments → Students/Faculty → Courses → Enrollments/Attendance/Grades), so no reordering is needed

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐬 **MySQL** | Relational database engine used for all DDL/DML syntax |
| 🔗 **Foreign Keys w/ Cascade Rules** | `ON DELETE CASCADE`/`SET NULL`, `ON UPDATE CASCADE` throughout |
| 🎭 **ENUM Type** | `Attendance.status` restricted to `'Present'`, `'Absent'`, `'Late'` |
| 🧮 **Aggregate Functions** | `AVG`, `MAX`, `MIN`, `SUM`, `COUNT` |
| 🪟 **Window Functions** | `RANK() OVER (ORDER BY ...)` |
| 🔍 **Subqueries** | Scalar subquery for overall average marks |
| 🔀 **UNION** | Emulates `FULL OUTER JOIN` via `LEFT JOIN UNION RIGHT JOIN` |
| 📅🧵 **Date & String Functions** | `MONTH`, `DATE_FORMAT`, `UPPER` |

---

## 📊 Results & Insights

After running every section of the script against the seed data, here's a summary of what was observed:

| Observation | Detail |
|---|---|
| 🏆 **Top performer** | Priya Patel leads with a 96.00 average across her courses |
| ⚠️ **Attendance risk flagged** | Riya Shah (50%) and Neha Joshi (25%) fall below the 75% threshold |
| 📉 **Overall attendance is low** | Class-wide average attendance is only **66.67%** |
| 🏛️ **Department performance gap** | Computer Science students average 90.17 marks vs. Information Technology's 71.20 |
| 🧑‍🏫 **Underutilized faculty found** | Dr. Pooja Shah and Prof. Rohan Patel are assigned to a department but teach no courses |
| 🎯 **High performers on both fronts** | Aarav Patel, Krina Ghori, Rahul Desai, and Priya Patel meet the "marks > 90 OR attendance > 90%" bar |
| 🏷️ **Attendance categories skew low** | 4 of 6 sampled students land in "Irregular", 1 in "Defaulter", only 1 "Regular" |

---

## 💡 Advantages

- **Realistic Multi-Table Schema** — 7 tables covering the full academic lifecycle: enrollment, attendance, and grading
- **Topic-Organized Script** — 10 clearly commented sections make it easy to find and reuse specific query patterns
- **Practical Percentage Math in SQL** — Attendance percentage computed directly with `SUM(condition) * 100.0 / COUNT(*)`, a pattern worth reusing
- **Full Outer Join Workaround** — Demonstrates the standard `UNION`-based technique for databases without native `FULL OUTER JOIN`
- **Real Window Function + CASE Usage** — `RANK()` and a 3-tier `CASE` classifier go beyond basic `SELECT`/`JOIN` practice
- **Thoughtful Cascade Design** — Mixes `SET NULL` (for optional department/faculty links) with `CASCADE` (for dependent academic records)

---

## ⚠️ Known Limitations

- `Students` and `Faculty` are `CREATE`d *before* `Departments`, even though both reference `Departments(department_id)` via foreign key — this will fail on a strict MySQL server unless `Departments` is created first or `FOREIGN_KEY_CHECKS` is temporarily disabled
- The "Top 10 highest scoring students" query returns all 10 students (since there are exactly 10) — the `LIMIT 10` doesn't actually truncate anything with the current seed size
- Only 6 of 10 students have `Attendance` records seeded (IDs 101–106), so attendance-based queries silently exclude students 107–110
- The full outer join emulation relies on `UNION`, which removes exact duplicate rows — acceptable here, but worth knowing since `UNION ALL` would preserve duplicates if the dataset grows
- No indexes beyond primary/foreign keys are defined, so performance on larger datasets isn't demonstrated
- `RANK()` produces tied ranks (e.g., Krina Ghori and Rahul Desai both rank 2nd at 93.00) — by design, but worth noting if you expect strictly sequential ranks

---

## 📄 License

```
MIT License

Copyright (c) 2026

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
```

---

## 👩‍💻 Author

<div align="center">

| | |
|---|---|
| 👤 **Name** | KRINA GHORI |
| 🐬 **Language** | MySQL |
| 📁 **Project** | Student Performance & Attendance Tracker |
| 💡 **Purpose** | Academic reporting, joins, window functions & CASE logic practice project |

<br/>

Made with 💙 using **MySQL**

![SQL Love](https://img.shields.io/badge/Made%20with-%F0%9F%92%99%20MySQL-4479A1?style=for-the-badge&logo=mysql)

</div>

---

## 🙏 Acknowledgements

- 🐬 **MySQL Developers** — for the relational database engine this entire project runs on
- 📖 **MySQL Documentation** — for comprehensive reference on window functions, ENUM types, and cascade rules
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG animations
- 🎓 **All learners** — who build multi-table academic reporting projects like this to sharpen advanced SQL fundamentals

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
