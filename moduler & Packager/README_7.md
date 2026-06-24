<div align="center">

# 🧰 MULTI-UTILITY TOOLKIT

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=22D3EE&center=true&vCenter=true&width=560&lines=Date+%7C+Math+%7C+Random+%7C+UUID+%7C+Files;One+Script%2C+Six+Powerful+Tools!;Built+with+Python+%F0%9F%90%8D" alt="Typing SVG" />

<br/>

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python&logoColor=white)
![match-case](https://img.shields.io/badge/Concept-match--case-yellow?style=for-the-badge)
![Modules](https://img.shields.io/badge/Concept-Module%20Exploration-9cf?style=for-the-badge)
![File Handling](https://img.shields.io/badge/Concept-File%20Handling-pink?style=for-the-badge&logo=files&logoColor=white)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![CLI](https://img.shields.io/badge/Interface-CLI-orange?style=for-the-badge&logo=windowsterminal&logoColor=white)

<br/>

> 🧩 An all-in-one **command-line toolkit** built with Python — date & time tools, math operations, random data generators, UUIDs, file handling, and live module exploration, all from one menu!

</div>

---

## 📑 Table of Contents

1. [Overview](#-overview)
2. [Problem Statement](#-problem-statement)
3. [Features](#-features)
4. [Key Features](#-key-features)
5. [Project Structure](#-project-structure)
6. [Project Workflow](#-project-workflow)
7. [Menu 1 — Datetime and Time Operations](#1️⃣-menu-1--datetime-and-time-operations)
8. [Menu 2 — Mathematical Operations](#2️⃣-menu-2--mathematical-operations)
9. [Menu 3 — Random Data Generation](#3️⃣-menu-3--random-data-generation)
10. [Menu 4 — Generate UUID](#4️⃣-menu-4--generate-unique-identifiers-uuid)
11. [Menu 5 — File Operations](#5️⃣-menu-5--file-operations-custom-module)
12. [Menu 6 — Explore Module Attributes](#6️⃣-menu-6--explore-module-attributes-dir)
13. [Menu 7 — Exit](#7️⃣-menu-7--exit)
14. [Invalid Choice](#-invalid-choice)
15. [Tech Stack](#-tech-stack)
16. [Results & Insights](#-results--insights)
17. [Advantages](#-advantages)
18. [License](#-license)
19. [Author](#-author)
20. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Multi-Utility Toolkit** is a single-file, menu-driven Python program that bundles **six different categories of everyday utilities** into one easy-to-navigate command-line interface:

- 🕐 Date & time tools
- ➗ Mathematical calculations
- 🎲 Random data generation
- 🆔 Unique ID (UUID) generation
- 📂 Basic file operations
- 🔎 Live Python module exploration

Built entirely on Python's **standard library** (`datetime`, `math`, `random`, `string`, `uuid`, `time`, `os`) and powered by Python 3.10's **structural pattern matching** (`match-case`), this project demonstrates clean menu-driven program design with deeply nested sub-menus — all looping back gracefully to the main menu.

---

## ❗ Problem Statement

Small everyday tasks — checking a date difference, generating a password, calculating compound interest, or creating a UUID — usually require opening separate tools, websites, or writing one-off scripts. This toolkit solves that by offering:

- A **single CLI entry point** for multiple categories of common utilities
- **Reusable, looped sub-menus** so users can perform several operations without restarting
- **Zero external dependencies** — works with a stock Python installation
- A way to **explore any Python module's attributes** live, without leaving the terminal

One script. Six toolkits. Infinite small conveniences.

---

## ✨ Features

| # | Feature | Description |
|---|---|---|
| 1️⃣ | 🕐 **Datetime & Time Operations** | View current date/time, date differences, custom formatting, stopwatch & countdown timer |
| 2️⃣ | ➗ **Mathematical Operations** | Factorial, compound interest, trigonometry, and area of geometric shapes |
| 3️⃣ | 🎲 **Random Data Generation** | Random numbers, random lists, secure passwords, and OTPs |
| 4️⃣ | 🆔 **UUID Generator** | Instantly generate a unique identifier using `uuid.uuid4()` |
| 5️⃣ | 📂 **File Operations** | Create, write, read, and append to text files |
| 6️⃣ | 🔍 **Module Explorer** | Enter any module name and list all of its attributes via `dir()` |
| 7️⃣ | 🚪 **Exit** | Cleanly ends the program with a thank-you message |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| ⚡ **match-case Routing** | Every menu and sub-menu uses Python 3.10's structural pattern matching for clean, readable branching |
| 🔁 **Looping Sub-Menus** | Each category runs in its own `while True` loop, letting users repeat actions before returning to the main menu |
| ⏱️ **Live Stopwatch & Timer** | Real-time stopwatch (`Press Enter to Stop`) and a live countdown timer using `time.sleep()` |
| 🔐 **Secure Password Generator** | Builds passwords from letters, digits, and punctuation using `random.choice()` |
| 📅 **Flexible Date Formatting** | Converts any date into a readable custom format like `Tuesday, 23 June 2026` |
| 🧮 **Geometry Sub-Menu** | A nested mini-menu just for area calculations (Rectangle, Square, Triangle, Circle) |
| 🛡️ **Graceful Error Handling** | File reading catches `FileNotFoundError` so the program never crashes on a missing file |
| 🔎 **Dynamic Module Inspection** | Uses `__import__()` + `dir()` to inspect *any* importable module by name, at runtime |

---

## 📁 Project Structure

```
📦 Multi-Utility Toolkit
 ┣ 📜 Moduler & Packager.py   ← Main Python script (entire toolkit lives here)
 ┣ 📄 <your_file>.txt         ← Created dynamically via the File Operations menu
 ┗ 📄 README.md               ← Project documentation (you're here!)
```

> Single-file project — just run the script with Python. No installation, no extra packages.

---

## 🔁 Project Workflow

```
START
  │
  ▼
Print Welcome Banner
  │
  ▼
┌────────────────────────────────────────┐
│              MAIN MENU LOOP            │
│  1. Datetime and Time Operations       │
│  2. Mathematical Operations            │
│  3. Random Data Generation             │
│  4. Generate Unique Identifiers (UUID) │
│  5. File Operations (Custom Module)    │
│  6. Explore Module Attributes (dir())  │
│  7. Exit                               │
└────────────────────────────────────────┘
  │
  ├──► 1 ──► Sub-menu loop ──► Now / Diff / Format / Stopwatch / Countdown ──► Back
  │
  ├──► 2 ──► Sub-menu loop ──► Factorial / Interest / Trig / Area(sub-sub-menu) ──► Back
  │
  ├──► 3 ──► Sub-menu loop ──► Random Number / List / Password / OTP ──► Back
  │
  ├──► 4 ──► Generate & print a UUID instantly
  │
  ├──► 5 ──► Sub-menu loop ──► Create / Write / Read / Append file ──► Back
  │
  ├──► 6 ──► Input module name ──► __import__() ──► print(dir(module))
  │
  └──► 7 ──► Print farewell ──► break ──► END
```

---

## 1️⃣ Menu 1 — Datetime and Time Operations

> Six tools for working with dates and time: live timestamp, date difference, custom formatting, a live stopwatch, and a countdown timer.

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
_______________________________________________

Choose an Option: 2

Enter The First Date (YYYY-MM-DD):2026-01-01
Enter The Second Date (YYYY-MM-DD):2026-06-23
Difference: 173
_______________________________________________

Choose an Option: 3

Enter Date (YYYY-MM-DD):2026-06-23
Custom Formate : Tuesday, 23 June 2026
_______________________________________________

Choose an Option: 4

Press Enter to Stop.......
Time: 0:00:04.827555
_______________________________________________

Choose an Option: 5

Enter seconds:5
5
4
3
2
1
Time's Up !!!
_______________________________________________

Choose an Option: 6

Back To Main Menu......
```

---

## 2️⃣ Menu 2 — Mathematical Operations

> Factorial calculation, compound interest, full trigonometric ratios, and a nested area-of-shapes calculator.

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
_______________________________________________

Choose an Option: 2

Enter Principal Amount: 10000
Enter Rate of Interest (%): 2
Enter Time (years): 5

Compound Interest = 1040.8080320000008
Amount = 11040.808032
_______________________________________________

Choose an Option: 3

Enter angle in degrees: 45

Sin = 0.7071067811865476
Cos = 0.7071067811865476
Tan = 0.9999999999999999
Cosec = 1.414213562373095
Sec = 1.414213562373095
Cot = 1.0000000000000002
_______________________________________________

Choose an Option: 4

1. Rectangle
2. Square
3. Triangle
4. Circle
5. Exit

Enter your choice: 1
Length: 10
Breadth: 5
Area Of Rectangle = 50.0

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
```

---

## 3️⃣ Menu 3 — Random Data Generation

> Quick random number, a custom-length random list, a punctuation-mixed password, and a 6-digit OTP — all via Python's `random` module.

```
Rendom Data Generation:
1.Generate Random Number
2.Generate Random List
3.Create Random Password
4.Generate Random OTP
5. Back to Main Menu

Enter Your Choice :1

Random Number = 45

Enter Your Choice :2

How many numbers? 5

Random List: [54, 83, 6, 89, 97]

Enter Your Choice :3

Enter Password Length :5

Random Password: 7]|xB

Enter Your Choice :4

Your OTP : 902318
```

---

## 4️⃣ Menu 4 — Generate Unique Identifiers (UUID)

> Instantly generates a version-4 UUID using `uuid.uuid4()` — no sub-menu, just a single instant action.

```
Choose an Option: 4

Generated UUID: bab26b69-734e-41fe-971e-e1c4f7441b92
```

---

## 5️⃣ Menu 5 — File Operations (Custom Module)

> Create, write to, read from, and append to text files — with a friendly error message if a file doesn't exist yet.

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

Enter your choice: 2
Enter file name: Krina
Enter data to write: Hello ! I am Krina.
Data written successfully!

Enter your choice: 3
Enter file name: Krina

File Content:

Hello ! I am Krina.

Enter your choice: 4
Enter file name: Krina
Enter data to append: I Learned About Python.....
Data appended successfully!
```

---

## 6️⃣ Menu 6 — Explore Module Attributes (dir())

> Type in the name of *any* importable module, and the toolkit dynamically imports it and lists every attribute it exposes.

```
Enter Your Choice :6

Explore Module Attributes:
Enter module name to explore: math
Available Attributes in math module:
['__doc__', '__loader__', '__name__', '__package__', '__spec__',
 'acos', 'acosh', 'asin', 'asinh', 'atan', 'atan2', 'atanh',
 'cbrt', 'ceil', 'comb', 'copysign', 'cos', 'cosh', 'degrees',
 'dist', 'e', 'erf', 'erfc', 'exp', 'exp2', 'expm1', 'fabs',
 'factorial', 'floor', 'fma', 'fmod', 'frexp', 'fsum', 'gamma',
 'gcd', 'hypot', 'inf', 'isclose', 'isfinite', 'isinf', 'isnan',
 'isqrt', 'lcm', 'ldexp', 'lgamma', 'log', 'log10', 'log1p',
 'log2', 'modf', 'nan', 'nextafter', 'perm', 'pi', 'pow',
 'prod', 'radians', 'remainder', 'sin', 'sinh', 'sqrt',
 'sumprod', 'tan', 'tanh', 'tau', 'trunc', 'ulp']
```

---

## 7️⃣ Menu 7 — Exit

> Breaks out of the infinite `while True` main loop and ends the program with a warm farewell message.

```
Enter Your Choice :7

Thank You For Using The Multi - Utility Toolkit !
```

---

## ❌ Invalid Choice

> Any unrecognized number at any menu level is caught by the `case _:` default branch and prompts the user without crashing the program.

```
Enter Your Choice :9

Invalid Choice
```

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐍 **Python 3.10+** | Core programming language |
| 🕐 **`datetime` module** | Current time, date difference, custom formatting |
| ⏱️ **`time` module** | Countdown timer (`time.sleep()`) |
| ➗ **`math` module** | Trigonometric functions and `math.pi` for circle area |
| 🎲 **`random` module** | Random numbers, lists, passwords, and OTPs |
| 🔤 **`string` module** | Character pools (letters, digits, punctuation) for passwords |
| 🆔 **`uuid` module** | Generating version-4 UUIDs |
| 📂 **File I/O (`open`)** | Create, write, read, and append text files |
| 🔎 **`__import__()` + `dir()`** | Dynamic, runtime exploration of any Python module |
| ⚡ **match-case** | Python 3.10 structural pattern matching for all menu routing |
| 💻 **CLI (stdin/stdout)** | User interaction via terminal input and print output |

---

## 📊 Results & Insights

After exercising every menu end-to-end, here's a summary of what was observed:

| Observation | Detail |
|---|---|
| ✅ **All 6 toolkits functional** | Date/time, math, random data, UUID, files, and module explorer all ran without errors |
| ⏱️ **Stopwatch & timer work live** | Stopwatch measured `0:00:04.827555`; 5-second countdown ticked down correctly |
| 🧮 **Geometry sub-menu nested cleanly** | All four shape calculators (Rectangle, Square, Triangle, Circle) returned correct areas |
| 🔐 **Password generator produced mixed characters** | 5-character password included letters, digits, and punctuation |
| 📂 **Full file lifecycle verified** | Create → Write → Read → Append all worked on the same file in sequence |
| 🔍 **Module explorer worked on `math`** | Returned the full, accurate list of `math` module attributes |
| ❌ **Invalid input handled at every level** | Out-of-range choices triggered `Invalid Choice` without crashing |
| 🚪 **Exit works cleanly** | Program terminated with a friendly farewell message |

---

## 💡 Advantages

- **Zero Dependencies** — Runs with plain Python, no `pip install` required
- **All-in-One** — Six separate utility categories in a single script
- **Deeply Nested Menus** — Each category loops independently before returning to the main menu
- **Dynamic Module Exploration** — Inspect any standard or installed module on the fly
- **Safe File Handling** — Read operations gracefully handle missing files
- **Educational** — A great showcase of `match-case`, loops, and Python's standard library
- **Cross-Platform** — Runs identically on Windows, macOS, and Linux
- **Beginner Friendly** — Clear, linear logic that's easy to read, extend, and learn from

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
| 💡 **Purpose** | Practice project for match-case, modules, and CLI design |

<br/>

Made with 💖 using **Python**

![Python Love](https://img.shields.io/badge/Made%20with-%F0%9F%92%96%20Python-ff69b4?style=for-the-badge&logo=python)

</div>

---

## 🙏 Acknowledgements

- 🐍 **Python Software Foundation** — for the rich standard library this toolkit relies on entirely
- 📖 **Python Docs** — for documentation on `datetime`, `math`, `random`, `uuid`, and `match-case`
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG animations
- 🎓 **All learners** — who build multi-feature CLI tools like this to sharpen their Python skills

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
