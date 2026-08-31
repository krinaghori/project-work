<div align="center">

# 📊 FUNDAMENTAL BOOSTER

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=38BDF8&center=true&vCenter=true&width=560&lines=Logical+%7C+Text+%7C+Lookup+%7C+Date+Formulas;An+Excel+Formula+Practice+Workbook;Built+in+Microsoft+Excel+%F0%9F%93%88" alt="Typing SVG" />

<br/>

![Excel](https://img.shields.io/badge/Microsoft_Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![Formulas](https://img.shields.io/badge/Formulas-30%2B-blue?style=for-the-badge)
![Sheets](https://img.shields.io/badge/Sheets-3-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![Level](https://img.shields.io/badge/Level-Fundamentals-yellow?style=for-the-badge)

<br/>

> 🚀 A **single Excel workbook** built to drill the fundamentals — logical functions, text manipulation, lookups, and date arithmetic — across three real-world themed sheets: **Student Data**, **Sales Data**, and **Employee Data**.

</div>

---

## 📑 Table of Contents

1. [Overview](#-overview)
2. [Problem Statement](#-problem-statement)
3. [Features](#-features)
4. [Key Features](#-key-features)
5. [Workbook Structure](#-workbook-structure)
6. [Formula Map](#-formula-map)
7. [Sheet 1 — Student Data](#1️⃣-sheet-1--student-data)
8. [Sheet 2 — Sales Data](#2️⃣-sheet-2--sales-data)
9. [Sheet 3 — Employee Data](#3️⃣-sheet-3--employee-data)
10. [Function Reference](#-function-reference)
11. [Tech Stack](#-tech-stack)
12. [Results & Insights](#-results--insights)
13. [Advantages](#-advantages)
14. [Known Limitations](#-known-limitations)
15. [License](#-license)
16. [Author](#-author)
17. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Fundamental Booster** is a single `.xlsx` workbook — no macros, no VBA — that packs a full tour of Excel's core formula categories into **three themed data sheets**. Each sheet takes a small, realistic dataset (10 rows) and layers on formulas cell by cell: grading logic, text cleanup, running totals, percentage calculations, then drops into a dedicated practice zone lower on the sheet for lookups, conditional aggregation, and date math.

Instead of one long list of disconnected formula examples, this workbook tells three small stories:

- 🎓 **Student Data** — grading, pass/fail logic, and name text-parsing
- 💰 **Sales Data** — discount rules, dynamic lookups, and multi-key filtering
- 👔 **Employee Data** — service tenure, salary bucketing, and conditional statistics

Built entirely with native Excel formulas, it's a compact, hands-on reference for anyone sharpening their spreadsheet fundamentals.

---

## ❗ Problem Statement

Learning Excel formulas from scattered tutorials makes it hard to see how functions **combine** in a real dataset. It's one thing to know `IF()` or `VLOOKUP()` in isolation — it's another to know when to reach for `XLOOKUP` over `VLOOKUP`, or `TEXTJOIN` over `CONCAT`, inside an actual row of data. Common friction points this workbook targets:

- Nesting multiple `IF()` conditions to assign grades or categories
- Cleaning and reshaping text (first names, casing, joining names)
- Looking up a value by column position (`VLOOKUP`) vs. by array matching (`XLOOKUP`, `XMATCH`, `INDEX`/`MATCH`)
- Aggregating conditionally with `SUMIF`, `SUMIFS`, `COUNTIF`, and `AVERAGEIF`
- Calculating age, tenure, and days-since-date with `DATEDIF` and `TODAY()`
- Formatting dates and building dynamic ranges with `TEXT()` and `INDIRECT()`

**Fundamental Booster** solves this by embedding all of these directly into believable data — students, salespeople, and employees — so every formula has real context.

---

## ✨ Features

| Feature | Sheet | Description |
|---|---|---|
| 🧮 **Grade & Result Logic** | Student Data | Nested `IF`/`AND` to assign letter grades and pass/fail status |
| ✂️ **Text Parsing** | Student Data | Extracts first names and converts case with `LEFT`, `FIND`, `UPPER`, `LOWER` |
| 🏆 **Conditional Flagging** | Student Data | Flags top performers only when both subject scores exceed 80 |
| ➕ **Running Totals & %** | Student Data | Computes total marks and percentage per student |
| 📊 **Averages** | Student Data | Subject-wise average scores with `AVERAGE()` |
| 🔍 **Row Lookup** | Student Data | `VLOOKUP` to pull a specific student's stats by ID |
| 📅 **Date Math** | Student Data | `DATEDIF` for days-since-joining, `TEXT` for custom date formatting |
| 💸 **Discount Rules** | Sales Data | `IF` logic to apply a 10% discount above a sales threshold |
| 🔤 **Text Joining** | Sales Data | `TEXTJOIN` and `CONCAT` to build full names and region tags |
| 🎯 **Conditional Sum** | Sales Data | `SUMIFS` to total sales for a specific region + product combo |
| ⚡ **Modern Lookup** | Sales Data | `XLOOKUP` to pull a full sales row by Product ID |
| 🔎 **Position Search** | Sales Data | `XMATCH` to find a salesperson's row position |
| 🧩 **Dynamic Range Sum** | Sales Data | `INDIRECT` + `SUM` to total a range built from a text reference |
| 🎂 **Age & Tenure** | Employee Data | `DATEDIF` for age (years), days, and months of service |
| 💼 **Salary Bucketing** | Employee Data | `IF` to classify employees as High/Low salary |
| 🔢 **Conditional Stats** | Employee Data | `COUNTIF`, `AVERAGEIF`, `SUMIF` by department |
| 🎯 **Two-Way Lookup** | Employee Data | `INDEX` + `MATCH` to retrieve name, department, and salary by ID |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🧩 **Three Self-Contained Sheets** | Each sheet is a standalone mini-project with its own dataset and formula zone |
| 🔁 **Row-by-Row Consistency** | The same formula logic is repeated across all 10 data rows per sheet — copy-paste-friendly |
| 🧮 **30+ Live Formulas** | Every derived column and practice cell is a working formula, not a static value |
| ⚡ **Modern + Classic Functions** | Covers both legacy (`VLOOKUP`) and modern (`XLOOKUP`, `XMATCH`, `TEXTJOIN`) equivalents side by side |
| 📅 **Real Date Arithmetic** | Uses `TODAY()` so age/tenure/days-since figures stay current every time the file is opened |
| 🎯 **Dedicated Practice Zones** | Each sheet has a labeled section below the raw data for lookup and aggregation practice |
| ♻️ **No Macros/VBA** | 100% native formulas — opens and calculates in any modern version of Excel or Google Sheets (with minor `_xlfn` compatibility notes) |

---

## 📁 Workbook Structure

```
📦 FUNDAMENTAL_BOOSTER.xlsx
 ┣ 📄 STUDENT DATA      ← Grades, text parsing, averages, VLOOKUP, DATEDIF
 ┃ ┣ Rows 2–11   → Student records (ID, Name, Science, Maths, Grade, Result...)
 ┃ ┣ Row 17      → Average marks (AVERAGE)
 ┃ ┣ Row 23      → Student lookup by ID (VLOOKUP)
 ┃ ┗ Rows 27–36  → Days since joining + formatted date (DATEDIF, TEXT)
 ┣ 📄 SALES DATA        ← Discounts, text joins, SUMIFS, XLOOKUP, XMATCH, INDIRECT
 ┃ ┣ Rows 2–11   → Sales records (SaleID, Region, Product, Price, UnitSold...)
 ┃ ┣ Row 19      → Region + Product total (SUMIFS)
 ┃ ┣ Rows 27     → Full row lookup by Product ID (XLOOKUP)
 ┃ ┣ Row 33      → Row position search (XMATCH)
 ┃ ┗ Row 40      → Dynamic range total (INDIRECT + SUM)
 ┣ 📄 EMPLPLOYEE DATA   ← Age/tenure, salary bucketing, department stats, INDEX/MATCH
 ┃ ┣ Rows 2–11   → Employee records (ID, Name, Department, DOB, DOJ, Salary...)
 ┃ ┣ Row 17      → Salary category (IF)
 ┃ ┣ Row 23      → Department-wise COUNTIF / AVERAGEIF / SUMIF
 ┃ ┗ Row 40      → Employee lookup by ID (INDEX + MATCH)
 ┗ 📄 README.md          ← Project documentation (you're here!)
```

> Single-workbook project — open in Excel and every formula recalculates automatically.

---

## 🗺️ Formula Map

```
FUNDAMENTAL BOOSTER
       │
       ├── 🎓 STUDENT DATA
       │     ├── Logical   → IF, AND (Grade, Result, Top Performer)
       │     ├── Text      → LEFT, FIND, UPPER, LOWER
       │     ├── Math      → SUM (K), Percentage (L)
       │     ├── Stats     → AVERAGE
       │     ├── Lookup    → VLOOKUP
       │     └── Date      → DATEDIF, TODAY, TEXT
       │
       ├── 💰 SALES DATA
       │     ├── Logical   → IF (Discount %, Discount Apply)
       │     ├── Text      → LEFT, TEXTJOIN, CONCAT
       │     ├── Aggregate → SUMIFS
       │     ├── Lookup    → XLOOKUP, XMATCH
       │     └── Dynamic   → INDIRECT + SUM
       │
       └── 👔 EMPLOYEE DATA
             ├── Date      → DATEDIF (Age, Days, Months of Service)
             ├── Logical   → IF (Salary Category)
             ├── Aggregate → COUNTIF, AVERAGEIF, SUMIF
             └── Lookup    → INDEX + MATCH
```

---

## 1️⃣ Sheet 1 — Student Data

> 10 student records with subject scores, feeding into grading, text-parsing, and lookup formulas.

**Columns:** `Student ID`, `Name`, `Science`, `Maths`, `Grade`, `Result`, `First Name`, `Name_Upper`, `Name_Lower`, `Top_Performer`, `Total Marks`, `Percentage`, `Joining Date`

### 🧮 Grade & Result
```excel
=IF(AND(C2>=80,D2>=80),"A",IF(AND(C2>=60,D2>=60),"B",IF(AND(C2>=40,D2>=40),"C","Fail")))
=IF(AND(C2>40,D2>40),"PASS","FAIL")
```

### ✂️ Text Parsing
```excel
=LEFT(B2,FIND(" ",B2)-1)      ' First Name
=UPPER(B2)                     ' Name in caps
=LOWER(B2)                     ' Name in lowercase
=IF(AND(C2>80,D2>80),B2,"  ")  ' Top Performer flag
```

### ➕ Totals & Percentage
```excel
=C2+D2            ' Total Marks
=(K2/200)*100      ' Percentage
```

### 📊 Average Scores (Row 17)
```excel
=AVERAGE(C2:C11)   ' Average Science score  → 72.2
=AVERAGE(D2:D11)   ' Average Maths score    → 71.2
```

### 🔍 Student Lookup by ID (Row 23)
```excel
=VLOOKUP(102, A2:M11, 5, FALSE)    ' Grade for Student ID 102
=VLOOKUP(102, A2:N11, 12, FALSE)   ' Percentage for Student ID 102
=VLOOKUP(102, A2:O11, 6, FALSE)    ' Result for Student ID 102
```

### 📅 Days Since Joining & Formatted Date (Rows 27–36)
```excel
=DATEDIF(M2,TODAY(),"D")         ' Days since joining
=TEXT(M2,"dd-mmm-yyyy")          ' e.g. 11-Mar-2026
```

---

## 2️⃣ Sheet 2 — Sales Data

> 10 sales records across regions and products, driving discount logic, dynamic lookups, and text joins.

**Columns:** `SaleID`, `First_Name`, `Region`, `Product`, `ProductID`, `Month`, `Price`, `UnitSold`, `SalesAmount`, `Discount`, `Discount_Apply`, `MONTH_SHORT`, `Last_Name`, `Full_Name`, `Name_Region`

### 💸 Discount Rules
```excel
=IF(I2>20000,"10%","0%")   ' Discount % based on Sales Amount
=IF(I2>20000,"YES","NO")   ' Discount Apply flag
=LEFT(F2,3)                 ' Month → 3-letter short form (e.g. Jan)
```

### 🔤 Text Joining
```excel
=TEXTJOIN(" ",TRUE,B2,M2)    ' Full Name (First + Last)
=CONCAT(B2," ^ ",C2)          ' Name ^ Region tag
```

### 🎯 Region + Product Total (Row 19)
```excel
=SUMIFS(I2:I11, C2:C11, B16, D2:D11, E16)
' Total SalesAmount where Region = B16 AND Product = E16
```

### ⚡ Full Row Lookup by Product ID (Row 27)
```excel
=XLOOKUP(B24,$E$2:$E$11,$A$2:$A$11,"Not Found")   ' SaleID
=XLOOKUP(B24,$E$2:$E$11,$B$2:$B$11,"Not Found")   ' First_Name
=XLOOKUP(B24,$E$2:$E$11,$C$2:$C$11,"Not Found")   ' Region
=XLOOKUP(B24,$E$2:$E$11,$D$2:$D$11,"Not Found")   ' Product
=XLOOKUP(B24,$E$2:$E$11,$G$2:$G$11,"Not Found")   ' Price
=XLOOKUP(B24,$E$2:$E$11,$H$2:$H$11,"Not Found")   ' UnitSold
=XLOOKUP(B24,$E$2:$E$11,$I$2:$I$11,"Not Found")   ' SalesAmount
```

### 🔎 Row Position Search (Row 33)
```excel
=XMATCH("Priya", B2:B11)   ' Which row is "Priya" in?
```

### 🧩 Dynamic Range Total (Row 40)
```excel
=SUM(INDIRECT(B39))   ' Sums whatever range is typed as text in B39
```

---

## 3️⃣ Sheet 3 — Employee Data

> 10 employee records with DOB and joining date, feeding tenure calculations, salary bucketing, and department statistics.

**Columns:** `Employee ID`, `Full Name`, `Department`, `DOB`, `DateOfJoining`, `Salary`, `Age`, `Days of Service`, `Months of Service`

### 🎂 Age & Tenure
```excel
=DATEDIF(D2,TODAY(),"Y")   ' Age in years
=DATEDIF(E2,TODAY(),"D")   ' Days of service
=DATEDIF(E2,TODAY(),"M")   ' Months of service
```

### 💼 Salary Category (Row 17)
```excel
=IF(B16>=50000,"High Salary","Low Salary")
```

### 🔢 Department-Wise Statistics (Row 23)
```excel
=COUNTIF(C2:C11, B22)          ' Number of employees in a department
=AVERAGEIF(C2:C11, E22, F2:F11) ' Average salary in a department
=SUMIF(C2:C11, I22, F2:F11)     ' Total salary in a department
```

### 🎯 Employee Lookup by ID (Row 40)
```excel
=INDEX(B2:B11, MATCH(C37,A2:A11,0))   ' Full Name
=INDEX(C2:C11, MATCH(C37,A2:A11,0))   ' Department
=INDEX(F2:F11, MATCH(C37,A2:A11,0))   ' Salary
```

---

## 📚 Function Reference

| Category | Functions Used |
|---|---|
| 🧠 **Logical** | `IF`, `AND` |
| ✂️ **Text** | `LEFT`, `FIND`, `UPPER`, `LOWER`, `TEXT`, `TEXTJOIN`, `CONCAT` |
| 🔍 **Lookup & Reference** | `VLOOKUP`, `XLOOKUP`, `XMATCH`, `INDEX`, `MATCH`, `INDIRECT` |
| 📅 **Date & Time** | `DATEDIF`, `TODAY` |
| 🔢 **Statistical / Aggregate** | `AVERAGE`, `AVERAGEIF`, `SUM`, `SUMIF`, `SUMIFS`, `COUNTIF` |

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 📊 **Microsoft Excel** (or Google Sheets) | Spreadsheet application hosting all formulas |
| 🧮 **Native Excel Formulas** | Every calculation — no VBA, no macros, no add-ins |
| ⚡ **Excel 365 Dynamic Functions** | `XLOOKUP`, `XMATCH`, `TEXTJOIN`, `CONCAT` (stored internally as `_xlfn.*`) |

---

## 📊 Results & Insights

A summary of what each sheet demonstrates once opened and recalculated:

| Sheet | Insight |
|---|---|
| 🎓 **Student Data** | Average Science score ≈ **72.2**, average Maths score ≈ **71.2**; grading and pass/fail logic apply consistently across all 10 students |
| 💰 **Sales Data** | Sales above ₹20,000 automatically receive a 10% discount flag; `SUMIFS` correctly isolates totals for any Region + Product pair |
| 👔 **Employee Data** | Age, days of service, and months of service recalculate live via `TODAY()`; salary bucketing splits employees into High/Low bands at the ₹50,000 mark |

---

## 💡 Advantages

- **Zero Setup** — Just open the `.xlsx` file in Excel or Google Sheets; every formula recalculates instantly
- **Three Real Contexts** — Learn the same function families through student, sales, and HR scenarios
- **Classic + Modern Side by Side** — See `VLOOKUP` next to `XLOOKUP`, and `CONCAT`/`TEXTJOIN` next to manual text joins
- **Self-Updating** — `TODAY()`-based formulas mean age/tenure figures are always current
- **Copy-Paste Practice Friendly** — Each sheet's repeated row-by-row formulas are ideal for practicing fill-down technique
- **Compact but Comprehensive** — 30+ formulas across 5 function categories in a single small file
- **No Dependencies** — No macros, plugins, or external data connections required

---

## ⚠️ Known Limitations

- `XLOOKUP`, `XMATCH`, `TEXTJOIN`, and `CONCAT` are stored as `_xlfn.*` internally — they require **Excel 2019/365** or a compatible modern spreadsheet app; older Excel versions will show `#NAME?` errors
- Age, days-of-service, and days-since-joining figures depend on `TODAY()`, so the displayed numbers will differ depending on when the file is opened
- `INDIRECT(B39)` depends on the exact text typed into `B39` matching a valid range reference — an invalid string will cause a `#REF!` error
- The `Top_Performer` and lookup cells use hardcoded IDs/names (e.g., ID `102`, `"Priya"`) as examples — update these cells to look up different records
- Dataset size is intentionally small (10 rows per sheet) for learning clarity, not large-scale data processing
- The "EMPLPLOYEE DATA" sheet name contains a typo carried over from the original file

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
| 📊 **Tool** | Microsoft Excel |
| 📁 **Project** | Fundamental Booster |
| 💡 **Purpose** | Excel formula fundamentals practice workbook |

<br/>

Made with 💙 using **Microsoft Excel**

![Excel Love](https://img.shields.io/badge/Made%20with-%F0%9F%92%99%20Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)

</div>

---

## 🙏 Acknowledgements

- 📊 **Microsoft Excel Team** — for the formula engine that powers this entire workbook
- 📖 **Excel Function Documentation** — for comprehensive references on `IF`, `XLOOKUP`, `DATEDIF`, and more
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG animations
- 🎓 **All learners** — who build formula-practice workbooks like this to sharpen their spreadsheet fundamentals

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
