<div align="center">

# 🐼 PANDAS ANALYZER & DATA VISUALIZATION

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=38BDF8&center=true&vCenter=true&width=560&lines=Load+%7C+Explore+%7C+Clean+%7C+Visualize;One+Menu%2C+Every+Pandas+Operation!;Built+with+Python+%F0%9F%90%8D" alt="Typing SVG" />

<br/>

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-Powered-150458?style=for-the-badge&logo=pandas&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-Enabled-013243?style=for-the-badge&logo=numpy&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-Visualization-11557C?style=for-the-badge)
![Seaborn](https://img.shields.io/badge/Seaborn-Styled_Plots-4C72B0?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![CLI](https://img.shields.io/badge/Interface-CLI-orange?style=for-the-badge&logo=windowsterminal&logoColor=white)

<br/>

> 🚀 An interactive **command-line Python toolkit** that bundles Dataset Loading, Data Exploration, DataFrame Operations, Missing Data Handling, Descriptive Statistics, and Data Visualization into a single, beautifully menu-driven Sales Data Analyzer!

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
8. [Choice 1 — Load Dataset](#1️⃣-choice-1--load-dataset)
9. [Choice 2 — Explore Data](#2️⃣-choice-2--explore-data)
10. [Choice 3 — Perform DataFrame Operations](#3️⃣-choice-3--perform-dataframe-operations)
11. [Choice 4 — Handle Missing Data](#4️⃣-choice-4--handle-missing-data)
12. [Choice 5 — Generate Descriptive Statistics](#5️⃣-choice-5--generate-descriptive-statistics)
13. [Choice 6 — Data Visualization](#6️⃣-choice-6--data-visualization)
14. [Choice 7 — Save Visualization](#7️⃣-choice-7--save-visualization)
15. [Choice 8 — Exit](#8️⃣-choice-8--exit)
16. [Invalid Choice](#-invalid-choice)
17. [Tech Stack](#-tech-stack)
18. [Results & Insights](#-results--insights)
19. [Advantages](#-advantages)
20. [Known Limitations](#-known-limitations)
21. [License](#-license)
22. [Author](#-author)
23. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Pandas Analyzer & Data Visualization** is a menu-driven, command-line Python application built around a single `SalesDataAnalyzer` class. It brings together **six core capabilities** — Loading Data, Exploring Data, DataFrame Operations, Missing Data Handling, Descriptive Statistics, and Data Visualization — under one clean, unified interface.

Instead of writing separate scripts every time you want to inspect a CSV, filter by region, clean up missing values, or plot a chart, this toolkit puts everything **one menu choice away**.

Built with Python 3.10's `match-case` syntax, pandas, NumPy, Matplotlib, and Seaborn, it's a great demonstration of clean CLI design, OOP, and end-to-end sales-data analysis working together in one cohesive app.

---

## ❗ Problem Statement

Analyzing a sales dataset usually means jumping between multiple ad-hoc scripts or notebook cells — one for a quick `.head()`, another for a pivot table, another for a chart — with no consistent entry point and no memory of what was loaded. This creates friction:

- No single place to load, clean, analyze, and visualize a dataset in one session
- Repetitive boilerplate for common pandas tasks like filtering, sorting, and pivoting
- Difficulty exploring a dataset's visual story without rewriting plotting code every time

**Pandas Analyzer & Data Visualization** solves this by combining everything into **one class + one driver loop**, giving users instant access to 25+ pandas/NumPy/Matplotlib/Seaborn operations through a single, organized menu — the dataset loaded in Option 1 flows straight into every other module.

---

## ✨ Features

| Feature | Method | Description |
|---|---|---|
| 📂 **Load Dataset** | `load_data()` | Load a CSV file into a pandas DataFrame with error handling |
| 🔎 **Explore Data** | `explore_data()` | Head, tail, columns, dtypes, and general dataset info |
| 🧮 **DataFrame Operations** | `dataframe_operations()` | NumPy conversion, filtering, sorting, and pivot tables |
| 🩹 **Handle Missing Data** | `handle_missing_data()` | Detect, fill, drop, or replace missing values |
| 📊 **Descriptive Statistics** | `generate_statistics()` | `describe()`, total sales, and average profit |
| 🎨 **Data Visualization** | `visualize_data()` | Bar, line, scatter, pie, histogram, and heatmap plots |
| 💾 **Save Visualization** | `save_visualization()` | Export the most recent plot to an image file |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🧩 **Single-Class Design** | All logic lives inside one reusable `SalesDataAnalyzer` class |
| 🔁 **Shared Dataset State** | The CSV loaded in Option 1 is used by every other menu option automatically |
| ⚡ **match-case Routing** | Uses Python 3.10's structural pattern matching for both the main menu and every sub-menu |
| 🧱 **Full Exploration Suite** | `head()`, `tail()`, `columns`, `dtypes`, and `info()` in one sub-menu |
| 🧮 **DataFrame Toolkit** | NumPy array conversion & slicing, region filtering, sales sorting, and product × region pivot tables |
| 🩹 **Missing Data Toolkit** | Detect, mean-fill, drop, or custom-replace missing values |
| 📊 **Statistics on Demand** | Instant `describe()` summary plus aggregate sales and average profit |
| 🎨 **Six Chart Types** | Bar, Line, Scatter, Pie, Histogram, and Seaborn Correlation Heatmap |
| 💾 **One-Click Save** | Save the last generated figure to disk under any filename |
| ♻️ **Infinite Main Loop** | Keeps running until the user explicitly chooses to exit |

---

## 📁 Project Structure

```
📦 Pandas Analyzer & Data Visualization
 ┣ 📓 Pandas_Analyzer___Data_Visualization.ipynb   ← Notebook: imports, class, and driver loop
 ┃ ┣ 📜 Cell 1 → Imports (os, pandas, numpy, matplotlib, seaborn)
 ┃ ┣ 📜 Cell 2 → class SalesDataAnalyzer         ← All analyzer methods
 ┃ ┗ 📜 Cell 3 → def main()                       ← Menu & routing logic
 ┗ 📄 README.md                                    ← Project documentation (you're here!)
```

> Single-notebook project — run all cells top to bottom, or convert to a `.py` script and run it directly.

---

## 🔁 Project Workflow

```
START
  │
  ▼
Print "Sales Data Analyzer Started...." Banner
  │
  ▼
┌────────────────────────────────────────────────────┐
│                    MAIN MENU LOOP                   │
│  1. Load Dataset                                     │
│  2. Explore Data                                     │
│  3. Perform DataFrame Operations                     │
│  4. Handle Missing Data                              │
│  5. Generate Descriptive Statistics                  │
│  6. Data Visualization                               │
│  7. Save Visualization                               │
│  8. Exit                                             │
└────────────────────────────────────────────────────┘
  │
  ├──► Choice 1 ──► Enter CSV path ──► pd.read_csv() ──► Stored in self.data
  │
  ├──► Choice 2 ──► Sub-Menu (6 ops) ──► Head/Tail/Columns/Dtypes/Info/Exit
  │
  ├──► Choice 3 ──► Sub-Menu (5 ops) ──► NumPy Array / Filter / Sort / Pivot / Exit
  │
  ├──► Choice 4 ──► Sub-Menu (5 ops) ──► Detect / Fill Mean / Drop / Replace / Exit
  │
  ├──► Choice 5 ──► describe() + Total Sales + Average Profit
  │
  ├──► Choice 6 ──► Sub-Menu (7 ops) ──► Bar/Line/Scatter/Pie/Histogram/Heatmap/Exit ──► Stored in self.last_fig
  │
  ├──► Choice 7 ──► Enter file name ──► self.last_fig.savefig()
  │
  └──► Choice 8 ──► Print farewell ──► break ──► END
```

---

## 📋 Expected Dataset Format

The analyzer expects a CSV file with at least the following columns, since several menu options reference them directly:

| Column   | Description                          |
|----------|---------------------------------------|
| `Month`   | Time period, used for the line plot  |
| `Product` | Name of the product sold             |
| `Region`  | Sales region (e.g., North, South)    |
| `Sales`   | Sales amount                         |
| `Profit`  | Profit amount                        |

All example outputs below use this sample `sample_sales.csv`:

```
Month,Product,Region,Sales,Profit
Jan,Laptop,North,1200,300
Jan,Phone,South,800,150
Feb,Laptop,East,1500,400
Feb,Tablet,West,600,100
Mar,Phone,North,950,200
Mar,Laptop,South,1100,280
Apr,Tablet,East,700,120
Apr,Phone,West,880,
May,Laptop,North,1300,340
May,Tablet,South,640,90
```

---

## 1️⃣ Choice 1 — Load Dataset

> Prompts for a CSV file path and loads it into a pandas DataFrame, catching missing-file and general errors.

```
==========  Data Analysis & Visualization Program  ==========

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

Enter the path of the dataset (CSV file): sample_sales.csv

Dataset loaded successfully!
```

**File-not-found example:**

```
Enter the path of the dataset (CSV file): missing_file.csv

Error: File 'missing_file.csv' not found. Please try again.
```

---

## 2️⃣ Choice 2 — Explore Data

> Opens a dedicated sub-menu for inspecting the loaded DataFrame — first/last rows, column names, data types, or full info.

**Sub-menu:** `1` First 5 rows · `2` Last 5 rows · `3` Column names · `4` Data types · `5` Basic info · `6` Exit

```
--- Explore Data ---

1. Display the first 5 rows
2. Display the last 5 rows
3. Display column names
4. Display data types
5. Display basic info
6. Exit

Enter your choice: 1

  Month Product Region  Sales  Profit
0   Jan  Laptop  North   1200   300.0
1   Jan   Phone  South    800   150.0
2   Feb  Laptop   East   1500   400.0
3   Feb  Tablet   West    600   100.0
4   Mar   Phone  North    950   200.0

--- Explore Data ---

Enter your choice: 2

  Month Product Region  Sales  Profit
5   Mar  Laptop  South   1100   280.0
6   Apr  Tablet   East    700   120.0
7   Apr   Phone   West    880     NaN
8   May  Laptop  North   1300   340.0
9   May  Tablet  South    640    90.0

--- Explore Data ---

Enter your choice: 3

['Month', 'Product', 'Region', 'Sales', 'Profit']

--- Explore Data ---

Enter your choice: 4

Month       object
Product     object
Region      object
Sales        int64
Profit     float64
dtype: object

--- Explore Data ---

Enter your choice: 5

<class 'pandas.core.frame.DataFrame'>
RangeIndex: 10 entries, 0 to 9
Data columns (total 5 columns):
 #   Column   Non-Null Count  Dtype
---  ------   --------------  -----
 0   Month    10 non-null     object
 1   Product  10 non-null     object
 2   Region   10 non-null     object
 3   Sales    10 non-null     int64
 4   Profit   9 non-null      float64
dtypes: float64(1), int64(1), object(3)
memory usage: 532.0 bytes

--- Explore Data ---

Enter your choice: 6

Exiting....
```

---

## 3️⃣ Choice 3 — Perform DataFrame Operations

> Convert a column to a NumPy array, filter by region, sort by sales, or build a product × region pivot table.

**Sub-menu:** `1` NumPy Array & Slice · `2` Filter by Region · `3` Sort by Sales · `4` Pivot Table · `5` Exit

```
--- DataFrame Operations ---

1. Convert a column to Numpy Array & Slice
2. Filter data by Region
3. Sort data by Sales
4. Create a Pivot Table
5. Exit

Enter your choice: 1

Enter column name to convert to Numpy ['Month', 'Product', 'Region', 'Sales', 'Profit']: Sales

First 5 elements of Numpy array: [1200  800 1500  600  950]

--- DataFrame Operations ---

Enter your choice: 2

Enter Region to filter by (e.g., North, South): North

  Month Product Region  Sales  Profit
0   Jan  Laptop  North   1200   300.0
4   Mar   Phone  North    950   200.0
8   May  Laptop  North   1300   340.0

--- DataFrame Operations ---

Enter your choice: 3

Data sorted by Sales (Descending):
  Month Product Region  Sales  Profit
2   Feb  Laptop   East   1500   400.0
8   May  Laptop  North   1300   340.0
0   Jan  Laptop  North   1200   300.0
5   Mar  Laptop  South   1100   280.0
4   Mar   Phone  North    950   200.0

--- DataFrame Operations ---

Enter your choice: 4

Region     East   North   South   West
Product
Laptop   1500.0  2500.0  1100.0     NaN
Phone       NaN   950.0   800.0   880.0
Tablet    700.0     NaN   640.0   600.0

--- DataFrame Operations ---

Enter your choice: 5

Exiting....
```

---

## 4️⃣ Choice 4 — Handle Missing Data

> Detect rows with missing values, fill them with the column mean, drop them, or replace them with a custom value.

**Sub-menu:** `1` Show Missing Rows · `2` Fill with Mean · `3` Drop Missing Rows · `4` Replace with Value · `5` Exit

```
--- Handle Missing Data ---

1. Display rows with missing values
2. Fill missing values with mean
3. Drop rows with missing values
4. Replace missing values with a specific value
5. Exit

Enter your choice: 1

  Month Product Region  Sales  Profit
7   Apr   Phone   West    880     NaN

--- Handle Missing Data ---

Enter your choice: 2

Missing value have been filled with the mean.

Updated Dataset:
  Month Product Region  Sales  Profit
0   Jan  Laptop  North   1200   300.0
1   Jan   Phone  South    800   150.0
2   Feb  Laptop   East   1500   400.0
3   Feb  Tablet   West    600   100.0
4   Mar   Phone  North    950   200.0
5   Mar  Laptop  South   1100   280.0
6   Apr  Tablet   East    700   120.0
7   Apr   Phone   West    880   220.0
8   May  Laptop  North   1300   340.0
9   May  Tablet  South    640    90.0

--- Handle Missing Data ---

Enter your choice: 5

Exiting....
```

---

## 5️⃣ Choice 5 — Generate Descriptive Statistics

> Prints a full `describe()` summary along with aggregate total sales and average profit.

```
--- Descriptive Statistics ---

            Sales      Profit
count    10.000000    9.000000
mean    967.000000  220.000000
std     301.037096  113.688170
min     600.000000   90.000000
25%     725.000000  120.000000
50%     915.000000  200.000000
75%    1175.000000  300.000000
max    1500.000000  400.000000

Aggregate Total Sales: 9670
Average Profit: 220.0
```

---

## 6️⃣ Choice 6 — Data Visualization

> A full charting sub-menu built on Matplotlib and Seaborn — Bar, Line, Scatter, Pie, Histogram, and a Correlation Heatmap.

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

Enter your choice: 1

[Figure window opens: "Total Sales by Product" — purple bars, black edges,
 x-axis "--- Product ---", y-axis "--- Sales ----"]

--- Data Visualization ---

Enter your choice: 3

Enter x-axis column name (e.g., Sales): Sales
Enter y-axis column name (e.g., Profit): Profit

Generating scatter plot...

Scatter plot displayed successfully!

--- Data Visualization ---

Enter your choice: 4

[Figure window opens: "Sales Distribution by Region" — pie chart with
 percentage labels for East, North, South, West]

--- Data Visualization ---

Enter your choice: 6

[Figure window opens: "Correlation Heatmap" — Seaborn heatmap of Sales and
 Profit correlations, annotated, coolwarm colormap]

--- Data Visualization ---

Enter your choice: 7

Exiting....
```

---

## 7️⃣ Choice 7 — Save Visualization

> Saves the most recently generated figure (`self.last_fig`) to an image file.

```
--- Save Visualization ---

Enter file name to save the plot (e.g., scatter_plot.png): sales_by_product.png

Visualization saved as sales_by_product.png successfully !!!
```

**No plot generated yet example:**

```
No active visualization to save. Please generate a plot first.
```

---

## 8️⃣ Choice 8 — Exit

> Breaks out of the infinite `while True` main loop and ends the program.

```
==========  Data Analysis & Visualization Program  ==========

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

> Any input outside the valid menu range at the main menu is caught by the `case _:` default branch, printing a friendly notice instead of crashing.

```
Enter your choice: 9

Invalid input. Please enter a number between 1 and 8.
```

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐍 **Python 3.10+** | Core programming language |
| 🐼 **pandas** | Loading, exploring, cleaning, and transforming tabular sales data |
| 🔢 **NumPy** | Array conversion and numeric column detection |
| 📊 **Matplotlib** | Bar, line, scatter, pie, and histogram plotting, plus saving figures |
| 🌊 **Seaborn** | Styled bar/line/scatter/histogram plots and the correlation heatmap |
| ⚡ **`match-case`** | Python 3.10 structural pattern matching for main menu & sub-menu routing |
| 💻 **CLI (stdin/stdout)** | All user interaction via terminal/notebook input and print output |

---

## 📊 Results & Insights

After exercising every option from the main menu and its sub-menus on the sample dataset, here's a summary of what was observed:

| Observation | Detail |
|---|---|
| 📂 **Loading verified** | Valid path loads successfully; invalid path raises a friendly `FileNotFoundError` message |
| 🔎 **Exploration verified** | Head, tail, columns, dtypes, and info all returned correct results for the 10-row sample dataset |
| 🧮 **DataFrame ops verified** | NumPy slice, region filter, sales sort, and product × region pivot table all produced correct results |
| 🩹 **Missing data verified** | 1 missing `Profit` value detected, correctly mean-filled to `220.0` |
| 📊 **Statistics verified** | Aggregate Total Sales = 9670, Average Profit = 220.0, full `describe()` summary generated |
| 🎨 **Visualization verified** | Bar, Line, Scatter, Pie, Histogram, and Heatmap all rendered without errors |
| 💾 **Save verified** | Last generated figure saved to disk under a user-supplied filename |
| ❌ **Invalid input handled** | Out-of-range choices at the main menu triggered a friendly message without crashing |
| 🚪 **Exit works cleanly** | Program terminates gracefully with a farewell + "Program Closed..." message |

---

## 💡 Advantages

- **Familiar Data Stack** — Built entirely on pandas, NumPy, Matplotlib, and Seaborn
- **Single-Class Simplicity** — All logic lives in one `SalesDataAnalyzer` class, easy to read and extend
- **One Unified Interface** — 25+ data-analysis and visualization operations accessible from a single entry point
- **Shared State Across Modules** — Load a dataset once, reuse it in exploration, cleaning, statistics, and visualization
- **Beginner-to-Intermediate Friendly** — Great showcase of loops, `match-case`, OOP, and pandas/NumPy fundamentals working together
- **Six Chart Types Built In** — Bar, Line, Scatter, Pie, Histogram, and Correlation Heatmap, all ready to save
- **Extensible** — New operations can be added as new methods + one new `case` block

---

## ⚠️ Known Limitations

- Menu inputs are parsed with `int(input(...))`, so non-numeric input will raise an error rather than being handled gracefully
- `save_visualization()` only works after a plot has been generated in **Data Visualization** during the same session, since it saves `self.last_fig`
- Column names (`Region`, `Sales`, `Profit`, `Product`, `Month`) are hardcoded in several places and assume an exact match with your dataset's headers
- Uses `display()` (a Jupyter/IPython built-in) for some outputs, such as filtered DataFrames and pivot tables — replace with `print()` if converting to a plain `.py` script run outside Jupyter

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
| 💡 **Purpose** | pandas, NumPy, Matplotlib/Seaborn & CLI design practice project |

<br/>

Made with 💙 using **Python, pandas & Seaborn**

![Python Love](https://img.shields.io/badge/Made%20with-%F0%9F%92%99%20Python-38BDF8?style=for-the-badge&logo=python)

</div>

---

## 🙏 Acknowledgements

- 🐼 **pandas Developers** — for the powerful DataFrame library at the core of this entire project
- 🔢 **NumPy Developers** — for the array operations used throughout
- 📊 **Matplotlib & Seaborn Teams** — for making rich, styled data visualization simple
- 🐍 **Python Software Foundation** — for `match-case` and every rock-solid language feature used here
- 📖 **pandas, NumPy & Seaborn Docs** — for comprehensive documentation on data analysis and plotting
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG animations
- 🎓 **All learners** — who build multi-module CLI projects like this to sharpen their data analysis fundamentals

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
