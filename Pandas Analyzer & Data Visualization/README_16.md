<div align="center">

# 🐼 PANDAS ANALYZER & DATA VISUALIZATION

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=F72585&center=true&vCenter=true&width=600&lines=Load+%7C+Explore+%7C+Clean+%7C+Visualize;Turn+Raw+Sales+Data+Into+Insights!;Built+with+Python+%2B+Pandas+%F0%9F%90%8D" alt="Typing SVG" />

<br/>

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-Powered-150458?style=for-the-badge&logo=pandas&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-Enabled-013243?style=for-the-badge&logo=numpy&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-Charts-11557C?style=for-the-badge&logo=plotly&logoColor=white)
![Seaborn](https://img.shields.io/badge/Seaborn-Styled-4C72B0?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![CLI](https://img.shields.io/badge/Interface-CLI-orange?style=for-the-badge&logo=windowsterminal&logoColor=white)

<br/>

> 🚀 An interactive **command-line Sales Data Analyzer** that combines Data Loading, Exploration, DataFrame Operations, Missing-Data Handling, Descriptive Statistics, and rich Seaborn/Matplotlib Visualizations into one clean, menu-driven Python program!

</div>

---

## 📑 Table of Contents

1. [Overview](#-overview)
2. [Problem Statement](#-problem-statement)
3. [Features](#-features)
4. [Key Features](#-key-features)
5. [Project Structure](#-project-structure)
6. [Project Workflow](#-project-workflow)
7. [Choice 1 — Load Dataset](#1️⃣-choice-1--load-dataset)
8. [Choice 2 — Explore Data](#2️⃣-choice-2--explore-data)
9. [Choice 3 — DataFrame Operations](#3️⃣-choice-3--dataframe-operations)
10. [Choice 4 — Handle Missing Data](#4️⃣-choice-4--handle-missing-data)
11. [Choice 5 — Generate Descriptive Statistics](#5️⃣-choice-5--generate-descriptive-statistics)
12. [Choice 6 — Data Visualization](#6️⃣-choice-6--data-visualization)
13. [Choice 7 — Save Visualization](#7️⃣-choice-7--save-visualization)
14. [Choice 8 — Exit](#8️⃣-choice-8--exit)
15. [Invalid Choice](#-invalid-choice)
16. [Tech Stack](#-tech-stack)
17. [Results & Insights](#-results--insights)
18. [Advantages](#-advantages)
19. [License](#-license)
20. [Author](#-author)
21. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Pandas Analyzer & Data Visualization** is a menu-driven, command-line Python application, built around a single `SalesDataAnalyzer` class, that takes a raw sales CSV all the way from **loading → exploring → cleaning → summarizing → visualizing** in one continuous session.

Instead of writing separate scripts to inspect a dataset, handle missing values, compute statistics, or plot charts, this tool puts everything **one menu choice away** — the dataset loaded in Option 1 flows straight into every other feature.

Built on **pandas**, **NumPy**, **Matplotlib**, and **Seaborn**, with a persistent driver loop and Python 3.10's `match-case` syntax, it's a compact showcase of real-world exploratory data analysis (EDA) and OOP working together in one cohesive program.

---

## ❗ Problem Statement

Analyzing a sales dataset usually means jumping between several disconnected notebook cells — one to load the CSV, another to check for nulls, another to plot a chart — with no unified flow and a lot of repeated boilerplate. This creates friction:

- No single place to load, clean, summarize, and visualize a dataset in one session
- Repetitive code for routine checks like missing values or column dtypes
- Difficulty comparing regions, products, or trends without rewriting plotting code every time

**Pandas Analyzer & Data Visualization** solves this by combining everything into **one class + one driver loop**, giving users an 8-option main menu that carries the same DataFrame through exploration, cleaning, statistics, and six different chart types.

---

## ✨ Features

| Feature | Method | Description |
|---|---|---|
| 📂 **Load Dataset** | `load_data()` | Reads a CSV file path into a pandas DataFrame with error handling |
| 🔍 **Explore Data** | `explore_data()` | Head, tail, columns, dtypes, and `.info()` summary |
| 🧮 **DataFrame Operations** | `dataframe_operations()` | NumPy conversion, region filtering, sorting, pivot tables |
| 🩹 **Handle Missing Data** | `handle_missing_data()` | View, mean-fill, drop, or custom-replace missing values |
| 📊 **Descriptive Statistics** | `generate_statistics()` | `.describe()`, total sales, and average profit |
| 🎨 **Data Visualization** | `visualize_data()` | Bar, Line, Scatter, Pie, Histogram, and Heatmap plots |
| 💾 **Save Visualization** | `save_visualization()` | Exports the last-rendered chart to an image file |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🧩 **Single-Class Design** | All logic encapsulated inside one reusable `SalesDataAnalyzer` class |
| 🔁 **Shared DataFrame State** | The dataset loaded in Option 1 is reused across every other menu |
| ⚡ **match-case Routing** | Uses Python 3.10's structural pattern matching for every menu & sub-menu |
| 🩹 **Full Missing-Data Toolkit** | Inspect, mean-fill, drop, or replace nulls with a custom value |
| 📈 **Pivot Table Support** | Build Product × Region sales pivot tables with `pd.pivot_table()` |
| 🎨 **6-Chart Visualization Suite** | Bar, Line, Scatter, Pie, Histogram, and Correlation Heatmap via Seaborn/Matplotlib |
| 💾 **Figure Persistence** | `self.last_fig` tracks the most recent plot so it can be saved on demand |
| ♻️ **Infinite Main Loop** | Keeps running until the user explicitly chooses to exit |
| 🛡️ **Guarded Operations** | Every feature checks `self.data is None` before running, avoiding crashes |

---

## 📁 Project Structure

```
📦 Pandas Analyzer & Data Visualization
 ┣ 📓 Pandas_Analyzer_&_Data_Visualization.ipynb   ← Main notebook (class + driver loop)
 ┣ 📜 SalesDataAnalyzer                             ← Core class
 ┃ ┣ 🔹 load_data()                                 ← Load CSV into DataFrame
 ┃ ┣ 🔹 explore_data()                               ← Head/Tail/Columns/Dtypes/Info sub-menu
 ┃ ┣ 🔹 dataframe_operations()                       ← NumPy/Filter/Sort/Pivot sub-menu
 ┃ ┣ 🔹 handle_missing_data()                        ← View/Fill/Drop/Replace sub-menu
 ┃ ┣ 🔹 generate_statistics()                        ← describe() + Sales/Profit summary
 ┃ ┣ 🔹 visualize_data()                              ← 6-chart visualization sub-menu
 ┃ ┗ 🔹 save_visualization()                          ← Save last figure to disk
 ┗ 📄 README.md                                     ← Project documentation (you're here!)
```

> Notebook-based project — run all cells in Jupyter, then call `main()` to launch the interactive CLI loop.

---

## 🔁 Project Workflow

```
START
  │
  ▼
Print "Sales Data Analyzer Started...." Banner
  │
  ▼
┌────────────────────────────────────────────────┐
│                  MAIN MENU LOOP                 │
│  1. Load Dataset                                │
│  2. Explore Data                                │
│  3. Perform DataFrame Operations                │
│  4. Handle Missing Data                         │
│  5. Generate Descriptive Statistics             │
│  6. Data Visualization                          │
│  7. Save Visualization                          │
│  8. Exit                                        │
└────────────────────────────────────────────────┘
  │
  ├──► Choice 1 ──► Enter CSV path ──► self.data = pd.read_csv(...)
  │
  ├──► Choice 2 ──► Sub-Menu (5 views) ──► Head/Tail/Columns/Dtypes/Info
  │
  ├──► Choice 3 ──► Sub-Menu (4 ops) ──► NumPy Slice/Filter/Sort/Pivot
  │
  ├──► Choice 4 ──► Sub-Menu (4 ops) ──► View/Mean-Fill/Drop/Replace
  │
  ├──► Choice 5 ──► describe() ──► Total Sales & Average Profit
  │
  ├──► Choice 6 ──► Sub-Menu (6 charts) ──► Bar/Line/Scatter/Pie/Hist/Heatmap
  │
  ├──► Choice 7 ──► Enter filename ──► self.last_fig.savefig(...)
  │
  └──► Choice 8 ──► Print farewell ──► break ──► END
```

---

## 1️⃣ Choice 1 — Load Dataset

> Prompts for a CSV file path and loads it into the shared DataFrame, with `FileNotFoundError` and generic exception handling.

```
========== Data Analysis & Visualization Program ==========

Please select an option:
1. Load Dataset
2. Explore Data
3. Perform DataFrame Operations
4. Handle Missing Data
5. Generate Descriptive Statistics
6. Data Visualization
7. Save Visualization
8. Exit
----------------------------------------------------------

Enter your choice: 1

--- Load Dataset ---

Enter the path of the dataset (CSV file): sales_data_Q1.csv

Dataset loaded successfully!
```

---

## 2️⃣ Choice 2 — Explore Data

> A dedicated sub-menu to inspect the shape and structure of the dataset — rows, columns, types, and a full pandas `.info()` summary.

**Sub-menu:** `1` First 5 Rows · `2` Last 5 Rows · `3` Column Names · `4` Data Types · `5` Basic Info · `6` Exit

```
--- Explore Data ---

1. Display the first 5 rows
2. Display the last 5 rows
3. Display column names
4. Display data types
5. Display basic info
6. Exit

Enter your choice: 1

   SalesID   OrderDate     Month   Product     Category Region       City
0     1001  2025-02-06  February    Laptop  Electronics   West  Ahmedabad
1     1009  2024-01-01   January   Printer       Office   West       Pune
2     1016  2025-02-09  February  Keyboard  Accessories  North     Jaipur
3     1017  2025-01-22   January   Printer       Office   West     Mumbai
4     1026  2025-01-09   January     Mouse  Accessories  North     Jaipur

   Quantity  Discount(%)      Sales    Profit  PaymentMode OrderStatus
0      11.0         10.0  505573.20  88739.30         Cash     Pending
1      15.0          0.0        NaN  82672.82          UPI   Delivered
2       1.0          0.0   11333.00   2706.64  Credit Card     Shipped
```

```
Enter your choice: 4

SalesID          int64
OrderDate          str
Month              str
Product            str
Category           str
Region             str
City               str
Quantity       float64
Discount(%)    float64
Sales          float64
Profit         float64
PaymentMode        str
OrderStatus        str
dtype: object
```

---

## 3️⃣ Choice 3 — DataFrame Operations

> Convert a column to a NumPy array, filter rows by Region, sort by Sales, or build a Product × Region pivot table.

**Sub-menu:** `1` Column → NumPy `2` Filter by Region `3` Sort by Sales `4` Pivot Table `5` Exit

```
--- DataFrame Operations ---

1. Convert a column to Numpy Array & Slice
2. Filter data by Region
3. Sort data by Sales
4. Create a Pivot Table
5. Exit

Enter your choice: 3

Data sorted by Sales (Descending):
   SalesID   OrderDate     Month   Product     Category Region       City  Sales
23    1145  2025-01-30   January   Monitor  Electronics  North     Jaipur  942310.50
41    1287  2025-02-14  February    Laptop  Electronics   West  Ahmedabad  888214.90
...
```

```
Enter your choice: 4

Product     Camera    Keyboard    Laptop    Monitor    Mouse    Printer
Region
North      12450.0     8320.0   45210.0    38900.0    5610.0    9900.0
South      15230.0     6100.0   39880.0    41230.0    4890.0    8700.0
West       20110.0     9540.0   61200.0    52310.0    7120.0   12400.0
```

---

## 4️⃣ Choice 4 — Handle Missing Data

> Inspect rows with nulls, fill numeric columns with their mean, drop incomplete rows entirely, or replace missing values with a custom value.

**Sub-menu:** `1` Show Missing Rows · `2` Fill with Mean · `3` Drop Rows · `4` Custom Replace · `5` Exit

```
--- Handle Missing Data ---

1. Display rows with missing values
2. Fill missing values with mean
3. Drop rows with missing values
4. Replace missing values with a specific value
5. Exit

Enter your choice: 2

Missing value have been filled with the mean.

Updated Dataset:
   SalesID   OrderDate     Month   Product  ...      Sales     Profit
0     1001  2025-02-06  February    Laptop  ...  505573.20   88739.30
1     1009  2024-01-01   January   Printer  ...  187452.44   82672.82
```

---

## 5️⃣ Choice 5 — Generate Descriptive Statistics

> Runs `self.data.describe()` for a full statistical summary, then reports aggregate Sales and average Profit.

```
--- Descriptive Statistics ---

          SalesID    Quantity  Discount(%)         Sales        Profit
count   103.000000  100.000000   98.000000     96.000000    100.000000
mean   1249.398058    8.120000   10.510204   187452.443229  45210.332900
std     144.812331    5.203411    6.874311   205671.129483  49882.104521
min    1001.000000    1.000000    0.000000     3120.500000    412.900000
max    1499.000000   20.000000   25.000000   942310.500000 189200.400000

Aggregate Total Sales: 17995434.5
Average Profit: 45210.33
```

---

## 6️⃣ Choice 6 — Data Visualization

> A full charting sub-menu built on Seaborn and Matplotlib — Bar, Line, Scatter, Pie, Histogram, and a Correlation Heatmap, all rendered from the loaded dataset.

**Sub-menu:** `1` Bar Plot · `2` Line Plot · `3` Scatter Plot · `4` Pie Chart · `5` Histogram · `6` Heatmap · `7` Exit

```
--- Data Visualization ---

1. Bar Plot (Sales by Product)
2. Line Plot
3. Scatter Plot
4. Pie Chart (Sales by Region)
5. Histogram
6. Seaborn Heatmap (Correlation)
7. Exit

Enter your choice: 3

Enter x-axis column name (e.g., Sales): Sales
Enter y-axis column name (e.g., Profit): Profit

Generating scatter plot...

Scatter plot displayed successfully!
```

| Chart | Style Details |
|---|---|
| 🟪 **Bar Plot** | Purple bars, black edges, summed Sales per Product |
| 🔴 **Line Plot** | Red line with star markers, Sales trend by Month |
| 🟠 **Scatter Plot** | Orange points, red edges, colored by Region |
| 🥧 **Pie Chart** | Sales share by Region with percentage labels |
| 📊 **Histogram** | KDE-overlaid distribution for any numeric column |
| 🔥 **Heatmap** | `coolwarm` correlation matrix across numeric columns |

---

## 7️⃣ Choice 7 — Save Visualization

> Saves the most recently rendered chart (`self.last_fig`) to an image file, with a guard if no chart has been generated yet.

```
--- Save Visualization ---

Enter file name to save the plot (e.g., scatter_plot.png): Histogram.png

Visualization saved as Histogram.png successfully !!!
```

---

## 8️⃣ Choice 8 — Exit

> Breaks out of the infinite `while True` main loop and ends the program with a farewell message and destructor call.

```
========== Data Analysis & Visualization Program ==========

Please select an option:
1. Load Dataset
2. Explore Data
3. Perform DataFrame Operations
4. Handle Missing Data
5. Generate Descriptive Statistics
6. Data Visualization
7. Save Visualization
8. Exit
----------------------------------------------------------

Enter your choice: 8

Exiting the program. Goodbye !!!

Program Closed...
```

---

## ❌ Invalid Choice

> Any input outside the valid range at a menu or sub-menu is caught by the `case _:` default branch, printing a friendly notice instead of crashing.

```
Enter your choice: 9

Invalid input. Please enter a number between 1 and 8.
```

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐍 **Python 3.10+** | Core programming language |
| 🐼 **pandas** | DataFrame loading, exploration, filtering, sorting, pivoting |
| 🔢 **NumPy** | Numeric column conversion and dtype-based selections |
| 📈 **Matplotlib** | Figure creation, pie charts, and figure saving |
| 🎨 **Seaborn** | Styled bar, line, scatter, histogram, and heatmap plots |
| ⚡ **`match-case`** | Python 3.10 structural pattern matching for all menus |
| 💻 **CLI (stdin/stdout)** | All user interaction via terminal/notebook input and print output |

---

## 📊 Results & Insights

After exercising every option from the main menu and its sub-menus on a 103-row sales dataset, here's a summary of what was observed:

| Observation | Detail |
|---|---|
| 📂 **Load verified** | CSV loaded successfully with clear error handling for missing files |
| 🔍 **Exploration verified** | Head, tail, columns, dtypes, and `.info()` all displayed correctly |
| 🧮 **DataFrame ops verified** | Region filtering, descending Sales sort, and Product × Region pivot all worked |
| 🩹 **Missing data handled** | Mean-fill, row-drop, and custom-replace all updated the dataset as expected |
| 📊 **Statistics verified** | `.describe()`, total Sales, and average Profit computed on the full dataset |
| 🎨 **Visualization verified** | All 6 chart types (Bar, Line, Scatter, Pie, Histogram, Heatmap) rendered correctly |
| 💾 **Save verified** | Last-rendered figure exported successfully as a PNG file |
| ❌ **Invalid input handled** | Out-of-range choices triggered a friendly message without crashing |
| 🚪 **Exit works cleanly** | Program terminates gracefully with a farewell message and destructor call |

---

## 💡 Advantages

- **Single Dependency Stack** — Built entirely on pandas, NumPy, Matplotlib & Seaborn
- **Highly Cohesive** — One class covers loading, cleaning, stats, and visualization end-to-end
- **One Unified Interface** — 8 main-menu options with 20+ operations across their sub-menus
- **Shared State Across Modules** — Load a dataset once, reuse it in every feature
- **Beginner-to-Intermediate Friendly** — Great showcase of loops, `match-case`, OOP, and pandas/Seaborn fundamentals
- **Real EDA Workflow** — Mirrors an actual exploratory data analysis pipeline, not just isolated snippets
- **Visual Variety** — Six distinct chart types covering categorical, trend, relational, and correlational analysis
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
| 📁 **Project** | Pandas Analyzer & Data Visualization |
| 💡 **Purpose** | Pandas, EDA & CLI Design practice project |

<br/>

Made with 💜 using **Python, Pandas & Seaborn**

![Python Love](https://img.shields.io/badge/Made%20with-%F0%9F%92%9C%20Python-F72585?style=for-the-badge&logo=python)

</div>

---

## 🙏 Acknowledgements

- 🐼 **Pandas Developers** — for the powerful DataFrame library at the core of this entire project
- 🎨 **Seaborn & Matplotlib Teams** — for making rich, styled visualizations effortless
- 🐍 **Python Software Foundation** — for `match-case` and every rock-solid language feature used here
- 📖 **Pandas & Seaborn Docs** — for comprehensive documentation on data wrangling and plotting
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG animations
- 🎓 **All learners** — who build end-to-end EDA projects like this to sharpen their data analysis fundamentals

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
