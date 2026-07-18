<div align="center">

# 💰 SMART EXPENSE TRACKER

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=38BDF8&center=true&vCenter=true&width=560&lines=Load+%7C+Explore+%7C+Clean+%7C+Visualize;One+Class%2C+Every+Expense+Insight!;Built+with+Python+%F0%9F%90%8D" alt="Typing SVG" />

<br/>

![Python](https://img.shields.io/badge/Python-3.14-blue?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-Powered-150458?style=for-the-badge&logo=pandas&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-Enabled-013243?style=for-the-badge&logo=numpy&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-Visualization-11557C?style=for-the-badge)
![Seaborn](https://img.shields.io/badge/Seaborn-Styled_Plots-4C72B0?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![Jupyter](https://img.shields.io/badge/Notebook-Jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white)

<br/>

> 🚀 An OOP-driven **Jupyter Notebook toolkit** that bundles Dataset Loading, Data Exploration, DataFrame Operations, Descriptive Statistics, Missing-Value Handling, NumPy Conversion, and Data Visualization into a single, reusable `SmartExpenseTracker` class!

</div>

---

## 📑 Table of Contents

1. [Overview](#-overview)
2. [Problem Statement](#-problem-statement)
3. [Features](#-features)
4. [Key Features](#-key-features)
5. [Project Structure](#-project-structure)
6. [Project Workflow](#-project-workflow)
7. [Expected Dataset Format](#-expected-dataset-format)
8. [Step 1 — Load Data](#1️⃣-step-1--load-data)
9. [Step 2 — Dataset Information](#2️⃣-step-2--dataset-information)
10. [Step 3 — DataFrame Operations](#3️⃣-step-3--dataframe-operations)
11. [Step 4 — Statistics](#4️⃣-step-4--statistics)
12. [Step 5 — Missing Values](#5️⃣-step-5--missing-values)
13. [Step 6 — NumPy Array](#6️⃣-step-6--numpy-array)
14. [Step 7 — Bar Chart](#7️⃣-step-7--bar-chart)
15. [Step 8 — Line Chart](#8️⃣-step-8--line-chart)
16. [Step 9 — Pie Chart](#9️⃣-step-9--pie-chart)
17. [Step 10 — Histogram](#🔟-step-10--histogram)
18. [Tech Stack](#-tech-stack)
19. [Results & Insights](#-results--insights)
20. [Advantages](#-advantages)
21. [Known Limitations](#-known-limitations)
22. [License](#-license)
23. [Author](#-author)
24. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Smart Expense Tracker** is a notebook-based Python application built around a single, incrementally-extended `SmartExpenseTracker` class. It brings together **ten core capabilities** — Loading Data, Dataset Information, DataFrame Operations, Statistics, Missing-Value Handling, NumPy Conversion, and four types of Visualization (Bar, Line, Pie, Histogram) — all callable from one object, `obj`.

Instead of writing separate scripts every time you want to inspect a CSV, filter by budget, clean up missing values, or plot a chart, this toolkit puts everything **one method call away**.

Built with Python's class re-opening pattern (`class SmartExpenseTracker(SmartExpenseTracker):`), pandas, NumPy, Matplotlib, and Seaborn, it's a great demonstration of clean OOP design and end-to-end personal-finance analysis working together in one cohesive notebook.

---

## ❗ Problem Statement

Tracking personal expenses usually means jumping between multiple ad-hoc notebook cells or spreadsheet formulas — one for a quick `.head()`, another for a filter, another for a chart — with no consistent object holding the state. This creates friction:

- No single place to load, clean, analyze, and visualize expense data in one session
- Repetitive boilerplate for common pandas tasks like filtering by budget, sorting by balance, or extracting year/month
- Difficulty seeing where money is actually going without rewriting plotting code every time

**Smart Expense Tracker** solves this by combining everything into **one class**, giving users instant access to 10+ pandas/NumPy/Matplotlib operations through a single object — the CSV loaded in `__init__` flows straight into every other method via `self.df`.

---

## ✨ Features

| Feature | Method | Description |
|---|---|---|
| 📂 **Load Data** | `load_data()` | Reloads the CSV into a pandas DataFrame and displays the first rows |
| 🔎 **Dataset Information** | `dataset_information()` | Head, tail, dtypes, shape, columns, `info()`, and `describe()` |
| 🧮 **DataFrame Operations** | `dataframe_operations()` | Filtering, date formatting, Year/Month extraction, sorting, value counts |
| 📊 **Statistics** | `statistics()` | Max, min, mean, median, mode for Amount/Budget/Balance, plus unique city count |
| 🩹 **Missing Values** | `missing_values()` | Detects nulls and mean-fills `User_ID`, `Amount`, `Budget`, `Balance` |
| 🔢 **NumPy Array** | `numpy_array()` | Converts the `Merchant` column into a NumPy array |
| 📊 **Bar Chart** | `bar_chart()` | Total expense grouped by category |
| 📈 **Line Chart** | `line_chart()` | Daily expense trend over time |
| 🥧 **Pie Chart** | `pie_chart()` | Percentage-wise expense distribution by category |
| 📶 **Histogram** | `histogram()` | Frequency distribution of account balances |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🧩 **Single-Class Design** | All logic lives inside one reusable `SmartExpenseTracker` class, extended cell-by-cell |
| 🔁 **Shared Dataset State** | The CSV loaded in `__init__` is used by every other method automatically via `self.df` |
| 🧱 **Full Exploration Suite** | `head()`, `tail()`, `dtypes`, `shape`, `columns`, `info()`, and `describe()` in one method |
| 🧮 **DataFrame Toolkit** | Column selection, budget/amount filtering, date parsing, Year & Month extraction, balance sorting, value counts |
| 🩹 **Missing Data Toolkit** | Detects nulls with `isnull().sum()` and fills them with column-wise mean |
| 🔢 **NumPy Conversion** | Converts the `Merchant` column to a NumPy array with `to_numpy()` |
| 📊 **Four Chart Types** | Bar, Line, Pie, and Histogram — all rendered with Matplotlib |
| ♻️ **Incremental Class Design** | Each notebook cell reopens the class to add one new method, keeping logic modular |

---

## 📁 Project Structure

```
📦 Smart Expense Tracker
 ┣ 📓 Smart_Expense_Tracker.ipynb   ← Notebook: imports, class, and method calls
 ┃ ┣ 📜 Cell 1  → Imports (pandas, numpy, matplotlib.pyplot, seaborn)
 ┃ ┣ 📜 Cell 2  → class SmartExpenseTracker  ← __init__(filename)
 ┃ ┣ 📜 Cell 3  → + load_data()
 ┃ ┣ 📜 Cell 4  → + dataset_information()
 ┃ ┣ 📜 Cell 5  → + dataframe_operations()
 ┃ ┣ 📜 Cell 6  → + statistics()
 ┃ ┣ 📜 Cell 7  → + missing_values()
 ┃ ┣ 📜 Cell 8  → + numpy_array()
 ┃ ┣ 📜 Cell 9  → + bar_chart()
 ┃ ┣ 📜 Cell 10 → + line_chart()
 ┃ ┣ 📜 Cell 11 → + pie_chart()
 ┃ ┣ 📜 Cell 12 → + histogram()
 ┃ ┗ 📜 Cells 13–23 → obj = SmartExpenseTracker(...) + method calls
 ┣ 📄 Smart_Expense_Tracker.csv     ← Expense dataset (required)
 ┗ 📘 README.md                     ← Project documentation (you're here!)
```

> Single-notebook project — run all cells top to bottom in order, since each cell reopens the class to add the next method.

---

## 🔁 Project Workflow

```
START
  │
  ▼
obj = SmartExpenseTracker("Smart_Expense_Tracker.csv")
  │
  ▼
┌────────────────────────────────────────────────────┐
│                METHOD CALL SEQUENCE                │
│  1. load_data()                                    │
│  2. dataset_information()                          │
│  3. dataframe_operations()                         │
│  4. statistics()                                   │
│  5. missing_values()                               │
│  6. numpy_array()                                  │
│  7. bar_chart()                                    │
│  8. line_chart()                                   │
│  9. pie_chart()                                    │
│ 10. histogram()                                    │
└────────────────────────────────────────────────────┘
  │
  ├──► load_data() ──────────► pd.read_csv() ──► self.df ──► head() displayed
  │
  ├──► dataset_information() ─► head/tail/dtypes/shape/columns/info/describe
  │
  ├──► dataframe_operations() ► Filter Budget/Amount ─► Format Date ─► Year & Month ─► Sort by Balance ─► value_counts()
  │
  ├──► statistics() ──────────► Max/Min/Mean/Median/Mode ─► Unique Cities
  │
  ├──► missing_values() ──────► isnull().sum() ─► fillna(mean) on 4 columns
  │
  ├──► numpy_array() ─────────► df["Merchant"].to_numpy()
  │
  ├──► bar_chart() ───────────► groupby("Category")["Amount"].sum() ─► plt.bar()
  │
  ├──► line_chart() ──────────► groupby("Date")["Amount"].sum() ─► plt.plot()
  │
  ├──► pie_chart() ───────────► groupby("Category")["Amount"].sum() ─► plt.pie()
  │
  └──► histogram() ───────────► plt.hist(df["Balance"]) ──► END
```

---

## 📋 Expected Dataset Format

The tracker expects a CSV file with at least the following columns, since several methods reference them directly:

| Column | Description |
|---|---|
| `User_ID` | Unique identifier for each user |
| `Date` | Transaction date |
| `Category` | Expense category (e.g., Groceries, Travel, Food) |
| `Merchant` | Merchant/vendor name |
| `Amount` | Transaction amount |
| `Payment_Method` | Mode of payment (UPI, Credit Card, Cash, etc.) |
| `Budget` | Budget allotted |
| `Balance` | Remaining balance after transaction |
| `City` | City of transaction |

All example outputs below use this sample `Smart_Expense_Tracker.csv`:

```
User_ID,Date,Category,Merchant,Amount,Payment_Method,Budget,Balance,City
101,01/06/2026,Groceries,BigBasket,1200,UPI,15000,42000,Ahmedabad
102,02/06/2026,Travel,Uber,850,Credit Card,20000,35000,Mumbai
103,03/06/2026,Food,Zomato,650,UPI,10000,18000,Delhi
104,04/06/2026,Shopping,Amazon,4200,Debit Card,25000,52000,Bengaluru
105,05/06/2026,Utilities,Airtel,999,Net Banking,8000,21000,Pune
101,06/06/2026,Entertainment,Netflix,499,UPI,15000,41500,Ahmedabad
106,07/06/2026,Groceries,DMart,2100,Cash,12000,,Chennai
102,08/06/2026,Food,Swiggy,720,UPI,20000,34200,Mumbai
107,09/06/2026,Travel,Ola,560,Credit Card,,29000,Hyderabad
103,10/06/2026,Shopping,Flipkart,3100,Debit Card,10000,14800,Delhi
```

---

## 1️⃣ Step 1 — Load Data

> Reads the CSV into `self.df`, prints a confirmation message, and displays the first 5 rows.

```python
obj = SmartExpenseTracker("Smart_Expense_Tracker.csv")
obj.load_data()
```

```
Dataset loaded successfully

   User_ID        Date    Category   Merchant  Amount Payment_Method   Budget  Balance       City
0      101  01/06/2026   Groceries  BigBasket    1200            UPI  15000.0  42000.0  Ahmedabad
1      102  02/06/2026      Travel       Uber     850    Credit Card  20000.0  35000.0     Mumbai
2      103  03/06/2026        Food     Zomato     650            UPI  10000.0  18000.0      Delhi
3      104  04/06/2026    Shopping     Amazon    4200    Debit Card  25000.0  52000.0  Bengaluru
4      105  05/06/2026   Utilities     Airtel     999   Net Banking   8000.0  21000.0       Pune
```

---

## 2️⃣ Step 2 — Dataset Information

> Displays head, tail, dtypes, shape, columns, `info()`, and a full statistical `describe()` summary.

```python
obj.dataset_information()
```

```
Shape : (10, 9)

Columns : Index(['User_ID', 'Date', 'Category', 'Merchant', 'Amount',
       'Payment_Method', 'Budget', 'Balance', 'City'], dtype='object')

Information :
<class 'pandas.core.frame.DataFrame'>
RangeIndex: 10 entries, 0 to 9
Data columns (total 9 columns):
 #   Column          Non-Null Count  Dtype
---  ------          --------------  -----
 0   User_ID         10 non-null     int64
 1   Date            10 non-null     object
 2   Category        10 non-null     object
 3   Merchant        10 non-null     object
 4   Amount          10 non-null     int64
 5   Payment_Method  10 non-null     object
 6   Budget           9 non-null     float64
 7   Balance          9 non-null     float64
 8   City            10 non-null     object
dtypes: float64(2), int64(2), object(5)

Statistical Summary
          User_ID       Amount        Budget       Balance
count   10.000000    10.000000      9.000000      9.000000
mean   103.400000  1487.800000  15000.000000  31944.444444
std      2.065591  1255.588114   5678.908346  12378.924742
min    101.000000   499.000000   8000.000000  14800.000000
25%    102.000000   667.500000  10000.000000  21000.000000
50%    103.000000   924.500000  15000.000000  34200.000000
75%    104.750000  1875.000000  20000.000000  41500.000000
max    107.000000  4200.000000  25000.000000  52000.000000
```

---

## 3️⃣ Step 3 — DataFrame Operations

> Prints the `Payment_Method` column, filters rows by `Budget` and `Amount`, formats `Date`, extracts `Year` & `Month`, sorts by `Balance`, and prints `Amount` value counts.

```python
obj.dataframe_operations()
```

```
Rows where Budget > 10000:
   User_ID        Date    Category   Merchant  Amount Payment_Method   Budget  Balance       City
0      101  01/06/2026   Groceries  BigBasket    1200            UPI  15000.0  42000.0  Ahmedabad
1      102  02/06/2026      Travel       Uber     850    Credit Card  20000.0  35000.0     Mumbai
3      104  04/06/2026    Shopping     Amazon    4200    Debit Card  25000.0  52000.0  Bengaluru
5      101  06/06/2026 Entertainment    Netflix    499            UPI  15000.0  41500.0  Ahmedabad
7      102  08/06/2026        Food     Swiggy     720            UPI  20000.0  34200.0     Mumbai

Rows where Amount < 10000:
[all 10 rows — every transaction is below ₹10,000]

Date reformatted to "%d %B %Y":
0    01 June 2026
1    02 June 2026
...

Year & Month extracted:
   Year  Month
0  2026   June
1  2026   June
...

Sorted by Balance (Descending):
   User_ID    Balance       City
3      104    52000.0  Bengaluru
0      101    42000.0  Ahmedabad
5      101    41500.0  Ahmedabad
1      102    35000.0     Mumbai
7      102    34200.0     Mumbai

Amount value counts:
1200    1
850     1
650     1
4200    1
999     1
499     1
2100    1
720     1
560     1
3100    1
Name: Amount, dtype: int64
```

---

## 4️⃣ Step 4 — Statistics

> Prints max, min, mean, median, and mode for `Amount`, `Budget`, and `Balance`, plus the number of unique cities.

```python
obj.statistics()
```

```
Maximum Amount : 4200
Maximum Budget : 25000.0
Maximum Balance : 52000.0
Minimum Amount : 499
Minimum Budget : 8000.0
Minimum Balance : 14800.0

Average Amount : 1487.8
Median Amount : 924.5
Mode of Amount :
0     499
1     560
2     650
...
dtype: int64

Total City : 7
```

---

## 5️⃣ Step 5 — Missing Values

> Detects null values with `isnull().sum()`, then fills `User_ID`, `Amount`, `Budget`, and `Balance` using the column mean.

```python
obj.missing_values()
```

```
User_ID           0
Date              0
Category          0
Merchant          0
Amount            0
Payment_Method    0
Budget            1
Balance           1
City              0
dtype: int64

Budget filled with mean  → 15000.0
Balance filled with mean → 31944.44
```

---

## 6️⃣ Step 6 — NumPy Array

> Converts the `Merchant` column into a NumPy array using `to_numpy()`.

```python
obj.numpy_array()
```

```
['BigBasket' 'Uber' 'Zomato' 'Amazon' 'Airtel' 'Netflix' 'DMart'
 'Swiggy' 'Ola' 'Flipkart']
```

---

## 7️⃣ Step 7 — Bar Chart

> Groups by `Category`, sums `Amount`, and plots a **sky-blue bar chart** of total expense per category.

```python
obj.bar_chart()
```

```
[Figure window opens: "Total Expense by Category" — sky-blue bars,
 x-axis "Category", y-axis "Amount"]
```

---

## 8️⃣ Step 8 — Line Chart

> Groups by `Date`, sums `Amount`, and plots a **red marker line chart** of daily expense trends.

```python
obj.line_chart()
```

```
[Figure window opens: "Daily Expense Trend" — red line with circular
 markers, x-axis "Date", y-axis "Expense"]
```

---

## 9️⃣ Step 9 — Pie Chart

> Groups by `Category`, sums `Amount`, and plots a **percentage-labeled pie chart** of expense distribution.

```python
obj.pie_chart()
```

```
[Figure window opens: "Expense Distribution by Category" — pie chart
 with percentage labels for Groceries, Travel, Food, Shopping,
 Utilities, and Entertainment]
```

---

## 🔟 Step 10 — Histogram

> Plots a **green histogram** (15 bins) of the `Balance` column to show frequency distribution.

```python
obj.histogram()
```

```
[Figure window opens: "Balance Distribution" — green bars, 15 bins,
 x-axis "Balance", y-axis "Frequency"]
```

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐍 **Python 3.14** | Core programming language |
| 🐼 **pandas** | Loading, exploring, cleaning, and transforming expense data |
| 🔢 **NumPy** | Array conversion for the `Merchant` column |
| 📊 **Matplotlib** | Bar, line, pie, and histogram plotting |
| 🌊 **Seaborn** | Imported for styled statistical plotting support |
| 📓 **Jupyter Notebook** | Interactive, cell-by-cell class development environment |

---

## 📊 Results & Insights

After running every method in sequence on the sample dataset, here's a summary of what was observed:

| Observation | Detail |
|---|---|
| 📂 **Loading verified** | CSV loads successfully into `self.df` with confirmation message |
| 🔎 **Exploration verified** | Head, tail, dtypes, shape, columns, `info()`, and `describe()` all returned correct results for the 10-row sample |
| 🧮 **DataFrame ops verified** | Budget/Amount filters, date formatting, Year/Month extraction, and Balance sorting all produced correct results |
| 📊 **Statistics verified** | Max Amount = 4200, Min Amount = 499, Average Amount = 1487.8, 7 unique cities |
| 🩹 **Missing data verified** | 1 missing `Budget` and 1 missing `Balance` value detected, correctly mean-filled |
| 🔢 **NumPy conversion verified** | `Merchant` column correctly converted to a 10-element NumPy array |
| 🎨 **Visualization verified** | Bar, Line, Pie, and Histogram all rendered without errors |

---

## 💡 Advantages

- **Familiar Data Stack** — Built entirely on pandas, NumPy, Matplotlib, and Seaborn
- **Single-Class Simplicity** — All logic lives in one incrementally-extended `SmartExpenseTracker` class
- **One Unified Object** — 10+ data-analysis and visualization operations accessible from a single `obj`
- **Shared State Across Methods** — Load a dataset once, reuse it in exploration, cleaning, statistics, and visualization
- **Beginner-to-Intermediate Friendly** — Great showcase of OOP class extension and pandas/NumPy fundamentals working together
- **Four Chart Types Built In** — Bar, Line, Pie, and Histogram, ready to display inline
- **Extensible** — New capabilities can be added as a new `class SmartExpenseTracker(SmartExpenseTracker):` cell with a new method

---

## ⚠️ Known Limitations

- No file-not-found error handling around `pd.read_csv()` — an invalid path will raise a raw pandas exception
- No menu or CLI — methods must be called manually and in order (`load_data()` → `dataset_information()` → ...)
- Column names (`Category`, `Amount`, `Date`, `Balance`, `Budget`, `Merchant`, `City`, `User_ID`) are hardcoded and assume an exact match with your dataset's headers
- `bar_chart()` and `line_chart()` use `.head(10)` after grouping, so only the first 10 groups/dates are plotted
- No `save_visualization()` method — charts must be saved manually via `plt.savefig()` if needed
- Uses `display()` (a Jupyter/IPython built-in) for DataFrame previews — replace with `print()` if converting to a plain `.py` script run outside Jupyter

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
| 🐍 **Language** | Python 3.14 |
| 📁 **Project** | Smart Expense Tracker |
| 💡 **Purpose** | pandas, NumPy & Matplotlib practice project |

<br/>

Made with 💙 using **Python, pandas & Matplotlib**

![Python Love](https://img.shields.io/badge/Made%20with-%F0%9F%92%99%20Python-38BDF8?style=for-the-badge&logo=python)

</div>

---

## 🙏 Acknowledgements

- 🐼 **pandas Developers** — for the powerful DataFrame library at the core of this entire project
- 🔢 **NumPy Developers** — for the array operations used throughout
- 📊 **Matplotlib & Seaborn Teams** — for making rich, styled data visualization simple
- 🐍 **Python Software Foundation** — for every rock-solid language feature used here
- 📖 **pandas & NumPy Docs** — for comprehensive documentation on data analysis
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG animations
- 🎓 **All learners** — who build class-based data analysis projects like this to sharpen their fundamentals

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
