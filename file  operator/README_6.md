<div align="center">

# 📓 PERSONAL JOURNAL MANAGER

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=F472B6&center=true&vCenter=true&width=520&lines=Write+Your+Thoughts+Daily!;Add+%7C+View+%7C+Search+%7C+Delete;Built+with+Python+%F0%9F%90%8D" alt="Typing SVG" />

<br/>

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python&logoColor=white)
![File Handling](https://img.shields.io/badge/Concept-File%20Handling-pink?style=for-the-badge&logo=files&logoColor=white)
![OOP](https://img.shields.io/badge/Concept-OOP-purple?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![CLI](https://img.shields.io/badge/Interface-CLI-orange?style=for-the-badge&logo=windowsterminal&logoColor=white)

<br/>

> 🌸 A beautiful **command-line journal app** built with Python — write, revisit, search, and manage your daily thoughts with ease!

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
12. [Invalid Choice](#-invalid-choice)
13. [Tech Stack](#-tech-stack)
14. [Results & Insights](#-results--insights)
15. [Advantages](#-advantages)
16. [License](#-license)
17. [Author](#-author)
18. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Personal Journal Manager** is a menu-driven, command-line Python application that lets you **write**, **read**, **search**, and **delete** your personal journal entries — all stored in a local `.txt` file with automatic timestamps.

Built entirely with core Python — no external libraries needed — it demonstrates the practical use of **File Handling**, **Object-Oriented Programming (OOP)**, **Exception Handling**, and Python 3.10's `match-case` syntax.

Whether you're tracking your learning journey, logging daily thoughts, or practicing Python — this project is the perfect blend of simplicity and functionality.

---

## ❗ Problem Statement

Keeping a personal journal manually — through notebooks or scattered notes — is hard to organize and search. Developers and learners need a simple, reliable digital tool to:

- **Write** journal entries with automatic date & time stamps
- **View** all past entries in a clean, readable format
- **Search** specific entries using keywords without scrolling through everything
- **Delete** all entries cleanly when starting fresh

This program solves that with a lightweight Python CLI — no setup, no database, no internet needed.

---

## ✨ Features

| Feature | Type | Description |
|---|---|---|
| ✍️ **Add Entry** | Create | Write a new journal entry; auto-saved with current timestamp |
| 📖 **View Entries** | Read | Display all journal entries from the file |
| 🔍 **Search Entry** | Read | Find entries containing a specific keyword |
| 🗑️ **Delete All Entries** | Delete | Permanently remove the journal file after confirmation |
| 🚪 **Exit** | System | Gracefully exit the program with a farewell message |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🕐 **Auto Timestamp** | Every entry is saved with the exact date & time using `datetime.now()` |
| 📂 **File Persistence** | Entries are stored in `journal.txt` and survive program restarts |
| 🔍 **Keyword Search** | Case-insensitive search scans line-by-line for matching entries |
| 🏗️ **OOP Design** | All logic is neatly encapsulated inside the `JournalManager` class |
| 🛡️ **Exception Handling** | Handles `FileNotFoundError` and `PermissionError` gracefully with clear messages |
| ✅ **Deletion Confirmation** | Asks `yes/no` before wiping entries — prevents accidental data loss |
| ⚡ **match-case Routing** | Uses Python 3.10's structural pattern matching for clean menu handling |
| 🚫 **Empty File Guard** | Notifies when no journal entries exist before attempting to read |

---

## 📁 Project Structure

```
📦 Personal Journal Manager
 ┣ 📜 file_operator.py    ← Main Python script (all logic lives here)
 ┣ 📄 journal.txt         ← Auto-created when first entry is added
 ┗ 📄 README.md           ← Project documentation (you're here!)
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
┌──────────────────────────────┐
│         MAIN MENU LOOP       │
│  1. Add Entry                │
│  2. View Entries             │
│  3. Search Entry             │
│  4. Delete All Entries       │
│  5. Exit                     │
└──────────────────────────────┘
  │
  ├──► Choice 1 ──► Input text ──► Append to journal.txt with timestamp
  │
  ├──► Choice 2 ──► Check file exists ──► Read & print all entries
  │
  ├──► Choice 3 ──► Input keyword ──► Scan lines ──► Print matches
  │
  ├──► Choice 4 ──► Confirm (yes/no) ──► os.remove(journal.txt)
  │
  └──► Choice 5 ──► Print farewell ──► break ──► END
```

---

## 1️⃣ Choice 1 — Add Entry

> Takes your journal text as input and appends it to `journal.txt` with the current date & time. Each entry is saved on a new line.

**Data saved:** `Date & Time` · `Journal Text`

```
--- Personal Journal Manager ---

1. Add Entry
2. View Entries
3. Search Entry
4. Delete All Entries
5. Exit

Enter choice: 1

Enter Your journal entry: HELLO ! I AM KRINA. I LEARNED ABOUT FILE HANDLING IN PYTHON.
Entry added successfully!


Enter choice: 1

Enter Your journal entry: HAD A GREAT SESSION ON OOP CONCEPTS !!!
Entry added successfully!
```

---

## 2️⃣ Choice 2 — View Entries

> Reads and displays all lines stored in `journal.txt`. Shows a friendly error message if the file doesn't exist yet.

**Output (if the file exists):**
```
Enter choice: 2

Journal Entries:
Date & Time: 2026-06-16 21:22:26.075697 HELLO ! I AM KRINA. I LEARNED ABOUT FILE HANDLING IN PYTHON.
Date & Time: 2026-06-16 21:22:50.180319 HAD A GREAT SESSION ON OOP CONCEPTS.
---------------------------
```

**Output (if the file does not exist):**
```
Enter choice: 2

Error : No journal entries found. Start by adding a new entry!
```

---

## 3️⃣ Choice 3 — Search Entry

> Scans every line of the journal file for a case-insensitive keyword match and prints all matching lines. Reports clearly if nothing is found.

**Output (if the file exists & keyword matches):**
```
Enter choice: 3

Enter keyword to search: PYTHON
Date & Time: 2026-06-16 21:22:26.075697 HELLO ! I AM KRINA. I LEARNED ABOUT FILE HANDLING IN PYTHON.
```

**Output (if the file does not exist):**
```
Enter choice: 3

Enter keyword to search: krina
Error : Journal file does not exist.
```

---

## 4️⃣ Choice 4 — Delete All Entries

> Prompts for a `yes/no` confirmation before permanently deleting `journal.txt`. Prevents accidental loss of all journal data.

**Output (if the user confirms deletion):**
```
Enter choice: 4

Are you sure you want to delete all entries? (yes/no): yes
All journal entries have been deleted.
```

**Output (if the user cancels deletion):**
```
Enter choice: 4

Are you sure you want to delete all entries? (yes/no): no
Deletion cancelled.
```

---

## 5️⃣ Choice 5 — Exit

> Breaks out of the infinite `while True` loop and ends the program with a warm farewell message.

```
Enter choice: 5

Thank You!
```

---

## ❌ Invalid Choice

> Any input outside 1–5 is caught by the `case _:` default branch and prompts the user to try again.

```
Enter choice: 6

Invalid Choice!
```

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐍 **Python 3.10+** | Core programming language |
| 📂 **File I/O (`open`)** | Reading and writing journal entries to `journal.txt` |
| 🕐 **`datetime` module** | Auto-generating timestamps for each journal entry |
| 🗂️ **`os` module** | Checking file existence and deleting journal file |
| 🏗️ **OOP (Class)** | Encapsulating all journal logic in `JournalManager` class |
| 🛡️ **Exception Handling** | Graceful error messages for missing files and permission errors |
| ⚡ **match-case** | Python 3.10 structural pattern matching for menu routing |
| 💻 **CLI (stdin/stdout)** | User interaction via terminal input and print output |

---

## 📊 Results & Insights

After running all 5 options in sequence, here is a summary of what was observed:

| Observation | Detail |
|---|---|
| ✅ **2 entries added** | "File Handling in Python" & "OOP Concepts" — both saved with timestamps |
| 📖 **View works correctly** | Both entries displayed with full date & time prefix |
| 🔍 **Search works** | Keyword `PYTHON` matched and returned the correct entry |
| 🗑️ **Delete with confirm works** | Typing `yes` removed `journal.txt` completely |
| 🔒 **Delete with cancel works** | Typing `no` kept all entries safe |
| ❌ **Invalid input handled** | Choice `6` triggered `Invalid Choice!` without crashing |
| 🚪 **Exit works cleanly** | Program terminates with `Thank You!` message |

---

## 💡 Advantages

- **Zero Dependencies** — Runs with plain Python, no pip installs required
- **Lightweight** — Single `.py` file with under 80 lines of logic
- **Persistent Storage** — Entries survive program restarts via file-based storage
- **Safe Deletion** — Confirmation prompt prevents accidental data loss
- **Case-Insensitive Search** — Finds entries regardless of uppercase/lowercase
- **Clean OOP Design** — All methods encapsulated inside `JournalManager` class
- **Cross-Platform** — Runs on Windows, macOS, and Linux without changes
- **Beginner Friendly** — Perfect learning project for Python file handling & OOP

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
| 📁 **Project** | Personal Journal Manager |
| 💡 **Purpose** | Python File Handling & OOP practice project |

<br/>

Made with 💖 using **Python**

![Python Love](https://img.shields.io/badge/Made%20with-%F0%9F%92%96%20Python-ff69b4?style=for-the-badge&logo=python)

</div>

---

## 🙏 Acknowledgements

- 🐍 **Python Software Foundation** — for the elegant and powerful language
- 📖 **Python Docs** — for comprehensive documentation on file I/O, `os`, `datetime` & `match-case`
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG animations
- 🎓 **All learners** — who use hands-on projects like this to grow their Python skills every day

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
