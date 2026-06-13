<div align="center">

# 🏢 EMPLOYEE MANAGEMENT SYSTEM

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=F7A800&center=true&vCenter=true&width=600&lines=Manage+Employees+Efficiently!;Person+%7C+Employee+%7C+Manager+%7C+Developer;Built+with+Python+OOP+%F0%9F%90%8D" alt="Typing SVG" />

<br/>

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python&logoColor=white)
![OOP](https://img.shields.io/badge/Paradigm-OOP-purple?style=for-the-badge&logo=buffer&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![CLI](https://img.shields.io/badge/Interface-CLI-orange?style=for-the-badge&logo=windowsterminal&logoColor=white)

<br/>

> 🚀 A powerful **Object-Oriented Python CLI application** to manage an organization's workforce — create and display Persons, Employees, Managers, and Developers using full **OOP principles** like Inheritance, Encapsulation, and Polymorphism!

</div>

---

## 📑 Table of Contents

1. [Overview](#-overview)
2. [Problem Statement](#-problem-statement)
3. [OOP Concepts Used](#-oop-concepts-used)
4. [Features](#-features)
5. [Key Features](#-key-features)
6. [Project Structure](#-project-structure)
7. [Class Hierarchy](#-class-hierarchy)
8. [Project Workflow](#-project-workflow)
9. [Choice 1 — Create a Person](#1️⃣-choice-1--create-a-person)
10. [Choice 2 — Create an Employee](#2️⃣-choice-2--create-an-employee)
11. [Choice 3 — Create a Manager](#3️⃣-choice-3--create-a-manager)
12. [Choice 4 — Create a Developer](#4️⃣-choice-4--create-a-developer)
13. [Choice 5 — Show Details](#5️⃣-choice-5--show-details)
14. [Choice 6 — Exit](#6️⃣-choice-6--exit)
15. [Tech Stack](#-tech-stack)
16. [Results & Insights](#-results--insights)
17. [Advantages](#-advantages)
18. [License](#-license)
19. [Author](#-author)
20. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Employee Management System** is a menu-driven, command-line Python application that demonstrates the core pillars of **Object-Oriented Programming (OOP)**. It allows users to create and manage four types of records — Person, Employee, Manager, and Developer — storing them in a shared list and displaying them on demand.

Built entirely with core Python — no external libraries required — it showcases real-world use of **classes, inheritance, encapsulation, polymorphism**, and Python 3.10's `match-case` syntax.

---

## ❗ Problem Statement

Organizations manage multiple types of people — general persons, employees, specialized managers, and technical developers. Tracking all of these manually leads to:

- **Data inconsistency** across different roles
- **No structured hierarchy** between roles like Manager → Employee
- **Repeated code** for similar attributes (name, age, ID, salary)
- **No separation** of sensitive data (like salary) from public data

This program solves all of that using an **OOP-based Python CLI** that models real-world role hierarchies through inheritance, protects sensitive fields via encapsulation, and cleanly separates behavior per class through polymorphism.

---

## 🧠 OOP Concepts Used

| Concept | Where Used |
|---|---|
| 🏗️ **Class & Object** | `person`, `Employee`, `Manager`, `Developer` are all custom classes; each entry created is an object |
| 🔒 **Encapsulation** | `Employee` uses name-mangled private attributes (`__emp_name`, `__emp_salary`) with `getter()` and `setter()` methods |
| 🧬 **Inheritance** | `Manager` and `Developer` both inherit from `Employee`; `Employee` builds on `person`'s concept |
| 🔁 **Polymorphism** | Every class has its own `display()` method — same method name, different behavior per class |
| 🔗 **`super()`** | `Manager` and `Developer` use `super().__init__()` and `super().display()` to reuse parent class logic |

---

## ✨ Features

| Feature | Type | Description |
|---|---|---|
| 👤 **Create Person** | Create | Register a basic person with Name and Age |
| 👔 **Create Employee** | Create | Register an employee with Name, Age, ID, and Salary |
| 🧑‍💼 **Create Manager** | Create | Register a manager with all employee fields plus Department |
| 👨‍💻 **Create Developer** | Create | Register a developer with all employee fields plus Programming Language |
| 📋 **Show Details** | Read | View records filtered by type: Person, Employee, Manager, or Developer |
| 🚪 **Exit** | System | Gracefully exit the program and free all resources |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🔒 **Private Attributes** | `Employee` hides `__emp_name`, `__emp_age`, `__emp_id`, `__emp_salary` using Python name mangling |
| 🔑 **Getter & Setter** | `getter()` displays ID & salary; `setter()` updates them — proper encapsulation in action |
| 🧬 **Multi-level Inheritance** | `Manager` and `Developer` extend `Employee`, gaining all its fields and adding their own |
| 🔁 **Method Overriding** | Both `Manager` and `Developer` override `display()` to show their extra fields after calling `super().display()` |
| 🗃️ **Unified Storage** | All objects (Person, Employee, Manager, Developer) are stored together in one `OOP` list |
| 🔍 **Type-based Filtering** | `type(emp) == ClassName` ensures each "Show Details" sub-option only displays its exact type |
| ⚡ **match-case Routing** | Python 3.10 structural pattern matching handles both the main menu and the Show Details sub-menu |
| 🛡️ **Not-Found Handling** | Displays a clear "No Record Found" message when no matching type exists in the list |

---

## 📁 Project Structure

```
📦 Employee Management System
 ┣ 📜 OOP Wrapper.py    ← Main Python script (all classes and logic)
 ┗ 📄 README.md         ← Project documentation (you're here!)
```

> Single-file project — run it directly with Python, no installation needed.

---

## 🏛️ Class Hierarchy

```
object  (Python base)
  │
  ├── person
  │     ├── __init__(name, age)
  │     └── display()
  │
  └── Employee
        ├── __init__(emp_name, emp_age, emp_id, emp_salary)   [all private]
        ├── getter()
        ├── setter(id, salary)
        ├── display()
        │
        ├── Manager  (inherits Employee)
        │     ├── __init__(..., department)
        │     └── display()  →  super().display() + department
        │
        └── Developer  (inherits Employee)
              ├── __init__(..., emp_lang)
              └── display()  →  super().display() + language
```

---

## 🔁 Project Workflow

```
START
  │
  ▼
Print Welcome Message
  │
  ▼
┌──────────────────────────────────┐
│          MAIN MENU LOOP          │
│  1. Create a Person              │
│  2. Create an Employee           │
│  3. Create a Manager             │
│  4. Create a Developer           │
│  5. Show Details                 │
│  6. Exit                         │
└──────────────────────────────────┘
  │
  ├──► Choice 1 ──► Input Name, Age ──► Create person() ──► Append to OOP list
  │
  ├──► Choice 2 ──► Input Name, Age, ID, Salary ──► Create Employee() ──► Append to OOP list
  │
  ├──► Choice 3 ──► Input Name, Age, ID, Salary, Department ──► Create Manager() ──► Append
  │
  ├──► Choice 4 ──► Input Name, Age, ID, Salary, Language ──► Create Developer() ──► Append
  │
  ├──► Choice 5 ──► Sub-menu:
  │       ├── 1. Filter type == person   ──► person.display()
  │       ├── 2. Filter type == Employee ──► Employee.display()
  │       ├── 3. Filter type == Manager  ──► Manager.display()
  │       └── 4. Filter type == Developer──► Developer.display()
  │
  └──► Choice 6 ──► Print farewell ──► break ──► END
```

---

## 1️⃣ Choice 1 — Create a Person

> Collects Name and Age, creates a `person` object, and appends it to the `OOP` list.

**Fields collected:** Name · Age

```
---WELCOME TO THE EMPLOYEE MANAGEMENT SYSTEM ---

CHOOSE AN OPERATION :

1.Create a person
2. Create a Employee
3. Create an Manager
4. Create a Developer
5. Show Details
6. Exit

Enter Your Choice :1

Enter Name :PREY
Enter Age :16
Person Created With Name :PREY and Age :16.

Enter Your Choice :1

Enter Name :KRINA
Enter Age :17
Person Created With Name :KRINA and Age :17.
```

---

## 2️⃣ Choice 2 — Create an Employee

> Collects all employee details, creates an `Employee` object with **private attributes**, and appends it to the `OOP` list.

**Fields collected:** Name · Age · Employee ID · Salary

```
Enter Your Choice :2

Enter Name :DAXA
Enter Age :23
Enter Employee ID :A111
Enter Salary :1000.90

Employee Created With Name : DAXA, Age : 23, ID : A111, and Salary : $1000.9.
```

---

## 3️⃣ Choice 3 — Create a Manager

> Extends Employee creation by also collecting a **Department**. Creates a `Manager` object that inherits all `Employee` fields via `super().__init__()`.

**Fields collected:** Name · Age · Employee ID · Salary · Department

```
Enter Your Choice :3

Enter Name :NAYRA
Enter Age :23
Enter Employee ID :C333
Enter Salary :2000.00
Enter Department :SALES

Manager Created With Name : NAYRA, Age : 23, ID : C333, Salary : $2000.0, Department : SALES .
```

---

## 4️⃣ Choice 4 — Create a Developer

> Extends Employee creation by also collecting a **Programming Language**. Creates a `Developer` object that inherits all `Employee` fields via `super().__init__()`.

**Fields collected:** Name · Age · Employee ID · Salary · Programming Language

```
Enter Your Choice :4

Enter Name :RUDRANSH
Enter Age :30
Enter Employee ID :D444
Enter Salary :3000.89
Enter Programing Language :PYTHON

Developer Created With Name : RUDRANSH, Age : 30, ID : D444, Programing Language : PYTHON, Salary : $3000.89 .
```

---

## 5️⃣ Choice 5 — Show Details

> Displays a sub-menu to choose which record type to view. Iterates through the `OOP` list and filters by `type()`, calling the appropriate `display()` method on each match. Shows a "Not Found" message if no records of that type exist.

### 👤 Sub-option 1 — Person Details

```
Enter Your Choice :5

Select An Option :
1.person
2.Employee
3.Manager
4.Developer

Enter Your Operetion :1

--- PERSON DETAILS---

Name : KRINA
Age : 17

------------
Name : PREY
Age : 16

------------
```

### 👔 Sub-option 2 — Employee Details

```
Enter Your Operetion :2

--- EMPLOYEE DETAILS---

EMPLOYEE NAME :DAXA
EMPLOYEE AGE :23
EMPLOYEE ID :A111
EMPLOYEE SALARY  :1000.9

-------------

EMPLOYEE NAME :MAHENDRA
EMPLOYEE AGE :24
EMPLOYEE ID :B222
EMPLOYEE SALARY  :1000.8

-------------
```

### 🧑‍💼 Sub-option 3 — Manager Details

```
Enter Your Operetion :3

--- MANAGER DETAILS---

EMPLOYEE NAME :NAYRA
EMPLOYEE AGE :23
EMPLOYEE ID :C333
EMPLOYEE SALARY  :2000.0
EMPLOYEE DEPARTMENT :SALES

-------------
```

### 👨‍💻 Sub-option 4 — Developer Details

```
Enter Your Operetion :4

--- DEVELOPER DETAILS---

EMPLOYEE NAME :RUDRANSH
EMPLOYEE AGE :30
EMPLOYEE ID :D444
EMPLOYEE SALARY  :3000.89
PROGRAMMING LANGUAGE :PYTHON

-------------
```

---

## 6️⃣ Choice 6 — Exit

> Breaks out of the infinite `while True` loop and terminates the program cleanly, freeing all in-memory resources.

```
Enter Your Choice :6

Exiting The System. All Resource Have Been Freed.
```

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐍 **Python 3.10+** | Core programming language |
| 🏗️ **Classes & Objects** | Blueprint and instances for each workforce role |
| 🔒 **Encapsulation** | Private attributes (`__`) + getter/setter in `Employee` |
| 🧬 **Inheritance** | `Manager` and `Developer` extend `Employee` with `super()` |
| 🔁 **Polymorphism** | Overridden `display()` in each subclass |
| 📋 **List** | Single `OOP` list stores all mixed-type objects |
| ⚡ **match-case** | Python 3.10 structural pattern matching for menu routing |
| 💻 **CLI (stdin/stdout)** | User interaction via terminal input and print output |

---

## 📊 Results & Insights

After running all 6 options in sequence, here is a summary of what was observed:

| Observation | Detail |
|---|---|
| 👤 **2 Persons created** | PREY (Age 16), KRINA (Age 17) — stored as `person` objects |
| 👔 **2 Employees created** | DAXA (A111, $1000.9), MAHENDRA (B222, $1000.8) — private attributes used |
| 🧑‍💼 **1 Manager created** | NAYRA (C333, $2000.0, SALES) — inherits Employee + adds department |
| 👨‍💻 **1 Developer created** | RUDRANSH (D444, $3000.89, PYTHON) — inherits Employee + adds language |
| 🔍 **Type filtering works** | `type(emp) == ClassName` correctly separates all 4 types in Show Details |
| 🔁 **Polymorphic display works** | Each type shows only its relevant fields via overridden `display()` |
| 🚪 **Exit works cleanly** | Program terminates with resource-freed message |

---

## 💡 Advantages

- **Zero Dependencies** — Runs with plain Python, no pip installs required
- **True OOP Design** — Demonstrates all 4 OOP pillars: Encapsulation, Inheritance, Polymorphism, Abstraction
- **Unified Storage** — All object types co-exist in one list, just like a real DB table
- **Extensible Architecture** — New roles (e.g., `Intern`, `TeamLead`) can be added by simply creating a new subclass of `Employee`
- **Safe Data Access** — Private fields in `Employee` prevent accidental direct modification
- **Readable Code** — `match-case` and `super()` keep logic clean and non-repetitive
- **Cross-Platform** — Runs on Windows, macOS, and Linux without any changes
- **Beginner Friendly** — Ideal learning project for Python OOP concepts

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
| 💡 **Purpose** | Python OOP concepts practice project |

<br/>

Made with ❤️ using **Python OOP**

![Python Love](https://img.shields.io/badge/Made%20with-%E2%9D%A4%EF%B8%8F%20Python%20OOP-blueviolet?style=for-the-badge&logo=python)

</div>

---

## 🙏 Acknowledgements

- 🐍 **Python Software Foundation** — for the elegant and powerful language
- 📖 **Python Docs** — for comprehensive documentation on classes, inheritance, and match-case
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG
- 🎓 **All learners** — who use projects like this to master Python OOP fundamentals

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
