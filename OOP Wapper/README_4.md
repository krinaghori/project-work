<div align="center">

# 🏢 EMPLOYEE MANAGEMENT SYSTEM

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=A855F7&center=true&vCenter=true&width=550&lines=Manage+Employees+Efficiently!;Employee+%7C+Manager+%7C+Developer;Built+with+Python+%F0%9F%90%8D+%26+OOP" alt="Typing SVG" />

<br/>

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![OOP](https://img.shields.io/badge/Paradigm-OOP-purple?style=for-the-badge&logo=python&logoColor=white)
![CLI](https://img.shields.io/badge/Interface-CLI-orange?style=for-the-badge&logo=windowsterminal&logoColor=white)

<br/>

> 🚀 A **Python OOP application** that manages employee records using **Inheritance**, **Encapsulation**, and **Polymorphism** — create Employees, Managers, and Developers, and view their details all in one place!

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
8. [Choice 1 — Create an Employee](#1️⃣-choice-1--create-an-employee)
9. [Choice 2 — Create a Manager](#2️⃣-choice-2--create-a-manager)
10. [Choice 3 — Create a Developer](#3️⃣-choice-3--create-a-developer)
11. [Choice 4 — Show Details](#4️⃣-choice-4--show-details)
12. [Choice 5 — Exit](#5️⃣-choice-5--exit)
13. [Tech Stack](#-tech-stack)
14. [Results & Insights](#-results--insights)
15. [OOP Concepts Used](#-oop-concepts-used)
16. [Advantages](#-advantages)
17. [License](#-license)
18. [Author](#-author)
19. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Employee Management System** is a menu-driven, command-line Python application built entirely on **Object-Oriented Programming** principles. It allows users to create and manage three types of employee records — general **Employees**, **Managers** (with department info), and **Developers** (with programming language info) — and display them in an organized, structured format.

Built using core Python with no external libraries, it demonstrates practical use of **classes, inheritance, encapsulation, polymorphism**, and Python 3.10's `match-case` syntax for clean menu navigation.

---

## ❗ Problem Statement

Managing employee records across different roles — Employee, Manager, Developer — manually is error-prone and difficult to scale. Organizations need a simple, reliable tool to:

- **Store** employee information (ID, name, age, salary) along with role-specific data
- **Differentiate** between Employees, Managers, and Developers without duplication
- **Display** records by type in a clean, structured format
- **Protect** sensitive data like salary and ID through proper encapsulation
- **Extend** easily when new roles or fields need to be added

This program solves that problem using a clean Python CLI backed by a well-structured OOP hierarchy — no database, no external libraries, no installation needed.

---

## ✨ Features

| Feature | Type | Description |
|---|---|---|
| 👤 **Create Employee** | Create | Register a new base employee with ID, name, age, and salary |
| 🧑‍💼 **Create Manager** | Create | Register a manager with all employee fields plus department |
| 👨‍💻 **Create Developer** | Create | Register a developer with all employee fields plus programming language |
| 📋 **Show Details** | Read | View all records filtered by type — Employee, Manager, or Developer |
| 🚪 **Exit** | System | Gracefully exit the program with a farewell message |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🔒 **Encapsulation** | All core attributes (`__emp_name`, `__emp_id`, `__emp_salary`, `__emp_age`) are private, accessed only via `getter()` and `setter()` methods |
| 🧬 **Inheritance** | `Manager` and `Developer` both inherit from the `Employee` base class, reusing all shared logic |
| 🔄 **Polymorphism** | `display()` is overridden in `Manager` and `Developer` to print role-specific extra fields |
| ⬆️ **super() Usage** | `super().__init__()` and `super().display()` are used to call parent logic before extending it |
| ⚡ **match-case Routing** | Uses Python 3.10's structural pattern matching (`match-case`) for clean, readable menu handling |
| 📦 **List-Based Storage** | All objects (Employee, Manager, Developer) are stored in a single shared list `OOP[]` |
| 🔍 **Type Filtering** | `type(emp) == Employee` is used to precisely filter and display only the matching record type |
| 🛡️ **Not-Found Handling** | Displays a clear message when no records of a requested type exist |

---

## 📁 Project Structure

```
📦 Employee Management System
 ┣ 📜 OOP_Wrapper.py    ← Main Python script (all classes and logic live here)
 ┗ 📄 README.md         ← Project documentation (you're here!)
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
┌──────────────────────────────────────┐
│            MAIN MENU LOOP            │
│  1. Create an Employee               │
│  2. Create a Manager                 │
│  3. Create a Developer               │
│  4. Show Details                     │
│  5. Exit                             │
└──────────────────────────────────────┘
  │
  ├──► Choice 1 ──► Collect Name, Age, ID, Salary ──► Create Employee() ──► Append to OOP[]
  │
  ├──► Choice 2 ──► Collect Name, Age, ID, Salary, Department ──► Create Manager() ──► Append to OOP[]
  │
  ├──► Choice 3 ──► Collect Name, Age, ID, Salary, Language ──► Create Developer() ──► Append to OOP[]
  │
  ├──► Choice 4 ──► Sub-menu ──► Filter OOP[] by type ──► Call .display() on each match
  │         │
  │         ├──► 1. Employee ──► type(emp) == Employee ──► print all Employee records
  │         ├──► 2. Manager  ──► type(emp) == Manager  ──► print all Manager records
  │         ├──► 3. Developer──► type(emp) == Developer ──► print all Developer records
  │         └──► 4. Exit     ──► return to main menu
  │
  └──► Choice 5 ──► Print farewell ──► break ──► END
```

---

## 1️⃣ Choice 1 — Create an Employee

> Collects basic employee details and creates an `Employee` object, which is appended to the shared `OOP` list. Core fields are stored as private attributes.

**Fields collected:** Employee ID · Name · Age · Salary

```
---WELCOME TO THE EMPLOYEE MANAGEMENT SYSTEM ---

CHOOSE AN OPERATION :

1. Create a Employee
2. Create an Manager
3. Create a Developer
4. Show Details
5. Exit

Enter Your Choice :1

Enter Name :krina
Enter Age :17
Enter Employee ID :a111
Enter Salary :67.89

Employee Created With Name : krina,Age : 17,ID : a111, and Salary : $67.89.


CHOOSE AN OPERATION :

1. Create a Employee
2. Create an Manager
3. Create a Developer
4. Show Details
5. Exit

Enter Your Choice :1

Enter Name :prey
Enter Age :12
Enter Employee ID :b222
Enter Salary :87.23

Employee Created With Name : prey,Age : 12,ID : b222, and Salary : $87.23.
```

**Screenshot:**

![Choice 1 – Create Employee](choice_1.png)

---

## 2️⃣ Choice 2 — Create a Manager

> Collects all base employee fields plus a **department** name. Creates a `Manager` object that inherits from `Employee` and stores the department as a public attribute.

**Fields collected:** Employee ID · Name · Age · Salary · Department

```
CHOOSE AN OPERATION :

1. Create a Employee
2. Create an Manager
3. Create a Developer
4. Show Details
5. Exit

Enter Your Choice :2

Enter Name :daxa
Enter Age :23
Enter Employee ID :c333
Enter Salary :566.80
Enter Department :sales

Manager Created With Name : daxa, Age : 23, ID : c333, Salary : $566.8, Department : sales .
```

**Screenshot:**

![Choice 2 – Create Manager](choice_2.png)

---

## 3️⃣ Choice 3 — Create a Developer

> Collects all base employee fields plus a **programming language**. Creates a `Developer` object that inherits from `Employee` and stores the language as a public attribute.

**Fields collected:** Employee ID · Name · Age · Salary · Programming Language

```
CHOOSE AN OPERATION :

1. Create a Employee
2. Create an Manager
3. Create a Developer
4. Show Details
5. Exit

Enter Your Choice :3

Enter Name :nayra
Enter Age :13
Enter Employee ID :d444
Enter Salary :980.76
Enter Programing Language :python

Developer Created With Name : nayra, Age : 13, ID : d444, Programing Language : python,Salary : $980.76 .
```

**Screenshot:**

![Choice 3 – Create Developer](choice_3.png)

---

## 4️⃣ Choice 4 — Show Details

> Opens a sub-menu that lets you view records filtered by type. The program iterates through the `OOP` list, checks each object's exact type, and calls `display()` on matching entries. Shows a "not found" message if no records of that type exist.

**Sub-menu options:** Employee · Manager · Developer · Exit

```
Enter Your Choice :4

Select An Option :
1.Employee
2.Manager
3.Developer
4.Exit

Enter Your Operetion :1

--- EMPLOYEE DETAILS---

EMPLOYEE NAME :krina
EMPLOYEE AGE :17
EMPLOYEE ID :a111
EMPLOYEE SALARY  :67.89

-------------

EMPLOYEE NAME :prey
EMPLOYEE AGE :12
EMPLOYEE ID :b222
EMPLOYEE SALARY  :87.23

-------------

Enter Your Operetion :2

--- MANAGER DETAILS---

EMPLOYEE NAME :daxa
EMPLOYEE AGE :23
EMPLOYEE ID :c333
EMPLOYEE SALARY  :566.8
EMPLOYEE DEPARTMENT :sales

-------------

Enter Your Operetion :3

--- DEVELOPER DETAILS---

EMPLOYEE NAME :nayra
EMPLOYEE AGE :13
EMPLOYEE ID :d444
EMPLOYEE SALARY  :980.76
PROGRAMMING LANGUAGE :python

-------------
```

**Screenshot:**

![Choice 4 – Show Details](choice_4.png)

---

## 5️⃣ Choice 5 — Exit

> Breaks out of the infinite `while True` loop and ends the program cleanly with a farewell message.

```
Enter Your Choice :5

Exiting The System. All Resource Have Been Freed.
```

**Screenshot:**

![Choice 5 – Exit](choice_5.png)

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐍 **Python 3.10+** | Core programming language |
| 🏛️ **Classes** | Blueprint for Employee, Manager, and Developer objects |
| 🔒 **Encapsulation** | Private `__` attributes protect sensitive employee data |
| 🧬 **Inheritance** | Manager and Developer extend the Employee base class |
| 🔄 **Polymorphism** | `display()` overridden per class for role-specific output |
| ⬆️ **super()** | Calls parent `__init__` and `display()` to avoid code duplication |
| 📦 **List** | Single `OOP[]` list stores all Employee, Manager, and Developer objects |
| ⚡ **match-case** | Python 3.10 structural pattern matching for menu routing |
| 💻 **CLI (stdin/stdout)** | User interaction via terminal input and print output |

---

## 📊 Results & Insights

After running all 5 options in sequence, here is a summary of what was observed:

| Observation | Detail |
|---|---|
| ✅ **2 Employees created** | krina (a111, $67.89) and prey (b222, $87.23) |
| ✅ **1 Manager created** | daxa (c333, $566.80, Sales department) |
| ✅ **1 Developer created** | nayra (d444, $980.76, Python language) |
| 📋 **Display works correctly** | All records filtered by type and displayed with correct fields |
| 🧬 **Inheritance confirmed** | Manager and Developer correctly call `super().display()` showing base fields first |
| 🔄 **Polymorphism confirmed** | `display()` adds department for Manager, language for Developer automatically |
| 🔒 **Encapsulation confirmed** | Private `__` attributes inaccessible directly; only visible via `display()` |
| 🚪 **Exit works cleanly** | Program terminates with "All Resource Have Been Freed" message |

---

## 🧬 OOP Concepts Used

| Concept | Where Used | Detail |
|---|---|---|
| 🔒 **Encapsulation** | `Employee` class | `__emp_name`, `__emp_age`, `__emp_id`, `__emp_salary` are private; exposed via `getter()` / `setter()` |
| 🧬 **Inheritance** | `Manager`, `Developer` | Both inherit all attributes and methods from `Employee` using `class Manager(Employee)` |
| 🔄 **Polymorphism** | `display()` method | Overridden in `Manager` (adds department) and `Developer` (adds language) |
| ⬆️ **super()** | `__init__` & `display()` | `super().__init__()` initializes parent fields; `super().display()` prints them before adding extra info |
| 🏛️ **Abstraction** | Menu system | Complex object creation is hidden behind simple numbered choices |

---

## 💡 Advantages

- **Zero Dependencies** — Runs with plain Python, no pip installs required
- **Lightweight** — Single `.py` file, clean and concise
- **Reusable Design** — Employee base class can be extended to add new roles (e.g. Intern, Director) with minimal code
- **Readable Code** — Clean `match-case` syntax and clear class structure make the code easy to follow
- **Data Protection** — Private attributes ensure salary and ID can't be accidentally overwritten
- **Polymorphic Display** — `display()` auto-adapts to each object's role without extra logic in the menu
- **Cross-Platform** — Runs on Windows, macOS, and Linux without changes
- **Beginner Friendly** — Great learning project for Python OOP — classes, inheritance, and encapsulation all in one

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
| 👤 **Name** | KRINA GHORI |
| 🐍 **Language** | Python 3.10+ |
| 📁 **Project** | Employee Management System |
| 💡 **Purpose** | Python OOP practice project — Inheritance, Encapsulation & Polymorphism |

<br/>

Made with ❤️ using **Python**

![Python Love](https://img.shields.io/badge/Made%20with-%E2%9D%A4%EF%B8%8F%20Python-blue?style=for-the-badge&logo=python)

</div>

---

## 🙏 Acknowledgements

- 🐍 **Python Software Foundation** — for the clean and powerful language
- 📖 **Python Docs** — for comprehensive documentation on classes, inheritance, and match-case
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG
- 🎓 **All learners** — who use projects like this to practice and grow their Python OOP skills

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
