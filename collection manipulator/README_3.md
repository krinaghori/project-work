<div align="center">

# 🎓 STUDENTS DATA ORGANIZER

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=4FC3F7&center=true&vCenter=true&width=500&lines=Manage+Students+Efficiently!;Add+%7C+Update+%7C+Delete+%7C+Search;Built+with+Python+%F0%9F%90%8D" alt="Typing SVG" />

<br/>

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![CLI](https://img.shields.io/badge/Interface-CLI-orange?style=for-the-badge&logo=windowsterminal&logoColor=white)

<br/>

> 🚀 A powerful **command-line Python application** to manage student records with ease — add, update, delete, and explore subjects in a flash!

</div>

---

## 📑 Table of Contents

1. [Table of Contents](#-table-of-contents)
2. [Overview](#-overview)
3. [Problem Statement](#-problem-statement)
4. [Features](#-features)
5. [Key Features](#-key-features)
6. [Project Structure](#-project-structure)
7. [Project Workflow](#-project-workflow)
8. [Choice 1 — Add Student](#1️⃣-choice-1--add-student)
9. [Choice 2 — Display All Students](#2️⃣-choice-2--display-all-students)
10. [Choice 3 — Update Student Information](#3️⃣-choice-3--update-students-information)
11. [Choice 4 — Delete Student](#4️⃣-choice-4--delete-student)
12. [Choice 5 — Delete All Students](#5️⃣-choice-5--delete-all-students)
13. [Choice 6 — Display Subjects Offered](#6️⃣-choice-6--display-subjects-offered)
14. [Choice 7 — Exit](#7️⃣-choice-7--exit)
15. [Tech Stack](#-tech-stack)
16. [Results & Insights](#-results--insights)
17. [Advantages](#-advantages)
18. [License](#-license)
19. [Author](#-author)
20. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Students Data Organizer** is a menu-driven, command-line Python application designed to help teachers, administrators, or developers efficiently manage student records. It supports full **CRUD operations** (Create, Read, Update, Delete) and automatically tracks all unique subjects offered across students using Python's built-in `set` data structure.

Built entirely with core Python — no external libraries required — it demonstrates practical use of **lists, sets, dictionaries, tuples**, and Python 3.10's `match-case` syntax.

---

## ❗ Problem Statement

Managing student data manually — through spreadsheets or paper records — is error-prone, slow, and hard to scale. Schools and institutions need a simple, reliable tool to:

- **Store** student information (ID, name, age, grade, DOB, subjects) in one place
- **Retrieve** records instantly without searching through files
- **Update** individual fields without re-entering all data
- **Delete** outdated or incorrect entries quickly
- **Track subjects** offered across all students without duplicates

This program solves that problem with a lightweight Python CLI that runs anywhere Python is installed — no setup, no database, no internet needed.

---

## ✨ Features

| Feature | Type | Description |
|---|---|---|
| ➕ **Add Student** | Create | Register a new student with ID, name, age, grade, DOB & subjects |
| 📋 **Display All Students** | Read | View all enrolled students in a structured, formatted list |
| ✏️ **Update Student Info** | Update | Modify any field of an existing student by their unique ID |
| 🗑️ **Delete Student** | Delete | Remove a specific student record by ID |
| 💥 **Delete All Students** | Delete | Wipe the entire student list in one operation |
| 📚 **Display Subjects Offered** | Read | View all unique subjects collected from all students |
| 🚪 **Exit** | System | Gracefully exit the program with a farewell message |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🔑 **Unique Student IDs** | Every student is identified by a unique integer ID for fast lookup and operations |
| 🔄 **Live Update System** | A nested sub-menu lets you update any single field (name, age, grade, DOB, subjects) without touching others |
| 🧩 **Auto Subject Tracking** | Uses a Python `set` to automatically collect and deduplicate all subjects across all students |
| 📦 **Dictionary-Based Storage** | Each student record is a clean Python `dict` — easy to read, extend, and manipulate |
| 🔗 **Tuple Grouping** | Student ID and DOB are grouped as a `tuple` before being stored, demonstrating immutable data pairing |
| ⚡ **match-case Routing** | Uses Python 3.10's structural pattern matching (`match-case`) for clean, readable menu handling |
| 🛡️ **Not-Found Handling** | Displays clear error messages when a student ID doesn't exist during update or delete |
| 🚫 **Empty List Guard** | Detects and notifies when no students are registered before attempting to display records |

---

## 📁 Project Structure

```
📦 Students Data Organizer
 ┣ 📜 collection_manipulator.py   ← Main Python script (all logic lives here)
 ┗ 📄 README.md                   ← Project documentation (you're here!)
```

> Single-file project — run it directly with Python, no installation needed.

---

## 🔁 Project Workflow

```
START
  │
  ▼
Print Welcome Message
  │
  ▼
┌─────────────────────────────────┐
│         MAIN MENU LOOP          │
│  1. Add Student                 │
│  2. Display All Students        │
│  3. Update Student Information  │
│  4. Delete Student              │
│  5. Delete All Students         │
│  6. Display Subjects Offered    │
│  7. Exit                        │
└─────────────────────────────────┘
  │
  ├──► Choice 1 ──► Collect Details ──► Append to STUDENTS list ──► Update ALL_SUBJECTS set
  │
  ├──► Choice 2 ──► Check if list empty ──► Loop & print each student record
  │
  ├──► Choice 3 ──► Input Student ID ──► Find match ──► Sub-menu (Update field) ──► Save
  │
  ├──► Choice 4 ──► Input Student ID ──► Find & remove from list
  │
  ├──► Choice 5 ──► STUDENTS.clear() ──► All records wiped
  │
  ├──► Choice 6 ──► Print each subject from ALL_SUBJECTS set
  │
  └──► Choice 7 ──► Print farewell ──► break ──► END
```

---

## 1️⃣ Choice 1 — Add Student

> Collects full student details and appends a dictionary to the `STUDENTS` list. Subjects are split and added to the `ALL_SUBJECTS` set automatically.

**Fields collected:** Student ID · Name · Age · Grade · Date of Birth · Subjects (comma-separated)

```
WELCOME TO THE STUDENTS DATA ORGANIZER !

Select An Option:

1. Add Student
2.Display All Students
3.Update Student's Information
4.Delete Student
5.Delete All Students
6.Display Subjects Offered
7.Exit

Enter Your Choice: 1

Enter Student's Details:
STUDENT ID :- 111
NAME :- KRINA
AGE :- 17
GRADE :- A+
DATE OF BIRTH (YYYY-MM-DD) :- 2009-04-02
SUBJECTS (comma-separated) :- PHYSICS,CHEMISTRY,MATHS

STUDENT ADDED SUCCESSFULLY!

Enter Your Choice: 1

Enter Student's Details:
STUDENT ID :- 112
NAME :- DAXA
AGE :- 38
GRADE :- A
DATE OF BIRTH (YYYY-MM-DD) :- 1987-07-20
SUBJECTS (comma-separated) :- DRAWING,ENGLISH,GUJARATI

STUDENT ADDED SUCCESSFULLY!

Enter Your Choice: 1

Enter Student's Details:
STUDENT ID :- 113
NAME :- PREY
AGE :- 12
GRADE :- B
DATE OF BIRTH (YYYY-MM-DD) :- 2014-09-26
SUBJECTS (comma-separated) :- EVS,MATHS,COMPUTER

STUDENT ADDED SUCCESSFULLY!

Enter Your Choice: 1

Enter Student's Details:
STUDENT ID :- 114
NAME :- MAHENDRA
AGE :- 38
GRADE :- B+
DATE OF BIRTH (YYYY-MM-DD) :- 1987-04-02
SUBJECTS (comma-separated) :- SCIENCE,SOCIAL-SCIENCE,HINDI

STUDENT ADDED SUCCESSFULLY!
```

---

## 2️⃣ Choice 2 — Display All Students

> Iterates through the `STUDENTS` list and prints each record in a pipe-separated format. Shows a warning if no data exists.

```
Enter Your Choice: 2

STUDENT ID:111 | NAME:KRINA    | AGE:17 | GRADE:A+ | SUBJECTS:PHYSICS,CHEMISTRY,MATHS      | DATE OF BIRTH :2009-04-02
STUDENT ID:112 | NAME:DAXA     | AGE:38 | GRADE:A  | SUBJECTS:DRAWING,ENGLISH,GUJARATI     | DATE OF BIRTH :1987-07-20
STUDENT ID:113 | NAME:PREY     | AGE:12 | GRADE:B  | SUBJECTS:EVS,MATHS,COMPUTER           | DATE OF BIRTH :2014-09-26
STUDENT ID:114 | NAME:MAHENDRA | AGE:38 | GRADE:B+ | SUBJECTS:SCIENCE,SOCIAL-SCIENCE,HINDI | DATE OF BIRTH :1987-04-02
```

---

## 3️⃣ Choice 3 — Update Student's Information

> Finds a student by ID and opens a sub-menu to modify any one field. Loops until you press 6 to exit the update mode.

**Sub-menu options:** Name · Age · Grade · Date of Birth · Subjects · Exit

```
Enter Your Choice: 3

updating.....
Enter Student ID to Update : 111

Press 1 For Update Name.
Press 2 For Update Age.
Press 3 For Update Grade.
Press 4 For Update Date Of Birth.
Press 5 for Update Subject.
Press 6 For Exit.

Enter Your Operation: 2
Enter New Age:- 18
Update Student Successfully.

--- After Update (Choice 2) ---
STUDENT ID:111 | NAME:KRINA | AGE:18 | GRADE:A+ | SUBJECTS:PHYSICS,CHEMISTRY,MATHS | DATE OF BIRTH :2009-04-02
STUDENT ID:112 | NAME:DAXA  | AGE:38 | GRADE:A  | SUBJECTS:DRAWING,ENGLISH,GUJARATI | DATE OF BIRTH :1987-07-20
STUDENT ID:113 | NAME:PREY  | AGE:12 | GRADE:B  | SUBJECTS:EVS,MATHS,COMPUTER       | DATE OF BIRTH :2014-09-26
```

---

## 4️⃣ Choice 4 — Delete Student

> Searches the `STUDENTS` list for a matching ID and removes that entry using `list.remove()`. Confirms success or reports not found.

```
Enter Your Choice: 4

Enter Student ID to Delete : 114
Student Deleted Successfully !

--- Remaining Students (Choice 2) ---
STUDENT ID:111 | NAME:KRINA | AGE:18 | GRADE:A+ | SUBJECTS:PHYSICS,CHEMISTRY,MATHS  | DATE OF BIRTH :2009-04-02
STUDENT ID:112 | NAME:DAXA  | AGE:38 | GRADE:A  | SUBJECTS:DRAWING,ENGLISH,GUJARATI | DATE OF BIRTH :1987-07-20
STUDENT ID:113 | NAME:PREY  | AGE:12 | GRADE:B  | SUBJECTS:EVS,MATHS,COMPUTER       | DATE OF BIRTH :2014-09-26
```

---

## 5️⃣ Choice 5 — Delete All Students

> Calls `STUDENTS.clear()` to wipe every record at once. Verified by running Choice 2 immediately after.

```
Enter Your Choice: 5

All Students Data Deleted Successfully.

Enter Your Choice: 2

student's data not found here.....
```

---

## 6️⃣ Choice 6 — Display Subjects Offered

> Iterates through the `ALL_SUBJECTS` set and prints every unique subject collected across all registered students. Order may vary (sets are unordered).

```
Enter Your Choice: 6

Subject Offered:

ENGLISH
SOCIAL-SCIENCE
MATHS
PHYSICS
GUJARATI
SCIENCE
HINDI
DRAWING
EVS
CHEMISTRY
COMPUTER
```

---

## 7️⃣ Choice 7 — Exit

> Breaks out of the infinite `while True` loop and ends the program cleanly.

```
Enter Your Choice: 7

THANK YOU FOR USING STUDENT DATA ORGANIZER.
```

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐍 **Python 3.10+** | Core programming language |
| 📋 **List** | Ordered, mutable storage for all student records |
| 🔵 **Set** | Unordered, deduplicated collection of all subjects |
| 📦 **Dictionary** | Structured key-value storage for each student's fields |
| 🔗 **Tuple** | Immutable grouping of student ID and date of birth |
| ⚡ **match-case** | Python 3.10 structural pattern matching for menu routing |
| 💻 **CLI (stdin/stdout)** | User interaction via terminal input and print output |

---

## 📊 Results & Insights

After running all 7 options in sequence, here is a summary of what was observed:

| Observation | Detail |
|---|---|
| ✅ **4 students added** | IDs 111 (KRINA), 112 (DAXA), 113 (PREY), 114 (MAHENDRA) |
| 📋 **Display works correctly** | All 4 records printed with all 6 fields in correct format |
| ✏️ **Update works** | KRINA's age updated from 17 → 18 successfully |
| 🗑️ **Single delete works** | MAHENDRA (ID 114) removed; 3 records remain |
| 💥 **Clear all works** | `STUDENTS.clear()` wipes all records; Display shows empty message |
| 📚 **11 unique subjects tracked** | Set auto-removed duplicate MATHS across students |
| 🚪 **Exit works cleanly** | Program terminates with farewell message |

---

## 💡 Advantages

- **Zero Dependencies** — Runs with plain Python, no pip installs required
- **Lightweight** — Single `.py` file, under 100 lines of logic
- **Readable Code** — Clean `match-case` syntax makes menu logic easy to follow
- **Auto-Deduplication** — `set` ensures no subject appears twice in the subject list
- **Modular Design** — Each menu case is self-contained and easy to extend
- **Cross-Platform** — Runs on Windows, macOS, and Linux without changes
- **Beginner Friendly** — Great learning project for Python data structures & control flow

---

## 📄 License

```
MIT License

Copyright (c) 2025

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
| 👤 **Name**  KRINA GHORI

| 🐍 **Language** | Python 3.10+ |
| 📁 **Project** | Students Data Organizer |
| 💡 **Purpose** | Python collections practice project |


<br/>

Made with ❤️ using **Python**

![Python Love](https://img.shields.io/badge/Made%20with-%E2%9D%A4%EF%B8%8F%20Python-blue?style=for-the-badge&logo=python)

</div>

---

## 🙏 Acknowledgements

- 🐍 **Python Software Foundation** — for the clean and powerful language
- 📖 **Python Docs** — for comprehensive documentation on lists, sets, dicts & match-case
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG
- 🎓 **All learners** — who use projects like this to practice and grow their Python skills

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
