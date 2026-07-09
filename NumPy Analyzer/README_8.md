<div align="center">

# 🔢 NUMPY ANALYZER

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=38BDF8&center=true&vCenter=true&width=560&lines=Create+%7C+Compute+%7C+Combine+%7C+Analyze;One+Menu%2C+Every+NumPy+Operation!;Built+with+Python+%F0%9F%90%8D" alt="Typing SVG" />

<br/>

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-Powered-013243?style=for-the-badge&logo=numpy&logoColor=white)
![Modular](https://img.shields.io/badge/Design-Modular-9D4EDD?style=for-the-badge&logo=packagist&logoColor=white)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![CLI](https://img.shields.io/badge/Interface-CLI-orange?style=for-the-badge&logo=windowsterminal&logoColor=white)

<br/>

> 🚀 An interactive **command-line Python toolkit** that bundles Array Creation, Mathematical Operations, Combining/Splitting, Searching/Sorting/Filtering, and Statistics into a single, beautifully menu-driven NumPy program!

</div>

---

## 📑 Table of Contents

1. [Overview](#-overview)
2. [Problem Statement](#-problem-statement)
3. [Features](#-features)
4. [Key Features](#-key-features)
5. [Project Structure](#-project-structure)
6. [Project Workflow](#-project-workflow)
7. [Choice 1 — Create a NumPy Array](#1️⃣-choice-1--create-a-numpy-array)
8. [Choice 2 — Perform Mathematical Operations](#2️⃣-choice-2--perform-mathematical-operations)
9. [Choice 3 — Combine or Split Arrays](#3️⃣-choice-3--combine-or-split-arrays)
10. [Choice 4 — Search, Sort, or Filter Arrays](#4️⃣-choice-4--search-sort-or-filter-arrays)
11. [Choice 5 — Compute Aggregates and Statistics](#5️⃣-choice-5--compute-aggregates-and-statistics)
12. [Choice 6 — Exit](#6️⃣-choice-6--exit)
13. [Invalid Choice](#-invalid-choice)
14. [Tech Stack](#-tech-stack)
15. [Results & Insights](#-results--insights)
16. [Advantages](#-advantages)
17. [License](#-license)
18. [Author](#-author)
19. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**NumPy Analyzer** is a menu-driven, command-line Python application that brings together **five independent custom modules** — Array Manager, Math Operations, Combine/Split Arrays, Search/Sort/Filter, and Compute Statistics — under one clean, unified interface.

Instead of writing separate scripts every time you want to create an array, run element-wise math, reshape data, search for a value, or compute a statistic, this toolkit puts everything **one menu choice away**.

Built with a **modular package architecture** (`analyzer/`), a persistent driver loop, and Python 3.10's `match-case` syntax, it's a great demonstration of clean code organization, reusability, and NumPy fundamentals working together in one cohesive app.

---

## ❗ Problem Statement

Most beginner NumPy exercises solve **one problem at a time** — a script to create an array here, a script to compute a mean there — scattered across multiple files with no common entry point. This creates friction:

- No single place to create, transform, and analyze arrays in one session
- Repetitive boilerplate for simple operations like stacking or filtering
- Difficulty exploring NumPy's capabilities without writing a new script for every operation

**NumPy Analyzer** solves this by combining everything into **one importable package + one driver script**, giving users instant access to 25+ NumPy operations through a single, organized menu — the array created in Option 1 flows straight into every other module.

---

## ✨ Features

| Feature | Module | Description |
|---|---|---|
| 🧱 **Array Creation** | `array_manager` | Build 1D, 2D, and 3D NumPy arrays interactively |
| ➗ **Mathematical Operations** | `math_operations` | Addition, Subtraction, Multiplication, Division on arrays |
| 🔗 **Combine / Split Arrays** | `combine_split_arrays` | Vertical/Horizontal stacking and Vertical/Horizontal splitting |
| 🔍 **Search, Sort & Filter** | `search_sort_filter` | Locate elements, sort ascending/descending, filter by condition |
| 📊 **Aggregates & Statistics** | `compute_statistics` | Sum, Mean, Median, Standard Deviation, Variance, Min, Max |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🧩 **Modular Package Design** | All logic split across reusable classes inside the `analyzer/` package |
| 🔁 **Shared Array State** | The array created in Option 1 is passed into every other module automatically |
| ⚡ **match-case Routing** | Uses Python 3.10's structural pattern matching for the main menu |
| 🧱 **Multi-Dimensional Creation** | Build 1D, 2D, and 3D arrays with custom shape and element input |
| ➗ **Full Arithmetic Suite** | Add, subtract, multiply, and divide two arrays element-wise |
| 🔗 **Stack & Split Toolkit** | Vertical/horizontal stacking plus vertical/horizontal splitting into N parts |
| 🔍 **Search / Sort / Filter** | `np.where()` search, ascending/descending sort, condition-based filtering |
| 📊 **Full Statistics Suite** | Sum, Mean, Median, Std Dev, Variance, Min, and Max in one sub-menu |
| ♻️ **Infinite Main Loop** | Keeps running until the user explicitly chooses to exit |

---

## 📁 Project Structure

```
📦 NumPy Analyzer
 ┣ 📜 NumPy_Analyzer.py             ← Main driver script (menu & routing logic)
 ┣ 📂 analyzer/
 ┃ ┣ 📜 __init__.py
 ┃ ┣ 📜 array_manager.py            ← DataAnalytics  → create_array()
 ┃ ┣ 📜 math_operations.py          ← DataAnalytics2 → mathematical_operations()
 ┃ ┣ 📜 combine_split_arrays.py     ← DataAnalytics3 → combine_split_arrays()
 ┃ ┣ 📜 search_sort_filter.py       ← DataAnalytics4 → search_sort_filter()
 ┃ ┗ 📜 compute_statistics.py       ← DataAnalytics5 → compute_statistics()
 ┗ 📄 README.md                     ← Project documentation (you're here!)
```

> Lightweight package-based project — run the main script directly with Python; all custom logic lives inside `analyzer/`.

---

## 🔁 Project Workflow

```
START
  │
  ▼
Print "===== NumPy Analyzer =====" Banner
  │
  ▼
┌──────────────────────────────────────────┐
│                MAIN MENU LOOP             │
│  1. Create a NumPy Array                  │
│  2. Perform Mathematical Operations       │
│  3. Combine or Split Arrays               │
│  4. Search, Sort, or Filter Arrays        │
│  5. Compute Aggregates and Statistics     │
│  6. Exit                                  │
└──────────────────────────────────────────┘
  │
  ├──► Choice 1 ──► Select 1D/2D/3D ──► Build array ──► Stored in obj.arr
  │
  ├──► Choice 2 ──► obj2.arr = obj.arr ──► Sub-Menu (4 ops) ──► Addition/Subtraction/Multiplication/Division
  │
  ├──► Choice 3 ──► obj3.arr = obj.arr ──► Sub-Menu (2 ops) ──► Combine (stack) / Split
  │
  ├──► Choice 4 ──► obj4.arr = obj.arr ──► Sub-Menu (3 ops) ──► Search / Sort / Filter
  │
  ├──► Choice 5 ──► obj5.arr = obj.arr ──► Sub-Menu (7 ops) ──► Sum/Mean/Median/Std/Var/Min/Max
  │
  └──► Choice 6 ──► Print farewell ──► break ──► END
```

---

## 1️⃣ Choice 1 — Create a NumPy Array

> Opens a dedicated sub-menu for building arrays — choose **1D**, **2D**, or **3D**, then supply the shape and elements.

**Sub-menu:** `1` 1D Array · `2` 2D Array · `3` 3D Array · `4` Exit

```
===================== 1D ARRAY EXAMPLE =====================

Select the type of array to create:
1. 1D Array
2. 2D Array
3. 3D Array
4. Exit

Enter your choice: 1

Enter number of elements: 5
Enter 5 elements separated by space: 1 2 3 4 5

Array created successfully:
[1 2 3 4 5]


===================== 2D ARRAY EXAMPLE ======================

Enter your choice: 2

Enter the number of rows: 2
Enter the number of columns: 2
Enter 4 elements separated by space: 11 22 33 44

Array created successfully:
[[11 22]
 [33 44]]

===================== 3D ARRAY EXAMPLE ======================

Enter your choice: 3

Enter depth: 1
Enter rows: 3
Enter columns: 3
Enter 9 elements separated by space: 1 2 3 4 5 6 7 8 9

Array created successfully:
[[[1 2 3]
  [4 5 6]
  [7 8 9]]]
```

---

## 2️⃣ Choice 2 — Perform Mathematical Operations

> A complete element-wise math toolkit — Addition, Subtraction, Multiplication, and Division between the created array and a second user-supplied array.

**Sub-menu:** `1` Addition · `2` Subtraction · `3` Multiplication · `4` Division · `5` Exit

```
================ MATHEMATICAL OPERATIONS - ADDITION EXAMPLE ================

Enter your choice: 2

Mathematical Operations
1. Addition
2. Subtraction
3. Multiplication
4. Division
5. Exit

Enter your choice: 1

Enter 9 elements:
9 8 7 6 5 4 3 2 1

Original Array:
[[1 2 3]
 [4 5 6]
 [7 8 9]]

Second Array:
[[9 8 7]
 [6 5 4]
 [3 2 1]]

Result of Addition:
[[10 10 10]
 [10 10 10]
 [10 10 10]]
-----------------------------------------------------------------------------
================ MATHEMATICAL OPERATIONS - SUBTRACTION EXAMPLE =============

Enter your choice: 2

Enter 9 elements:
1 2 3 4 5 6 7 8 9

Result of Subtraction:
[[0 0 0]
 [0 0 0]
 [0 0 0]]
-----------------------------------------------------------------------------
============== MATHEMATICAL OPERATIONS - MULTIPLICATION EXAMPLE ============

Enter your choice: 3

Enter 9 elements:
1 2 3 4 5 6 7 8 9

Result of Multiplication:
[[ 1  4  9]
 [16 25 36]
 [49 64 81]]
-----------------------------------------------------------------------------
================ MATHEMATICAL OPERATIONS - DIVISION EXAMPLE ================

Enter your choice: 4

Enter 9 elements:
1 2 3 4 5 6 7 8 9

Result of Division:
[[1. 1. 1.]
 [1. 1. 1.]
 [1. 1. 1.]]
```

---

## 3️⃣ Choice 3 — Combine or Split Arrays

> Stack two arrays vertically or horizontally, or split a single array into equal horizontal/vertical parts.

**Sub-menu:** `1` Combine Arrays (`Vertical Stack` / `Horizontal Stack`) · `2` Split Array (`Vertical Split` / `Horizontal Split`) · `3` Exit

```
==================== COMBINE ARRAYS (VERTICAL STACK) =======================

Enter your choice: 3

Combine / Split Arrays
1. Combine Arrays
2. Split Array
3. Exit

Enter your choice: 1

Enter 9 elements for second array:
11 22 33 44 55 66 77 88 99

1. Vertical Stack
2. Horizontal Stack

Enter your choice: 1

Vertical Stack:
[[ 1  2  3]
 [ 4  5  6]
 [ 7  8  9]]

[[11 22 33]
 [44 55 66]
 [77 88 99]]
------------------------------------------------------------------------------
==================== COMBINE ARRAYS (HORIZONTAL STACK) =====================

Enter your choice: 2

Horizontal Stack:
[[ 1  2  3]
 [ 4  5  6]
 [ 7  8  9]
 [11 22 33]
 [44 55 66]
 [77 88 99]]
------------------------------------------------------------------------------
========================= SPLIT ARRAY (HORIZONTAL SPLIT) ===================

Enter your choice: 2

1. Vertical Split
2. Horizontal Split

Enter your choice: 2

Enter number of parts: 3

Horizontal Split:
Part 1
[[1 2 3]]
Part 2
[[4 5 6]]
Part 3
[[7 8 9]]
```

---

## 4️⃣ Choice 4 — Search, Sort, or Filter Arrays

> Locate an element's index with `np.where()`, sort the array in ascending/descending order, or filter it by a condition.

**Sub-menu:** `1` Search Element · `2` Sort Array (`Ascending` / `Descending`) · `3` Filter Array · `4` Exit

```
========================= SEARCH ELEMENT EXAMPLE =========================

Enter your choice: 4

Search, Sort, or Filter Arrays
1. Search Element
2. Sort Array
3. Filter Array
4. Exit

Enter your choice: 1

Enter element to search: 3

Element found at index:
(array([0]), array([0]), array([2]))
----------------------------------------------------------------------------
=========================== SORT ARRAY EXAMPLE ============================

Enter your choice: 2

1. Ascending Order
2. Descending Order

Enter your choice: 2

Sorted Array (Descending):
[9 8 7 6 5 4 3 2 1]
----------------------------------------------------------------------------
========================== FILTER ARRAY EXAMPLE ===========================

Enter your choice: 3

Show elements greater than: 5

Filtered Array:
[6 7 8 9]
```

---

## 5️⃣ Choice 5 — Compute Aggregates and Statistics

> A full statistics sub-menu — Sum, Mean, Median, Standard Deviation, Variance, Minimum, and Maximum, computed instantly on the current array.

**Sub-menu:** `1` Sum · `2` Mean · `3` Median · `4` Standard Deviation · `5` Variance · `6` Minimum · `7` Maximum · `8` Exit

```
==================== COMPUTE AGGREGATES AND STATISTICS EXAMPLE ==============

Enter your choice: 5

Compute Aggregates and Statistics
1. Sum
2. Mean
3. Median
4. Standard Deviation
5. Variance
6. Minimum
7. Maximum
8. Exit
-------------------------------------------------------------------------
Enter your choice: 1
Sum = 45
-------------------------------------------------------------------------
Enter your choice: 2
Mean = 5.0
-------------------------------------------------------------------------
Enter your choice: 3
Median = 5.0
-------------------------------------------------------------------------
Enter your choice: 4
Standard Deviation = 2.581988897471611
-------------------------------------------------------------------------
Enter your choice: 5
Variance = 6.666666666666667
-------------------------------------------------------------------------
Enter your choice: 6
Minimum = 1
-------------------------------------------------------------------------
Enter your choice: 7
Maximum = 9
-------------------------------------------------------------------------
Enter your choice: 8
Exit
```

---

## 6️⃣ Choice 6 — Exit

> Breaks out of the infinite `while True` main loop and ends the program with a warm farewell message.

```
===== NumPy Analyzer =====

1. Create a NumPy Array
2. Perform Mathematical Operations
3. Combine or Split Arrays
4. Search, Sort, or Filter Arrays
5. Compute Aggregates and Statistics
6. Exit

Enter your choice: 6

Thank you for using the NumPy Analyzer!
```

---

## ❌ Invalid Choice

> Any input outside the valid menu range at the main menu is caught by the `case _:` default branch, printing a friendly notice instead of crashing.

```
Enter your choice: 9

This option is not added yet.
```

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐍 **Python 3.10+** | Core programming language |
| 📦 **Custom Package (`analyzer`)** | Houses all reusable array-analysis modules |
| 🔢 **NumPy** | Array creation, math operations, stacking/splitting, search/sort/filter, statistics |
| ⚡ **`match-case`** | Python 3.10 structural pattern matching for main menu routing |
| 💻 **CLI (stdin/stdout)** | All user interaction via terminal input and print output |

---

## 📊 Results & Insights

After exercising every option from the main menu and its sub-menus, here's a summary of what was observed:

| Observation | Detail |
|---|---|
| 🧱 **Array creation verified** | 1D (5 elements), 2D (2×2), and 3D (1×3×3) arrays all built correctly |
| ➗ **Math ops verified** | Addition, Subtraction, Multiplication, and Division all produced correct element-wise results |
| 🔗 **Combine/Split verified** | Vertical & horizontal stacking, plus a 3-way horizontal split, all worked as expected |
| 🔍 **Search/Sort/Filter verified** | Element search returned correct index tuple, descending sort and >5 filter both correct |
| 📊 **Statistics verified** | Sum=45, Mean=5.0, Median=5.0, StdDev≈2.58, Variance≈6.67, Min=1, Max=9 on a 1–9 array |
| ❌ **Invalid input handled** | Out-of-range choices at the main menu triggered a friendly message without crashing |
| 🚪 **Exit works cleanly** | Program terminates gracefully with a farewell message |

---

## 💡 Advantages

- **Single Dependency** — Built entirely on NumPy, no extra external libraries
- **Highly Modular** — Each category of operations lives in its own class/module
- **One Unified Interface** — 25+ NumPy operations accessible from a single entry point
- **Shared State Across Modules** — Create an array once, reuse it in math, combine/split, search/sort/filter, and statistics
- **Beginner-to-Intermediate Friendly** — Great showcase of loops, `match-case`, OOP, and NumPy fundamentals working together
- **Self-Contained Examples** — Every sub-menu mirrors real NumPy function calls (`np.where`, `np.sort`, `np.hstack`, `np.vstack`, `np.array_split`, etc.)
- **Cross-Platform** — Runs identically on Windows, macOS, and Linux
- **Extensible** — New operations can be added as new methods + one new `case` block

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
| 📁 **Project** | NumPy Analyzer |
| 💡 **Purpose** | NumPy, OOP & CLI Design practice project |

<br/>

Made with 💙 using **Python & NumPy**

![Python Love](https://img.shields.io/badge/Made%20with-%F0%9F%92%99%20Python-38BDF8?style=for-the-badge&logo=python)

</div>

---

## 🙏 Acknowledgements

- 🔢 **NumPy Developers** — for the powerful array library at the core of this entire project
- 🐍 **Python Software Foundation** — for `match-case` and every rock-solid language feature used here
- 📖 **NumPy & Python Docs** — for comprehensive documentation on array operations and pattern matching
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG animations
- 🎓 **All learners** — who build multi-module CLI projects like this to sharpen their NumPy fundamentals

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
