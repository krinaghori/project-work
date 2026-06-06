<div align="center">

# 🔢 DATA ANALYZER & TRANSFORMER PROGRAM

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=4FC3F7&center=true&vCenter=true&width=600&lines=Analyze+Your+Data+Instantly!;Input+%7C+Filter+%7C+Sort+%7C+Statistics;Built+with+Python+%F0%9F%90%8D" alt="Typing SVG" />

<br/>

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![CLI](https://img.shields.io/badge/Interface-CLI-orange?style=for-the-badge&logo=windowsterminal&logoColor=white)

<br/>

> 🚀 A powerful **command-line Python application** to input numeric data, analyze it statistically, filter by threshold, sort it, and compute factorials — all from a simple numbered menu!

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
8. [Choice 1 — Input Data](#1️⃣-choice-1--input-data)
9. [Choice 2 — Display Data Summary](#2️⃣-choice-2--display-data-summary)
10. [Choice 3 — Calculate Factorial](#3️⃣-choice-3--calculate-factorial)
11. [Choice 4 — Filter Data by Threshold](#4️⃣-choice-4--filter-data-by-threshold)
12. [Choice 5 — Sort Data](#5️⃣-choice-5--sort-data)
13. [Choice 6 — Display Dataset Statistics](#6️⃣-choice-6--display-dataset-statistics)
14. [Choice 7 — Exit](#7️⃣-choice-7--exit)
15. [Tech Stack](#-tech-stack)
16. [Results & Insights](#-results--insights)
17. [Advantages](#-advantages)
18. [License](#-license)
19. [Author](#-author)
20. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Data Analyzer & Transformer Program** is a menu-driven, command-line Python application designed to help users input, analyze, and transform numeric datasets interactively. It supports data input, statistical summary, factorial calculation, threshold-based filtering, sorting, and a full statistics table — all with clean CLI output.

Built entirely with core Python — no external libraries required — it demonstrates practical use of **lists, lambda functions, recursion**, and Python 3.10's `match-case` syntax.

---

## ❗ Problem Statement

Analyzing numeric data manually is tedious and error-prone. Students, analysts, and developers need a quick tool to:

- **Store** a custom list of numbers in one place
- **Summarize** data instantly (min, max, sum, average, count)
- **Calculate** factorials without writing separate scripts
- **Filter** data into above / below / equal groups using a threshold
- **Sort** data in ascending or descending order on demand
- **View** a clean formatted statistics table at any time

This program solves that problem with a lightweight Python CLI that runs anywhere Python is installed — no setup, no database, no internet needed.

---

## ✨ Features

| Feature | Type | Description |
|---|---|---|
| 📥 **Input Data** | Create | Enter a custom-sized numeric array |
| 📊 **Display Data Summary** | Read | View total elements, min, max, sum, and average |
| 🔢 **Calculate Factorial** | Compute | Recursively calculate factorial of any number |
| 🔍 **Filter by Threshold** | Filter | Split data into above / below / equal groups |
| 🔃 **Sort Data** | Transform | Sort list ascending or descending via sub-menu |
| 📈 **Dataset Statistics** | Read | View a full formatted statistics table |
| 🚪 **Exit** | System | Gracefully exit the program with a farewell message |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🔁 **Recursive Factorial** | `fact(n)` uses recursion to compute `n!` cleanly and efficiently |
| 🔍 **Lambda Filtering** | Uses Python's built-in `filter()` with `lambda` for threshold-based data splitting |
| 🔃 **Nested Sort Sub-Menu** | A nested `match-case` inside Case 5 handles ascending/descending sort options |
| 📊 **Formatted Statistics Table** | Case 6 renders a pipe-aligned table with all key dataset stats at a glance |
| ⚡ **match-case Routing** | Uses Python 3.10's structural pattern matching (`match-case`) for clean, readable menu handling |
| 🛡️ **Invalid Input Handler** | `case _` catches any unrecognized input and prompts the user to try again |
| 📋 **Live List Mutations** | `arr.sort()` directly mutates the stored list, reflecting changes in all subsequent operations |
| 🔄 **Persistent Data** | Data entered in Case 1 persists across all other menu options within the same session |

---

## 📁 Project Structure

```
📦 Data Analyzer & Transformer Program
 ┣ 📜 data_analyzer___tranformer_program.py   ← Main Python script (all logic lives here)
 ┗ 📄 README.md                               ← Project documentation (you're here!)
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
┌──────────────────────────────────────────┐
│              MAIN MENU LOOP              │
│  1. Input Data                           │
│  2. Display Data Summary                 │
│  3. Calculate Factorial                  │
│  4. Filter Data by Threshold             │
│  5. Sort Data                            │
│  6. Display Dataset Statistics           │
│  7. Exit Program                         │
└──────────────────────────────────────────┘
  │
  ├──► Choice 1 ──► Input Array Size ──► Collect Numbers ──► Store in arr[]
  │
  ├──► Choice 2 ──► Read arr[] ──► Print len, min, max, sum, average
  │
  ├──► Choice 3 ──► Input number ──► Call fact(n) recursively ──► Print result
  │
  ├──► Choice 4 ──► Input threshold ──► filter() with lambda ──► Print above/below/equal
  │
  ├──► Choice 5 ──► Sub-menu ──► arr.sort() or arr.sort(reverse=True) ──► Print sorted list
  │
  ├──► Choice 6 ──► Read arr[] ──► Print formatted statistics table
  │
  └──► Choice 7 ──► Print farewell ──► break ──► END
```

---

## 1️⃣ Choice 1 — Input Data

> Collects the desired array size from the user, then prompts for each integer one by one and appends them to `arr[]`. Confirms successful storage at the end.

**Fields collected:** Array Size · Integer Values (one per prompt)

```
WELCOME TO DATA ANALYZER AND TRANSFORMER PROGRAM.

select an option:

1.Input Data.
2.Display Data Summary.
3.Calculate Factorial.
4.Filter Data by Threshold.
5.Sort Data.
6.Display Dataset Statistics.
7.Exit Program.

Enter Your Choice: 1

Enter Array Size: 5

Enter Objects: 11
Enter Objects: 22
Enter Objects: 44
Enter Objects: 66
Enter Objects: 88
LIST: [11, 22, 44, 66, 88]

Data Has Been Stored Successfully !
```

---

## 2️⃣ Choice 2 — Display Data Summary

> Reads the stored `arr[]` and computes all key statistics using Python's built-in `len()`, `min()`, `max()`, `sum()` functions, then prints them in a clean labeled format.

```
Enter Your Choice: 2

Data Summary:

Total elements: 5
Minimum Value: 11
Maximum Value: 88
Sum Of All Value: 231
Average Value: 46.2
```

---

## 3️⃣ Choice 3 — Calculate Factorial

> Takes a number from the user and passes it to the recursive `fact(n)` function. Base case: `fact(0) = 1`. Recursive case: `fact(n) = n * fact(n-1)`.

```
Enter Your Choice: 3

Enter a Number To Calculate Its Factorial: 6

factorial of 6 is :- 720
```

---

## 4️⃣ Choice 4 — Filter Data by Threshold

> Takes a threshold value from the user and uses Python's `filter()` with `lambda` to split `arr[]` into three groups: values above, below, and equal to the threshold.

```
Enter Your Choice: 4

Enter a Threshold Value To Filter Out
Your_List: [11, 22, 44, 66, 88]

Enter Threshold Value: 44

Values ABOVE 44: [66, 88]
Values BELOW 44: [11, 22]
Values EQUAL to 44: [44]
```

---

## 5️⃣ Choice 5 — Sort Data

> Opens a nested sub-menu for sorting. Calls `arr.sort()` for ascending or `arr.sort(reverse=True)` for descending. The sort mutates the original list permanently for that session.

**Sub-menu options:** Ascending Order · Descending Order · Exit

```
Enter Your Choice: 5

..MENU..
1. Ascending Order.
2. Descending Order.
3. Exit From This Program.

Choose Sorting Option: 1

Sorted Data In Ascending Order:
[11, 22, 44, 66, 88]

Choose Sorting Option: 2

Sorted Data In Descending Order:
[88, 66, 44, 22, 11]
```

---

## 6️⃣ Choice 6 — Display Dataset Statistics

> Reads `arr[]` and renders a full pipe-aligned statistics table including total count, min, max, sum, average, and the sorted version of the dataset — all in one view.

```
Enter Your Choice: 6

Dataset statistics:

-------------------------------------------
 DATASET STATISTICS  || VALUE
-------------------------------------------
 TOTAL_NUMBER        || 5
 MINIMUM_NUMBER      || 11
 MAXIMUM_NUMBER      || 88
 TOTAL_SUM           || 231
 AVERAGE_VALUE       || 46.2
 SORTED_DATA         || [11, 22, 44, 66, 88]
-------------------------------------------
```

---

## 7️⃣ Choice 7 — Exit

> Breaks out of the infinite `while True` loop and ends the program cleanly with a farewell message.

```
Enter Your Choice: 7

Thanks For Using The Data Analyzer And Transformer Program. Goodbye !
```

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐍 **Python 3.10+** | Core programming language |
| 📋 **List** | Ordered, mutable storage for all numeric data (`arr[]`) |
| 🔁 **Recursion** | Used in `fact(n)` to compute factorials without loops |
| 🔍 **Lambda + filter()** | Functional-style threshold filtering in Case 4 |
| ⚡ **match-case** | Python 3.10 structural pattern matching for menu routing |
| 🔃 **list.sort()** | In-place sorting for ascending and descending order |
| 💻 **CLI (stdin/stdout)** | User interaction via terminal input and print output |

---

## 📊 Results & Insights

After running all 7 options in sequence with the dataset `[11, 22, 44, 66, 88]`, here is a summary of what was observed:

| Observation | Detail |
|---|---|
| ✅ **Data stored successfully** | 5 integers stored: `[11, 22, 44, 66, 88]` |
| 📊 **Summary correct** | Min: 11, Max: 88, Sum: 231, Avg: 46.2 |
| 🔢 **Factorial works** | `fact(6)` returned `720` correctly via recursion |
| 🔍 **Filtering accurate** | Threshold 44 → Above: `[66, 88]`, Below: `[11, 22]`, Equal: `[44]` |
| 🔃 **Both sorts work** | Ascending: `[11,22,44,66,88]` · Descending: `[88,66,44,22,11]` |
| 📈 **Statistics table rendered** | All 6 fields displayed cleanly in pipe-aligned format |
| 🚪 **Exit works cleanly** | Program terminates with farewell message |

---

## 💡 Advantages

- **Zero Dependencies** — Runs with plain Python, no pip installs required
- **Lightweight** — Single `.py` file, under 80 lines of logic
- **Readable Code** — Clean `match-case` syntax makes menu logic easy to follow
- **Recursive Design** — `fact(n)` demonstrates elegant recursion for factorial computation
- **Functional Filtering** — `filter()` + `lambda` shows functional programming in Python
- **Cross-Platform** — Runs on Windows, macOS, and Linux without changes
- **Beginner Friendly** — Great learning project for Python built-ins, loops & control flow

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
| 📁 **Project** | Data Analyzer & Transformer Program |
| 💡 **Purpose** | Python data structures & built-ins practice project |

<br/>

Made with ❤️ using **Python**

![Python Love](https://img.shields.io/badge/Made%20with-%E2%9D%A4%EF%B8%8F%20Python-blue?style=for-the-badge&logo=python)

</div>

---

## 🙏 Acknowledgements

- 🐍 **Python Software Foundation** — for the clean and powerful language
- 📖 **Python Docs** — for comprehensive documentation on lists, lambdas, recursion & match-case
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG
- 🎓 **All learners** — who use projects like this to practice and grow their Python skills

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
