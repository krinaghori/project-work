<div align="center">

# 📔 PERSONAL JOURNAL MANAGER

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=F7A541&center=true&vCenter=true&width=500&lines=Write+Your+Thoughts+Daily!;Add+%7C+View+%7C+Search+%7C+Delete;Built+with+Python+%F0%9F%90%8D" alt="Typing SVG" />

<br/>

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![CLI](https://img.shields.io/badge/Interface-CLI-orange?style=for-the-badge&logo=windowsterminal&logoColor=white)
![File I/O](https://img.shields.io/badge/File-Handling-purple?style=for-the-badge&logo=files&logoColor=white)

<br/>

> 🚀 A lightweight **command-line Python application** to manage your personal journal — write, read, search, and delete entries stored in a text file with ease!

</div>

---

## 📑 Table of Contents

1. [Overview](#-overview)
2. [Problem Statement](#-problem-statement)
3. [Features](#-features)
4. [Key Features](#-key-features)
5. [Project Structure](#-project-structure)
6. [Project Workflow](#-project-workflow)
7. [Choice 1 — Add Entry](#1️⃣-choice-1--add-entry)
8. [Choice 2 — View Entries](#2️⃣-choice-2--view-entries)
9. [Choice 3 — Search Entry](#3️⃣-choice-3--search-entry)
10. [Choice 4 — Delete All Entries](#4️⃣-choice-4--delete-all-entries)
11. [Choice 5 — Exit](#5️⃣-choice-5--exit)
12. [Invalid Choice Handling](#-invalid-choice-handling)
13. [Tech Stack](#-tech-stack)
14. [Results & Insights](#-results--insights)
15. [Advantages](#-advantages)
16. [License](#-license)
17. [Author](#-author)
18. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Personal Journal Manager** is a menu-driven, command-line Python application designed to help anyone maintain a personal digital journal. It supports full **CRUD operations** (Create, Read, Search, Delete) and persists all entries in a local text file (`journal.txt`) using Python's built-in file handling.

Built entirely with core Python — no external libraries required — it demonstrates practical use of **file I/O**, **OOP (classes & methods)**, **exception handling**, and Python 3.10's `match-case` syntax.

---

## ❗ Problem Statement

Maintaining a personal journal manually — in notebooks or scattered text files — is disorganized and hard to search. People need a simple, reliable tool to:

- **Write** daily thoughts, learnings, or reflections in one place
- **View** all past entries at any time with a single command
- **Search** through entries by keyword without reading everything manually
- **Delete** entries when needed to start fresh

This program solves that problem with a lightweight Python CLI that runs anywhere Python is installed — no setup, no database, no internet needed.

---

## ✨ Features

| Feature | Type | Description |
|---|---|---|
| ✍️ **Add Entry** | Create | Write a new journal entry and append it to `journal.txt` |
| 📖 **View Entries** | Read | Display all previously written journal entries at once |
| 🔍 **Search Entry** | Read | Search entries by keyword (case-insensitive match) |
| 🗑️ **Delete All Entries** | Delete | Permanently remove the journal file after confirmation |
| 🚪 **Exit** | System | Gracefully exit the program with a farewell message |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 📂 **File Persistence** | All entries are saved to `journal.txt` so data is never lost between sessions |
| 🔍 **Keyword Search** | Case-insensitive search scans every line for the keyword and prints matching entries |
| 🛡️ **Exception Handling** | `FileNotFoundError` is caught gracefully with helpful error messages for View & Search |
| ✅ **Delete Confirmation** | Prompts `yes/no` before permanently deleting the journal file to prevent accidents |
| 🏗️ **OOP Design** | All logic is encapsulated in a clean `JournalManager` class with dedicated methods |
| ⚡ **match-case Routing** | Uses Python 3.10's structural pattern matching (`match-case`) for clean menu handling |
| 🚫 **File Guard** | Detects missing journal file and notifies the user before any read/delete operation |
| ♾️ **Continuous Loop** | Runs in a `while True` loop so users can perform multiple operations without restarting |

---

## 📁 Project Structure

```
📦 Personal Journal Manager
 ┣ 📜 file_operator.py   ← Main Python script (all logic lives here)
 ┣ 📄 journal.txt        ← Auto-created text file storing all journal entries
 ┗ 📄 README.md          ← Project documentation (you're here!)
```

> Single-file project — run it directly with Python, no installation needed.

---

## 🔁 Project Workflow

```
START
  │
  ▼
Create JournalManager Instance
  │
  ▼
┌─────────────────────────────────┐
│         MAIN MENU LOOP          │
│  1. Add Entry                   │
│  2. View Entries                │
│  3. Search Entry                │
│  4. Delete All Entries          │
│  5. Exit                        │
└─────────────────────────────────┘
  │
  ├──► Choice 1 ──► Input entry text ──► Append to journal.txt ──► "Entry added successfully!"
  │
  ├──► Choice 2 ──► Check if file exists ──► Read & print all lines ──► Error if not found
  │
  ├──► Choice 3 ──► Input keyword ──► Scan lines ──► Print matches ──► "No match" if none
  │
  ├──► Choice 4 ──► Check if file exists ──► Confirm yes/no ──► Delete file or cancel
  │
  ├──► Choice 5 ──► Print "Thank You!" ──► break ──► END
  │
  └──► Invalid  ──► "Invalid Choice!" ──► Loop continues
```

---

## 1️⃣ Choice 1 — Add Entry

> Takes a journal entry as input and appends it to `journal.txt` using file append mode (`"a"`). Creates the file automatically if it doesn't exist.

**What it does:** Opens `journal.txt` in append mode → writes the entry followed by a newline → confirms success.

```
--- Personal Journal Manager ---

1. Add Entry
2. View Entries
3. Search Entry
4. Delete All Entries
5. Exit

Enter choice: 1

Enter Your journal entry: Hyy! I am Krina Ghori. I Learned about file handling in Python.
Entry added successfully!
```

---

## 2️⃣ Choice 2 — View Entries

> Opens `journal.txt` in read mode and prints all stored entries. Handles the case where the file doesn't exist yet with a friendly error message.

**Output (if the file exists):**

```
Enter choice: 2

Journal Entries:
Hyy! I am Krina Ghori. I learned about file handling in Python.
Had a great session on OOP concepts !!!
---------------------------
```

**Output (if the file does not exist):**

```
Enter choice: 2

Error : No journal entries found. Start by adding a new entry!
---------------------------
```

---

## 3️⃣ Choice 3 — Search Entry

> Prompts for a keyword and scans every line of `journal.txt` for a case-insensitive match. Prints all matching lines or reports if nothing is found.

**Output (if a match is found):**

```
Enter choice: 3

Enter keyword to search: Python
Hyy! I am Krina Ghori. I Learned about file handling in Python.

Enter choice: 3

Enter keyword to search: OOP
Had a great session on OOP concepts !!!
```

**Output (if no match is found):**

```
Enter choice: 3

Enter keyword to search: krina
No matching entry found.
```

**Output (if file does not exist):**

```
Enter choice: 3

Enter keyword to search: krina
Error : Journal file does not exist.
```

---

## 4️⃣ Choice 4 — Delete All Entries

> Checks if `journal.txt` exists, then asks for confirmation before permanently deleting it using `os.remove()`. If the user types anything other than `yes`, deletion is cancelled.

**Output (if the file exists):**

```
Enter choice: 4

Delete all entries? (yes/no): no
Deletion cancelled.

Enter choice: 4

Delete all entries? (yes/no): yes
All entries deleted.
```

**Output (if the file does not exist):**

```
Enter choice: 4

Error  : No journal file found.
```

---

## 5️⃣ Choice 5 — Exit

> Breaks out of the infinite `while True` loop and ends the program cleanly with a farewell message.

```
Enter choice: 5

Thank You!
```

---

## ⚠️ Invalid Choice Handling

> Any input that doesn't match 1–5 falls into the `case _` (default) branch of `match-case` and prints a clear error message without crashing.

```
Enter choice: 6

Invalid Choice!
```

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐍 **Python 3.10+** | Core programming language |
| 🏗️ **OOP (Class)** | `JournalManager` class encapsulates all journal operations |
| 📂 **File I/O** | `open()` with modes `"a"` (append) and `"r"` (read) for persistence |
| 🗑️ **os Module** | `os.path.exists()` and `os.remove()` for file management |
| 🛡️ **Exception Handling** | `try/except FileNotFoundError` for graceful error recovery |
| ⚡ **match-case** | Python 3.10 structural pattern matching for menu routing |
| 💻 **CLI (stdin/stdout)** | User interaction via terminal `input()` and `print()` |

---

## 📊 Results & Insights

After running all 5 options in sequence, here is a summary of what was observed:

| Observation | Detail |
|---|---|
| ✅ **Entries added successfully** | Text entries appended to `journal.txt` with newline separation |
| 📖 **View works correctly** | All stored lines printed; friendly error shown when file is missing |
| 🔍 **Search is case-insensitive** | Keyword `Python` matched line containing `Python` regardless of case |
| 🗑️ **Delete requires confirmation** | Typing `yes` deletes; anything else safely cancels the operation |
| ⚠️ **Invalid input handled** | Choice `6` printed `Invalid Choice!` without crashing the program |
| 🚪 **Exit works cleanly** | Program terminates with `Thank You!` farewell message |

---

## 💡 Advantages

- **Zero Dependencies** — Runs with plain Python, no `pip` installs required
- **Persistent Storage** — Entries survive between sessions via `journal.txt` file
- **Lightweight** — Single `.py` file, clean and readable codebase
- **OOP Design** — `JournalManager` class makes the code modular and extendable
- **Safe Deletion** — Confirmation prompt prevents accidental data loss
- **Case-Insensitive Search** — Finds entries regardless of how the keyword is typed
- **Cross-Platform** — Runs on Windows, macOS, and Linux without changes
- **Beginner Friendly** — Great learning project for Python file handling, OOP & control flow

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
| 📁 **Project** | Personal Journal Manager |
| 💡 **Purpose** | Python file handling & OOP practice project |

<br/>

Made with ❤️ using **Python**

![Python Love](https://img.shields.io/badge/Made%20with-%E2%9D%A4%EF%B8%8F%20Python-blue?style=for-the-badge&logo=python)

</div>

---

## 🙏 Acknowledgements

- 🐍 **Python Software Foundation** — for the clean and powerful language
- 📖 **Python Docs** — for comprehensive documentation on file I/O, OOP & exception handling
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG
- 🎓 **All learners** — who use projects like this to practice and grow their Python skills

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
