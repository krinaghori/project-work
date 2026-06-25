<div align="center">

# 🧰 MULTI-UTILITY TOOLKIT

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=38BDF8&center=true&vCenter=true&width=560&lines=DateTime+%7C+Math+%7C+Random+%7C+Files;One+Toolkit%2C+Endless+Utilities!;Built+with+Python+%F0%9F%90%8D" alt="Typing SVG" />

<br/>

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python&logoColor=white)
![Modular](https://img.shields.io/badge/Design-Modular-9D4EDD?style=for-the-badge&logo=packagist&logoColor=white)
![UUID](https://img.shields.io/badge/Concept-UUID-FF6B6B?style=for-the-badge&logo=hashnode&logoColor=white)
![File Handling](https://img.shields.io/badge/Concept-File%20Handling-F472B6?style=for-the-badge&logo=files&logoColor=white)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![CLI](https://img.shields.io/badge/Interface-CLI-orange?style=for-the-badge&logo=windowsterminal&logoColor=white)

<br/>

> 🚀 An all-in-one **command-line Python toolkit** that bundles DateTime, Math, Random Data, UUID, and File operations into a single, beautifully menu-driven program!

</div>

---

## 📑 Table of Contents

1. [Overview](#-overview)
2. [Problem Statement](#-problem-statement)
3. [Features](#-features)
4. [Key Features](#-key-features)
5. [Project Structure](#-project-structure)
6. [Project Workflow](#-project-workflow)
7. [Choice 1 — DateTime & Time Operations](#1️⃣-choice-1--datetime--time-operations)
8. [Choice 2 — Mathematical Operations](#2️⃣-choice-2--mathematical-operations)
9. [Choice 3 — Random Data Generation](#3️⃣-choice-3--random-data-generation)
10. [Choice 4 — Generate Unique Identifiers (UUID)](#4️⃣-choice-4--generate-unique-identifiers-uuid)
11. [Choice 5 — File Operations](#5️⃣-choice-5--file-operations)
12. [Choice 6 — Explore Module Attributes](#6️⃣-choice-6--explore-module-attributes)
13. [Choice 7 — Exit](#7️⃣-choice-7--exit)
14. [Invalid Choice](#-invalid-choice)
15. [Tech Stack](#-tech-stack)
16. [Results & Insights](#-results--insights)
17. [Advantages](#-advantages)
18. [License](#-license)
19. [Author](#-author)
20. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Multi-Utility Toolkit** is a menu-driven, command-line Python application that brings together **five independent custom modules** — DateTime, Math Operations, Random Data Generation, UUID Generation, and File Operations — under one clean, unified interface.

Instead of juggling separate scripts for everyday tasks like checking the date, calculating compound interest, generating a password, or reading a file, this toolkit puts everything **one menu choice away**.

Built with a **modular package architecture** (`mypackage/`), nested `while` loops, and Python 3.10's `match-case` syntax, it's a great demonstration of clean code organization, reusability, and beginner-to-intermediate Python concepts working together in one cohesive app.

---

## ❗ Problem Statement

Most beginner Python projects solve **one problem at a time** — a calculator here, a password generator there — scattered across multiple files with no common entry point. This creates friction:

- No single place to perform quick date math, calculations, or random data generation
- Repetitive boilerplate for simple file read/write tasks
- Difficulty exploring what a Python module actually contains without firing up a separate shell

**Multi-Utility Toolkit** solves this by combining everything into **one importable package + one driver script**, giving users instant access to 20+ utility operations through a single, organized menu — no internet, no database, no external dependencies.

---

## ✨ Features

| Feature | Module | Description |
|---|---|---|
| 🕐 **DateTime & Time Ops** | `datetime_module` | Current time, date difference, custom formatting, stopwatch, countdown timer |
| ➗ **Mathematical Ops** | `mathoperation_module` | Factorial, compound interest, trigonometry, area of shapes |
| 🎲 **Random Data Generation** | `random_module` | Random numbers, lists, passwords, OTPs |
| 🆔 **UUID Generator** | `uuid` (stdlib) | Instantly generate a unique identifier (UUID4) |
| 📂 **File Operations** | `file_operations` | Create, write, read, and append to text files |
| 🔎 **Module Explorer** | `__import__()` + `dir()` | Inspect any Python module's available attributes on the fly |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🧩 **Modular Package Design** | All logic split across reusable modules inside the `mypackage/` package |
| 🔁 **Nested Menu Navigation** | Each main option opens its own sub-menu loop, with a clean "Back to Main Menu" path |
| ⚡ **match-case Routing** | Uses Python 3.10's structural pattern matching for every menu level |
| ⏱️ **Live Stopwatch & Countdown** | Real-time stopwatch (press Enter to stop) and a configurable countdown timer |
| 📐 **Geometry Sub-Menu** | A dedicated nested menu just for calculating area of Rectangle, Square, Triangle & Circle |
| 🔐 **Random Utilities** | Generate random numbers, lists, strong passwords, and 6-digit OTPs in one place |
| 🆔 **Instant UUIDs** | Generates a fresh UUID4 on demand using Python's built-in `uuid` module |
| 🔬 **Live Module Inspection** | Dynamically imports any module by name and prints its full `dir()` attribute list |
| ♻️ **Infinite Main Loop** | Keeps running until the user explicitly chooses to exit |

---

## 📁 Project Structure

```
📦 Multi-Utility Toolkit
 ┣ 📜 Moduler & Packager.py        ← Main driver script (menu & routing logic)
 ┣ 📂 mypackage/
 ┃ ┣ 📜 __init__.py
 ┃ ┣ 📜 datetime_module.py         ← current_datetime, date_diff, date_style, stopwatch, countdown_timer
 ┃ ┣ 📜 mathoperation_module.py    ← factorial_number, compound_interest, trigonometry, area_Rectangle/Square/triangle/circle
 ┃ ┣ 📜 random_module.py           ← random_num, random_list, random_password, random_OTP
 ┃ ┗ 📜 file_operations.py         ← file_create, file_write, file_read, file_append
 ┗ 📄 README.md                    ← Project documentation (you're here!)
```

> Lightweight package-based project — run the main script directly with Python; all custom logic lives inside `mypackage/`.

---

## 🔁 Project Workflow

```
START
  │
  ▼
Print "WELCOME TO MULTI - UTILITY TOOLKIT" Banner
  │
  ▼
┌────────────────────────────────────────┐
│              MAIN MENU LOOP            │
│  1. DateTime and Time Operations       │
│  2. Mathematical Operations            │
│  3. Random Data Generation             │
│  4. Generate Unique Identifiers (UUID) │
│  5. File Operations (Custom Module)    │
│  6. Explore Module Attributes (dir())  │
│  7. Exit                               │
└────────────────────────────────────────┘
  │
  ├──► Choice 1 ──► Sub-Menu (6 ops) ──► Date/Time functions ──► Back to Main Menu
  │
  ├──► Choice 2 ──► Sub-Menu (4 ops) ──► Math functions ──► Choice 4 opens Shapes Sub-Sub-Menu
  │
  ├──► Choice 3 ──► Sub-Menu (4 ops) ──► Random Data functions ──► Back to Main Menu
  │
  ├──► Choice 4 ──► uuid.uuid4() ──► Print generated UUID
  │
  ├──► Choice 5 ──► Sub-Menu (4 ops) ──► File create/write/read/append ──► Back to Main Menu
  │
  ├──► Choice 6 ──► Input module name ──► __import__() ──► print(dir(module))
  │
  └──► Choice 7 ──► Print farewell ──► break ──► END
```

---

## 1️⃣ Choice 1 — DateTime & Time Operations

> Opens a dedicated sub-menu for everything date and time related — from instant timestamps to a live stopwatch and countdown timer.

**Sub-menu:** `1` Current Date & Time · `2` Date Difference · `3` Custom Format · `4` Stopwatch · `5` Countdown Timer · `6` Back to Main Menu

```
Datetime and Time Operations:
1. Display Current Date And Time
2.Calculate Difference Between Two Dates/Time
3.Format Date Into Custom Format
4.Stopwatch
5.Countdowm Timer
6.Back To Main Menu

Choose an Option: 1

Current Date And Time : 2026-06-23 21:43:41.951426
-----------------------------------------------------

Choose an Option: 2

Enter The First Date (YYYY-MM-DD):2026-01-01
Enter The Second Date (YYYY-MM-DD):2026-06-23
Difference: 173
-----------------------------------------------------

Choose an Option: 3

Enter Date (YYYY-MM-DD):2026-06-23
Custom Formate : Tuesday, 23 June 2026
-----------------------------------------------------

Choose an Option: 4

Press Enter to Stop.......
Time: 0:00:04.827555
-----------------------------------------------------

Choose an Option: 5

Enter seconds:5
5
4
3
2
1
Time's Up !!!
-----------------------------------------------------

Choose an Option: 6

Back To Main Menu......
```

---

## 2️⃣ Choice 2 — Mathematical Operations

> A complete mini math toolkit — factorial, compound interest, trigonometry, and a nested sub-menu for calculating the area of common geometric shapes.

**Sub-menu:** `1` Factorial · `2` Compound Interest · `3` Trigonometry · `4` Area of Shapes · `5` Back to Main Menu

```
Mathematical Operations:
1.Calculate Factorial
2.Solve Compound Interest
3.Trigonometric Calculations
4.Area of Geometric Shapes
5.Back to Main Menu

Choose an Option: 1

Enter a Number:5
Factorial = 120
-----------------------------------------------------

Choose an Option: 2

Enter Principal Amount: 10000
Enter Rate of Interest (%): 2
Enter Time (years): 5

Compound Interest = 1040.8080320000008
Amount = 11040.808032
-----------------------------------------------------

Choose an Option: 3

Enter angle in degrees: 45

Sin = 0.7071067811865476
Cos = 0.7071067811865476
Tan = 0.9999999999999999
Cosec = 1.414213562373095
Sec = 1.414213562373095
Cot = 1.0000000000000002
-----------------------------------------------------

Choose an Option: 4

1. Rectangle
2. Square
3. Triangle
4. Circle
5. Exit

Enter your choice: 1
Length: 10
Breadth: 5

Enter your choice: 2
Side: 20
Area Of Square = 400.0

Enter your choice: 3
Base: 15
Height: 10
Area Of Triangle = 75.0

Enter your choice: 4
Radius: 12
Area Of Circle = 452.3893421169302

Enter your choice: 5
Exiting......
```

---

## 3️⃣ Choice 3 — Random Data Generation

> Quickly generate random numbers, randomized lists, secure-looking passwords, and OTPs — all from one convenient sub-menu.

**Sub-menu:** `1` Random Number · `2` Random List · `3` Random Password · `4` Random OTP · `5` Back to Main Menu

```
Enter Your Choice :3

Rendom Data Generation:
1.Generate Random Number
2.Generate Random List
3.Create Random Password
4.Generate Random OTP
5. Back to Main Menu

Enter Your Choice :1

Random Number = 45
-----------------------------------------------------

Enter Your Choice :2

How many numbers? 5
Random List: [54, 83, 6, 89, 97]
-----------------------------------------------------

Enter Your Choice :3

Enter Password Length :5
Random Password: 7]|xB
-----------------------------------------------------

Enter Your Choice :4

Your OTP : 902318
```

---

## 4️⃣ Choice 4 — Generate Unique Identifiers (UUID)

> Instantly generates a fresh, globally unique UUID4 using Python's built-in `uuid` module — no sub-menu, just one clean output.

```
Choose an Option:
1.Datetime and Time Operations
2.Mathematical Operations
3.Random Data Generation
4.Generate Unique Identifiers (UUID)
5.File Operations (Custom Module)
6.Explore Module Attributes (dir())
7.Exit

===================================

Enter Your Choice :4

Generated UUID: bab26b69-734e-41fe-971e-e1c4f7441b92
```

---

## 5️⃣ Choice 5 — File Operations

> A complete file-handling sub-menu, powered by the custom `file_operations` module — create, write, read, and append to text files entirely from the terminal.

**Sub-menu:** `1` Create File · `2` Write to File · `3` Read File · `4` Append to File · `5` Back to Main Menu

```
File Operations:
1. Create a new file
2. Write to a file
3. Read from a file
4. Append to a file
5. Back to Main Menu

Enter your choice: 1

Enter file name: Krina
File created successfully!
-----------------------------------------------------

Enter your choice: 2

Enter file name: Krina
Enter data to write: Hello ! I am Krina.

Data written successfully!
-----------------------------------------------------

Enter your choice: 3

Enter file name: Krina
File Content:

Hello ! I am Krina.
-----------------------------------------------------

Enter your choice: 4

Enter file name: Krina
Enter data to append: I Learned About Python.....

Data appended successfully!
```

---

## 6️⃣ Choice 6 — Explore Module Attributes

> A handy built-in "mini REPL" feature — type the name of any importable Python module and instantly see every attribute it exposes via `dir()`.

```
Enter Your Choice :6

Explore Module Attributes:
Enter module name to explore: math
Available Attributes in math module:
['acos', 'acosh', 'asin', 'asinh', 'atan', 'atan2', 'atanh', 'ceil',
 'comb', 'cos', 'cosh', 'degrees', 'e', 'exp', 'factorial', 'floor',
 'gcd', 'hypot', 'inf', 'isnan', 'log', 'log10', 'pi', 'pow',
 'radians', 'sin', 'sinh', 'sqrt', 'tan', 'tanh', ...]
```

---

## 7️⃣ Choice 7 — Exit

> Breaks out of the infinite `while True` main loop and ends the program with a warm farewell message.

```
Enter Your Choice :7

Thank You For Using The Multi - Utility Toolkit !
```

---

## ❌ Invalid Choice

> Any input outside the valid menu range — at the main menu **or** any sub-menu — is caught by the `case _:` default branch, printing a friendly error instead of crashing.

```
Enter Your Choice :9

Invalid Choice
```

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐍 **Python 3.10+** | Core programming language |
| 📦 **Custom Package (`mypackage`)** | Houses all reusable utility modules |
| 🕐 **`datetime` module** | Current time, date differences, custom date formatting, stopwatch & countdown logic |
| ➗ **`math` module** | Trigonometric calculations and geometric area formulas |
| 🎲 **`random` module** | Random numbers, lists, password characters, and OTP digits |
| 🆔 **`uuid` module** | Generating UUID4 unique identifiers |
| 📂 **File I/O (`open`)** | Creating, writing, reading & appending to text files |
| ⚡ **`match-case`** | Python 3.10 structural pattern matching across every menu level |
| 🔬 **`__import__()` + `dir()`** | Dynamic module loading and attribute introspection |
| 💻 **CLI (stdin/stdout)** | All user interaction via terminal input and print output |

---

## 📊 Results & Insights

After exercising every option from the main menu and its sub-menus, here's a summary of what was observed:

| Observation | Detail |
|---|---|
| 🕐 **DateTime ops verified** | Current time, 173-day date diff, custom formatting, stopwatch & countdown all worked correctly |
| ➗ **Math ops verified** | Factorial(5)=120, compound interest calculated accurately, full trig table generated, all 4 shape areas correct |
| 🎲 **Random ops verified** | Random number, 5-item random list, 5-character password & 6-digit OTP all generated successfully |
| 🆔 **UUID generation works** | A fresh, valid UUID4 produced instantly on each call |
| 📂 **File ops verified** | Create → Write → Read → Append cycle completed successfully on a sample file |
| 🔬 **Module explorer works** | Successfully introspected attributes of standard library modules via `dir()` |
| ❌ **Invalid input handled** | Out-of-range choices at every menu level triggered `Invalid Choice` without crashing |
| 🚪 **Exit works cleanly** | Program terminates gracefully with a farewell message |

---

## 💡 Advantages

- **Zero External Dependencies** — Built entirely on Python's standard library
- **Highly Modular** — Each category of operations lives in its own importable module
- **One Unified Interface** — 20+ utility functions accessible from a single entry point
- **Beginner-to-Intermediate Friendly** — Great showcase of loops, `match-case`, file I/O, and packages working together
- **Safe Navigation** — Every sub-menu has a clear "Back to Main Menu" option, no dead ends
- **Self-Documenting** — The `dir()` explorer doubles as a built-in learning tool for any module
- **Cross-Platform** — Runs identically on Windows, macOS, and Linux
- **Extensible** — New categories can be added as new modules + one new `case` block

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
| 🐍 **Language** | Python 3.10+ |
| 📁 **Project** | Multi-Utility Toolkit |
| 💡 **Purpose** | Python Modules, Packages & CLI Design practice project |

<br/>

Made with 💙 using **Python**

![Python Love](https://img.shields.io/badge/Made%20with-%F0%9F%92%99%20Python-38BDF8?style=for-the-badge&logo=python)

</div>

---

## 🙏 Acknowledgements

- 🐍 **Python Software Foundation** — for `datetime`, `math`, `random`, `uuid` and every other rock-solid standard library module
- 📖 **Python Docs** — for comprehensive documentation on packages, modules, and `match-case` syntax
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG animations
- 🎓 **All learners** — who build multi-module CLI projects like this to sharpen their Python fundamentals

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
