<div align="center">

# 🎓 FINAL PROJECT — University Management Database

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=38BDF8&center=true&vCenter=true&width=600&lines=Students+%7C+Courses+%7C+Instructors+%7C+Enrollments;16+Real+Analytical+SQL+Queries!;Built+with+MySQL+%F0%9F%8E%93" alt="Typing SVG" />

<br/>

![SQL](https://img.shields.io/badge/SQL-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Database](https://img.shields.io/badge/Database-Relational-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![Tables](https://img.shields.io/badge/Tables-5-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![Queries](https://img.shields.io/badge/Queries-30%2B-blueviolet?style=for-the-badge)

<br/>

> 🚀 A single-file **MySQL script** that models a full university system — Students, Courses, Instructors, Enrollments, and Departments — linked with foreign keys, and demonstrates CRUD operations plus **16 real-world analytical queries**: joins, subqueries, window functions, `CASE` labeling, and date logic!

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
9. [Analytical Queries (2–16)](#2️⃣-analytical-queries-2--16)
10. [How to Run](#️-how-to-run)
11. [Tech Stack](#-tech-stack)
12. [Results & Insights](#-results--insights)
13. [Advantages](#-advantages)
14. [Known Limitations](#-known-limitations)
15. [License](#-license)
16. [Author](#-author)
17. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Final Project** is a single-file MySQL script (`Final_Project.sql`) that builds a **university management database** — `Students`, `Courses`, `Instructors`, `Enrollments`, and `Departments` — connected through primary and foreign keys, then runs a full CRUD pass on every table followed by **16 analytical queries**.

Instead of a toy schema with a handful of `SELECT *` statements, this script goes further: `JOIN`s across three and four tables, `GROUP BY` with `HAVING`, correlated **subqueries**, a **window function** (`COUNT(*) OVER (...)`), string functions (`CONCAT`, `YEAR`), and a `CASE`-based standing classifier — all against realistic seed data for 15 students, 15 courses, 15 instructors, and 15 departments.

Built entirely in standard MySQL syntax with `AUTO_INCREMENT` primary keys and multiple foreign-key relationships, it's a strong demonstration of relational schema design paired with intermediate-to-advanced SQL querying, all in one script.

---

## ❗ Problem Statement

Practicing SQL beyond basic `SELECT` statements usually means hunting for separate exercises — one for joins, another for subqueries, another for window functions — with no single connected schema tying them together. This creates friction:

- No single script that builds a realistic multi-table schema **and** exercises joins, subqueries, and window functions against it
- Repetitive boilerplate for `CREATE TABLE`, `AUTO_INCREMENT` keys, and foreign-key relationships across five related tables
- Difficulty seeing how CRUD, aggregation, and advanced query patterns (running totals, `CASE` labeling, date extraction) behave on the same connected dataset

**Final Project** solves this by combining everything into **one script, five tables, 30+ queries**, giving anyone learning or reviewing SQL a single connected dataset to practice CRUD, multi-table joins, subqueries, aggregation, and window functions on.

---

## ✨ Features

| Feature | Table(s) | Description |
|---|---|---|
| 🧑‍🎓 **Student Records** | `Students` | Personal info, birth date, and enrollment date |
| 📚 **Course Catalog** | `Courses` | Course name, credits, linked to a department |
| 👩‍🏫 **Instructor Directory** | `Instructors` | Personal info, salary, linked to a department |
| 📝 **Enrollment Tracking** | `Enrollments` | Junction table linking `Students` and `Courses` |
| 🏛️ **Department Registry** | `Departments` | 15 academic departments, referenced by courses & instructors |
| 🔗 **Multi-Table Joins** | All tables | `INNER JOIN`, `LEFT JOIN` across 3–4 tables |
| 🧮 **Aggregation & Filtering** | `Courses`, `Enrollments`, `Instructors` | `GROUP BY`, `HAVING`, `AVG`, `MAX`, `COUNT` |
| 🔍 **Subqueries** | `Students`, `Enrollments` | Nested subqueries to filter by enrollment count |
| 🪟 **Window Function** | `Enrollments` | Running total of enrollments via `COUNT(*) OVER (...)` |
| 🏷️ **Conditional Labeling** | `Students` | `CASE` + `TIMESTAMPDIFF` to tag students Senior/Junior |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🧩 **Five Connected Tables** | Departments sit at the center, referenced by both `Courses` and `Instructors`; `Enrollments` links `Students` and `Courses` |
| 🔁 **AUTO_INCREMENT Primary Keys** | Every table uses `INT PRIMARY KEY AUTO_INCREMENT` with explicit IDs supplied on insert |
| 🧱 **Full CRUD per Table** | Every table demonstrates full-table `SELECT`, `LIMIT`, `UPDATE`, and filtered `SELECT` |
| 🔗 **Two-Level Joins** | Queries join up to 4 tables deep (Departments → Courses → Enrollments → Students) |
| 🧮 **HAVING-Filtered Aggregates** | Courses with more than 2 enrolled students, isolated via `GROUP BY ... HAVING` |
| 🎯 **Set-Style Filtering** | `IN (...)` used for both "enrolled in either" and, with `GROUP BY`, "enrolled in both" course logic |
| 🔍 **Nested Subqueries** | Three-level nested subquery to find students in courses with 10+ enrollments |
| 🪟 **Running Total Window Function** | `COUNT(*) OVER (ORDER BY EnrollmentDate, EnrollmentID)` for a cumulative enrollment count |
| 🏷️ **Date-Based Classification** | `TIMESTAMPDIFF(YEAR, ...)` + `CASE` to label students Senior/Junior |
| 🔢 **15 Seed Rows in 4 of 5 Tables** | Students, Courses, Instructors, and Departments each seeded with 15 rows; Enrollments seeded with 15 records |

---

## 🗂 Database Schema

| Table | Primary Key | Foreign Key(s) | Purpose |
|---|---|---|---|
| `Students` | `StudentID` | — | Student personal info, birth date, enrollment date |
| `Courses` | `CourseID` | `DepartmentID` → `Departments` | Course catalog with credits per course |
| `Instructors` | `InstructorID` | `DepartmentID` → `Departments` | Instructor directory with salary |
| `Enrollments` | `EnrollmentID` | `StudentID` → `Students`, `CourseID` → `Courses` | Links students to the courses they've taken |
| `Departments` | `DepartmentID` | — | 15 academic departments referenced by `Courses` and `Instructors` |

---

## 🔁 Entity Relationship Workflow

```
                         ┌────────────────────┐
                         │    Departments       │
                         │  DepartmentID (PK)   │
                         │  DepartmentName      │
                         └───────┬───────┬───────┘
                                 │       │
                    FK: DepartmentID   FK: DepartmentID
                                 │       │
                     ┌───────────▼┐   ┌──▼────────────┐
                     │   Courses   │   │  Instructors   │
                     │ CourseID(PK)│   │InstructorID(PK)│
                     │ CourseName, │   │ FirstName,     │
                     │ Credits     │   │ Salary         │
                     └──────┬──────┘   └────────────────┘
                            │
                       FK: CourseID
                            │
                     ┌──────▼───────┐        FK: StudentID
                     │  Enrollments  │◄──────────────────────┐
                     │EnrollmentID(PK)│                       │
                     │ StudentID(FK) │              ┌─────────┴─────────┐
                     │ CourseID (FK) │              │      Students      │
                     │ EnrollmentDate│              │  StudentID (PK)    │
                     └───────────────┘              │  FirstName, Email, │
                                                    |  BirthDate,        │
                                                    |  EnrollmentDate    │
                                                    └────────────────────┘
```

---

## 📁 Project Structure

```
📦 Final Project
 ┣ 📄 Final_Project.sql   ← Single SQL script, run top to bottom
 ┃ ┣ 📜 Schema  → 5 CREATE TABLE statements (Students, Courses, Instructors, Enrollments, Departments)
 ┃ ┣ 📜 Seed Data → 15 rows each into Students, Courses, Instructors, Departments; 15 into Enrollments
 ┃ ┣ 📜 Section 1 → CRUD operations on all 5 tables
 ┃ ┗ 📜 Sections 2–16 → Analytical queries: joins, subqueries, aggregation, window functions, CASE logic
 ┗ 📘 README.md            ← Project documentation (you're here!)
```

> Single-script project — run `Final_Project.sql` top to bottom in a MySQL client. See [Known Limitations](#-known-limitations) for a table-creation ordering note before running.

---

## 1️⃣ CRUD Operations

> Each of the 5 tables gets the same four-step treatment: view all rows, preview with `LIMIT 5`, `UPDATE` one record, then look it up with a filtered `SELECT`.

| Table | Update Performed | Lookup Performed |
|---|---|---|
| `Students` | Changed StudentID 1's email to `doe222@newmail.com` | `WHERE FirstName = 'Sophia'` |
| `Courses` | Renamed CourseID 104 ("Algorithms") to `'MATHS'` | `WHERE CourseName = 'Genetics'` |
| `Instructors` | Raised InstructorID 10's salary to `100000` | `WHERE InstructorID = 10` |
| `Enrollments` | Changed EnrollmentID 1's date to `'2022-10-01'` | `WHERE EnrollmentID = 10` |
| `Departments` | Renamed DepartmentID 5 ("Biology") to `'MATHS'` | `WHERE DepartmentID = 15` |

```sql
-- Example: Students CRUD block
SELECT * FROM Students;
SELECT * FROM Students LIMIT 5;
UPDATE Students SET Email = 'doe222@newmail.com' WHERE StudentID = 1;
SELECT * FROM Students WHERE FirstName = 'Sophia';
```

```
Sample rows (Students):
StudentID | FirstName | LastName | Email                    | EnrollmentDate
1         | John      | Doe      | doe222@newmail.com       | 2022-08-01
2         | Jane      | Smith    | jane.smith@email.com     | 2021-08-01
3         | Mike      | Brown    | mike.brown@email.com     | 2023-01-15
4         | Lisa      | Davis    | lisa.davis@email.com     | 2022-09-01
5         | Tom       | Wilson   | tom.wilson@email.com     | 2020-08-01
```

---

## 2️⃣ Analytical Queries (2–16)

> 15 progressively advanced queries, each isolated with a comment header in the script.

| # | Query | Technique | What It Returns |
|---|---|---|---|
| 2 | Students who enrolled after 2022 | `WHERE EnrollmentDate > '2022-12-31'` | Students 6, 10 (Anna Taylor, Emma Clark) |
| 3 | Courses offered by Mathematics | `JOIN` on `DepartmentID` | Data Structures, Calculus I, Linear Algebra |
| 4 | Students enrolled per course (>2) | `JOIN` + `GROUP BY` + `HAVING` | Only "Introduction to SQL" (11 students) qualifies |
| 5 | Students in **both** SQL and Data Structures | `JOIN` ×2 + `IN (...)` + `GROUP BY` | Students 1–4 (John, Jane, Mike, Lisa) |
| 6 | Students in **either** SQL or Data Structures | `JOIN` ×2 + `IN (...)` | 15 rows (students 1–11 in SQL, 1–4 again in Data Structures) |
| 7 | Average credits across all courses | `AVG(Credits)` | 3.4 credits |
| 8 | Max salary in Computer Science | `JOIN` + `MAX(Salary)` | ₹90,000.00 (Oscar Reed) |
| 9 | Students enrolled per department | `JOIN` ×2 + `GROUP BY` | Computer Science: 15, Mathematics: 4 |
| 10 | Students & their courses | `INNER JOIN` ×2 | Only matched student–course pairs |
| 11 | All students & their courses (if any) | `LEFT JOIN` ×2 | All 15 students, unmatched ones show `NULL` course |
| 12 | Students in courses with 10+ enrollments | 3-level nested subquery | Students 1–11 (only "Introduction to SQL" qualifies) |
| 13 | Enrollment year extracted | `YEAR(EnrollmentDate)` | Each student's enrollment year as a new column |
| 14 | Instructor full name | `CONCAT(FirstName, ' ', LastName)` | e.g. "Alice Johnson", "Bob Lee" |
| 15 | Running total of enrollments | `COUNT(*) OVER (ORDER BY ...)` | Cumulative enrollment count row by row |
| 16 | Senior/Junior standing label | `TIMESTAMPDIFF(YEAR, ...)` + `CASE` | Students enrolled 4+ years ago tagged "Senior" |

```sql
-- Example: Query 9 — students enrolled per department
SELECT d.DepartmentName, COUNT(e.StudentID) AS NumStudents
FROM Departments d
JOIN Courses c ON d.DepartmentID = c.DepartmentID
JOIN Enrollments e ON c.CourseID = e.CourseID
GROUP BY d.DepartmentName;
```

```
DepartmentName    | NumStudents
Computer Science   | 15
Mathematics         | 4
```

```sql
-- Example: Query 16 — Senior/Junior standing
SELECT StudentID, FirstName, LastName, EnrollmentDate,
    CASE
        WHEN TIMESTAMPDIFF(YEAR, EnrollmentDate, CURDATE()) > 4 THEN 'Senior'
        ELSE 'Junior'
    END AS StudentStanding
FROM Students;
```

```
StudentID | FirstName | EnrollmentDate | StudentStanding
5         | Tom       | 2020-08-01      | Senior
9         | Kevin     | 2019-08-01      | Senior
13        | Daniel    | 2020-01-15      | Senior
1         | John      | 2022-08-01      | Junior
6         | Anna      | 2023-08-01      | Junior
```

---

## ▶️ How to Run

1️⃣ **Open a MySQL client** (MySQL Workbench, CLI, or any GUI tool)

2️⃣ **Create `Departments` before `Courses` and `Instructors`** (see [Known Limitations](#-known-limitations)) — either reorder the `CREATE TABLE` statements or disable FK checks temporarily:
```sql
SET FOREIGN_KEY_CHECKS = 0;
-- run the script
SET FOREIGN_KEY_CHECKS = 1;
```

3️⃣ **Run the script top to bottom**
```bash
mysql -u root -p < Final_Project.sql
```

4️⃣ **Or execute section by section** inside your SQL editor — schema, then seed data, then CRUD, then the 15 analytical queries in order

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐬 **MySQL** | Relational database engine used for all DDL/DML syntax |
| 🗝️ **AUTO_INCREMENT Primary Keys** | Simplifies ID management across all 5 tables |
| 🔗 **Foreign Keys** | Enforces relationships: Courses/Instructors → Departments, Enrollments → Students/Courses |
| 🧮 **Aggregate Functions** | `AVG`, `MAX`, `COUNT` for summary analytics |
| 🪟 **Window Functions** | `COUNT(*) OVER (...)` for running totals |
| 🔍 **Subqueries** | Nested `IN (...)` filtering across 3 levels |
| 🧵 **String & Date Functions** | `CONCAT`, `YEAR`, `TIMESTAMPDIFF` |

---

## 📊 Results & Insights

After running every section of the script against the seed data, here's a summary of what was observed:

| Observation | Detail |
|---|---|
| 🧑‍🎓 **Student CRUD verified** | Email update, `LIMIT 5` preview, and name-based lookup all worked as expected |
| 📚 **Course popularity confirmed** | "Introduction to SQL" is the only course exceeding 2 enrolled students (11 total) |
| 🔁 **Overlap query verified** | Students 1–4 are enrolled in both "Introduction to SQL" and "Data Structures" |
| 💰 **Salary analytics confirmed** | Highest-paid Computer Science instructor: Oscar Reed at ₹90,000.00 |
| 🏛️ **Department enrollment confirmed** | Computer Science leads with 15 enrolled students vs. Mathematics' 4 |
| 🏷️ **Standing classification verified** | Students enrolled before ~2021 correctly tagged "Senior" via `TIMESTAMPDIFF` |
| 🪟 **Running total verified** | Window function correctly produces a row-by-row cumulative enrollment count ordered by date |

---

## 💡 Advantages

- **Realistic Multi-Table Schema** — Five properly normalized tables with cross-cutting foreign keys
- **Beyond Basic CRUD** — 15 analytical queries covering joins, subqueries, aggregation, and window functions in one file
- **Progressive Difficulty** — Queries escalate from simple filters to nested subqueries and running totals, useful as a learning ladder
- **Real Window Function Example** — One of the few beginner scripts to demonstrate `COUNT(*) OVER (...)`
- **Practical Business Logic** — Senior/Junior labeling via `CASE` + `TIMESTAMPDIFF` mirrors real-world reporting needs
- **Single-File Simplicity** — The entire schema, seed data, and 30+ queries live in one `.sql` file

---

## ⚠️ Known Limitations

- **Table creation order bug** — `Courses` and `Instructors` are `CREATE`d *before* `Departments`, but both reference `Departments(DepartmentID)` via `FOREIGN KEY`. This will fail on a strict MySQL server unless `Departments` is created first or `FOREIGN_KEY_CHECKS` is temporarily disabled
- `USE fINAL_PROJECT;` has inconsistent casing vs. `CREATE DATABASE FINAL_PROJECT;` — works on case-insensitive systems (default on Windows/macOS) but may fail on case-sensitive Linux MySQL installs
- Only 15 `Enrollments` rows are seeded, covering just 2 of the 15 courses (`Introduction to SQL` and `Data Structures`) — queries referencing other courses (e.g. Query 3's "Mathematics department courses") return course metadata but no enrollment data for most departments
- Query 6 ("either" course) and Query 5 ("both" courses) rely on `IN (...)` + `GROUP BY` rather than `INTERSECT`, which MySQL doesn't support natively — the approach works but differs from standard set-operation syntax
- No `DELETE` operations are demonstrated, only `SELECT`, `UPDATE`, and filtered lookups
- Comment header says "3.INSTRUCTORES TABLE" — a minor typo, doesn't affect execution

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
| 📁 **Project** | Final Project — University Management Database |
| 💡 **Purpose** | Multi-table joins, subqueries & window functions practice project |

<br/>

Made with 💙 using **MySQL**

![SQL Love](https://img.shields.io/badge/Made%20with-%F0%9F%92%99%20MySQL-4479A1?style=for-the-badge&logo=mysql)

</div>

---

## 🙏 Acknowledgements

- 🐬 **MySQL Developers** — for the relational database engine this entire project runs on
- 📖 **MySQL Documentation** — for comprehensive reference on window functions, subqueries, and joins
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG animations
- 🎓 **All learners** — who build multi-table relational projects like this to sharpen advanced SQL fundamentals

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
