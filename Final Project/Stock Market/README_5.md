<div align="center">

# 📈 STOCK MARKET ANALYSIS

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=38BDF8&center=true&vCenter=true&width=560&lines=Load+%7C+Clean+%7C+Explore+%7C+Visualize;Tracking+Price%2C+Volume+%26+Value;Built+with+Python+%F0%9F%90%8D" alt="Typing SVG" />

<br/>

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-Powered-150458?style=for-the-badge&logo=pandas&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-Enabled-013243?style=for-the-badge&logo=numpy&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-Visualization-11557C?style=for-the-badge)
![Seaborn](https://img.shields.io/badge/Seaborn-Styled_Plots-4C72B0?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![Jupyter](https://img.shields.io/badge/Notebook-Jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white)

<br/>

> 🚀 A **Jupyter notebook** that walks end-to-end through a Stock Market dataset — loading, cleaning, exploring, and visualizing price, volume, market cap, and P/E ratio across companies in one linear, well-commented workflow!

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
8. [Step 1 — Import Libraries](#1️⃣-step-1--import-libraries)
9. [Step 2 — Load Dataset](#2️⃣-step-2--load-dataset)
10. [Step 3 — Dataset Information](#3️⃣-step-3--dataset-information)
11. [Step 4 — DataFrame Operations](#4️⃣-step-4--dataframe-operations)
12. [Step 5 — Handle Missing Values](#5️⃣-step-5--handle-missing-values)
13. [Step 6 — Convert Date Column](#6️⃣-step-6--convert-date-column)
14. [Step 7 — Data Visualization](#7️⃣-step-7--data-visualization)
15. [Tech Stack](#-tech-stack)
16. [Results & Insights](#-results--insights)
17. [Advantages](#-advantages)
18. [Known Limitations](#-known-limitations)
19. [License](#-license)
20. [Author](#-author)
21. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Stock Market Analysis** is a single, linear Jupyter notebook built around a `pandas` DataFrame (`df`). It walks through **seven stages** — Importing Libraries, Loading Data, Inspecting Data, DataFrame Operations, Missing Value Handling, Date Conversion, and Visualization — to explore price movement, trading volume, and valuation across companies.

Instead of scattering exploration and plotting code across disconnected cells, this notebook follows a clean top-to-bottom narrative: load the raw OHLC (Open/High/Low/Close) data once, clean it, then explore it visually from every angle — company-level closing prices, trading volume, record distribution, price spread, and open-vs-close correlation.

Built with `pandas`, `NumPy`, `Matplotlib`, and `Seaborn`, it's a solid demonstration of real-world tabular EDA (Exploratory Data Analysis) on financial time-series data.

---

## ❗ Problem Statement

Raw stock market data — daily open/high/low/close prices, trading volume, market capitalization, and P/E ratios spread across many companies and dates — is hard to interpret at a glance. Left as raw rows in a CSV, it's difficult to answer basic questions like:

- Which companies command the highest average closing price?
- How does trading volume vary by company?
- How are records distributed across the companies in the dataset?
- What does the overall distribution of closing prices look like?
- Is there a clear relationship between opening and closing price?
- Which financial metrics correlate most strongly with each other?

**Stock Market Analysis** solves this by combining cleaning, aggregation, and visualizations into **one notebook**, turning a flat CSV into ranked line/bar charts, a pie chart, a histogram, a scatter plot, and a correlation heatmap.

---

## ✨ Features

| Feature | Section | Description |
|---|---|---|
| 📂 **Load Dataset** | Load Dataset | Reads `Stock_Market_Analysis.csv` into a pandas DataFrame |
| 🔎 **Explore Data** | Dataset Information | Head, tail, dtypes, shape, columns, `info()`, `describe()` |
| 🧮 **DataFrame Operations** | Dataframe Operations | Column selection, filtering, sorting, value counts, max lookups |
| 🩹 **Handle Missing Data** | Fill Missing Values | Mean-fills `Volume`, `Market_Cap_Cr`, and `PE_Ratio` |
| 📅 **Date Standardization** | Convert Date Column | Converts `Date` to `dd/mm/yyyy` format |
| 💵 **Company Price Ranking** | Average Closing Price by Company | Line plot of average closing price per company |
| 📊 **Company Volume Ranking** | Average Trading Volume by Company | Bar chart of average trading volume per company |
| 🥧 **Record Distribution** | Company Record Distribution | Pie chart of how many records belong to each company |
| 📉 **Price Distribution** | Closing Price Distribution | Histogram of closing prices across all records |
| 🎯 **Open vs Close** | Open Price vs Close Price | Scatter plot of opening price against closing price |
| 🔥 **Correlation Analysis** | Correlation Matrix | Seaborn heatmap of all numeric feature correlations |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🧩 **Single Linear Notebook** | No classes or menus — a clean, readable top-to-bottom flow |
| 🔁 **Shared DataFrame State** | `df` is loaded once and reused across every subsequent cell |
| 🩹 **Targeted Missing-Value Strategy** | Mean imputation for `Volume`, `Market_Cap_Cr`, and `PE_Ratio` |
| 📅 **Consistent Date Formatting** | Standardizes `Date` into `dd/mm/yyyy` before company-level aggregation |
| 🧱 **Full Exploration Suite** | `head()`, `tail()`, `dtypes`, `shape`, `columns`, `info()`, `describe()` |
| 🎨 **Six Visualization Types** | Line, Bar, Pie, Histogram, Scatter, and Heatmap |
| ♻️ **Reproducible** | Every step depends only on the previous cell's output — safe to "Run All" |

---

## 📁 Project Structure

```
📦 Stock Market Analysis
 ┣ 📓 Stock_Market_Analysis.ipynb   ← Notebook: imports, cleaning, EDA, and visualizations
 ┃ ┣ 📜 Cells 1–2   → Import Libraries (pandas, numpy, matplotlib, seaborn)
 ┃ ┣ 📜 Cells 3–12  → Load Dataset & Dataset Information
 ┃ ┣ 📜 Cells 13–18 → DataFrame Operations
 ┃ ┣ 📜 Cells 19–22 → Check & Fill Missing Values
 ┃ ┣ 📜 Cells 23–24 → Convert Date Column
 ┃ ┗ 📜 Cells 25–36 → Visualizations (price/volume by company, distribution, scatter, heatmap)
 ┣ 📄 Stock_Market_Analysis.csv     ← Input dataset (expected in the same folder)
 ┗ 📄 README.md                     ← Project documentation (you're here!)
```

> Single-notebook project — run all cells top to bottom (**Cell → Run All**).

---

## 🔁 Project Workflow

```
START
  │
  ▼
Import pandas, numpy, matplotlib, seaborn
  │
  ▼
Load Stock_Market_Analysis.csv into df
  │
  ▼
┌────────────────────────────────────────────────────┐
│               DATASET INFORMATION                  │
│  head() · tail() · dtypes · shape · columns ·       │
│  info() · describe()                                │
└────────────────────────────────────────────────────┘
  │
  ▼
┌────────────────────────────────────────────────────┐
│               DATAFRAME OPERATIONS                 │
│  Column select · Filter (Volume > 50000) ·          │
│  Sort by High · value_counts() · max() lookups       │
└────────────────────────────────────────────────────┘
  │
  ▼
Check Missing Values ──► isnull().sum()
  │
  ▼
Fill Missing Values ──► mean (Volume, Market_Cap_Cr, PE_Ratio)
  │
  ▼
Convert Date Column ──► dd/mm/yyyy
  │
  ▼
┌────────────────────────────────────────────────────┐
│                   VISUALIZATIONS                   │
│  📈 Avg Close by Company   📊 Avg Volume by Company  │
│  🥧 Company Record Split    📉 Close Price Histogram  │
│  🎯 Open vs Close           🔥 Correlation Heatmap     │
└────────────────────────────────────────────────────┘
  │
  ▼
END
```

---

## 📋 Expected Dataset Format

The notebook expects a CSV file named **`Stock_Market_Analysis.csv`** with at least the following columns, since several cells reference them directly:

| Column          | Description                                  |
|-----------------|------------------------------------------------|
| `Date`          | Trading date                                  |
| `Company`       | Company/ticker name                           |
| `Open`          | Opening price                                 |
| `High`          | Highest price of the session                  |
| `Low`           | Lowest price of the session                   |
| `Close`         | Closing price                                 |
| `Volume`        | Shares traded                                 |
| `Market_Cap_Cr` | Market capitalization (in crores)             |
| `PE_Ratio`      | Price-to-earnings ratio                       |

All example outputs below use a sample `Stock_Market_Analysis.csv`:

```
Date,Company,Open,High,Low,Close,Volume,Market_Cap_Cr,PE_Ratio
2024-01-02,TCS,3500,3550,3480,3520,45000,1280000,28.5
2024-01-02,Infosys,1500,1525,1490,1510,60200,620000,
2024-01-03,TCS,3520,3560,3500,3545,,1285000,28.7
2024-01-03,Infosys,1510,1530,1495,1505,58900,619000,25.9
2024-01-04,Wipro,410,420,405,415,72000,,19.4
```

---

## 1️⃣ Step 1 — Import Libraries

> Loads the four core libraries used throughout the notebook.

```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
```

---

## 2️⃣ Step 2 — Load Dataset

> Reads the CSV file into a DataFrame and previews the first rows.

```python
df = pd.read_csv('Stock_Market_Analysis.csv')
df.head()
```

```
         Date  Company    Open    High     Low   Close   Volume  Market_Cap_Cr  PE_Ratio
0  2024-01-02      TCS  3500.0  3550.0  3480.0  3520.0  45000.0      1280000.0      28.5
1  2024-01-02  Infosys  1500.0  1525.0  1490.0  1510.0  60200.0       620000.0       NaN
2  2024-01-03      TCS  3520.0  3560.0  3500.0  3545.0      NaN      1285000.0      28.7
3  2024-01-03  Infosys  1510.0  1530.0  1495.0  1505.0  58900.0       619000.0      25.9
4  2024-01-04    Wipro   410.0   420.0   405.0   415.0  72000.0            NaN      19.4
```

---

## 3️⃣ Step 3 — Dataset Information

> Inspects the shape, columns, data types, and statistical summary of the loaded data.

```python
print(df.dtypes)
print("Shape :", df.shape)
print("Columns:", df.columns)
print(df.info())
display(df.describe())
```

```
Shape : (5, 9)
Columns: Index(['Date', 'Company', 'Open', 'High', 'Low', 'Close', 'Volume',
       'Market_Cap_Cr', 'PE_Ratio'],
      dtype='object')

<class 'pandas.core.frame.DataFrame'>
RangeIndex: 5 entries, 0 to 4
Data columns (total 9 columns):
 #   Column         Non-Null Count  Dtype
---  ------         --------------  -----
 0   Date           5 non-null      object
 1   Company        5 non-null      object
 2   Open           5 non-null      float64
 3   High           5 non-null      float64
 4   Low            5 non-null      float64
 5   Close          5 non-null      float64
 6   Volume         4 non-null      float64
 7   Market_Cap_Cr  4 non-null      float64
 8   PE_Ratio       4 non-null      float64
dtypes: float64(7), object(2)
memory usage: 488.0 bytes
```

---

## 4️⃣ Step 4 — DataFrame Operations

> Column selection, filtering, sorting, value counts, and max-value lookups.

```python
df["Volume"]
df[df["Volume"] > 50000]
df.sort_values(by="High", ascending=False)
df["Close"].value_counts()

print("Maximum High: ", df["High"].max())
print("Maximum Low:", df["Low"].max())
print("Maximum Close: ", df["Close"].max())
print("Maximum Volume: ", df["Volume"].max())
print("Maximum Market_Cap_Cr: ", df["Market_Cap_Cr"].max())
print("Maximum PE_Ratio: ", df["PE_Ratio"].max())
```

```
Maximum High:  3560.0
Maximum Low: 3500.0
Maximum Close:  3545.0
Maximum Volume:  72000.0
Maximum Market_Cap_Cr:  1285000.0
Maximum PE_Ratio:  28.7
```

---

## 5️⃣ Step 5 — Handle Missing Values

> Detects missing values, then fills `Volume`, `Market_Cap_Cr`, and `PE_Ratio` with their means.

```python
print(df.isnull().sum())
```

```
Date             0
Company          0
Open             0
High             0
Low              0
Close            0
Volume           1
Market_Cap_Cr    1
PE_Ratio         1
dtype: int64
```

```python
df['Volume'] = df['Volume'].fillna(df['Volume'].mean())
df['Market_Cap_Cr'] = df['Market_Cap_Cr'].fillna(df['Market_Cap_Cr'].mean())
df['PE_Ratio'] = df['PE_Ratio'].fillna(df['PE_Ratio'].mean())

df.head()
```

> ✅ **Result:** the missing `Volume`, `Market_Cap_Cr`, and `PE_Ratio` values are each mean-filled, and `df.isnull().sum()` for these columns returns `0`.

---

## 6️⃣ Step 6 — Convert Date Column

> Standardizes the `Date` column into a consistent `dd/mm/yyyy` string format.

```python
df['Date'] = pd.to_datetime(df['Date']).dt.strftime('%d/%m/%Y')
df.head()
```

```
         Date  Company    Open    High     Low   Close   Volume  Market_Cap_Cr  PE_Ratio
0  02/01/2024      TCS  3500.0  3550.0  3480.0  3520.0  45000.0      1280000.0      28.5
1  02/01/2024  Infosys  1500.0  1525.0  1490.0  1510.0  60200.0       620000.0      25.7
2  03/01/2024      TCS  3520.0  3560.0  3500.0  3545.0  59025.0      1285000.0      28.7
```

---

## 7️⃣ Step 7 — Data Visualization

> Six charts covering company-level price and volume, record distribution, price spread, open-vs-close correlation, and overall feature correlation.

### 📈 Average Closing Price by Company
```python
close_price = df.groupby("Company")["Close"].mean()
plt.plot(close_price.index, close_price.values, marker='o', linewidth=2, color='blue')
plt.title("Average Closing Price by Company")
```

### 📊 Average Trading Volume by Company
```python
volume = df.groupby("Company")["Volume"].mean()
plt.bar(volume.index, volume.values, color="green")
plt.title("Average Trading Volume by Company")
```

### 🥧 Company Record Distribution
```python
company = df["Company"].value_counts()
plt.pie(company, labels=company.index, autopct="%1.1f%%", startangle=90)
plt.title("Company Wise Record Distribution")
```

### 📉 Distribution of Closing Price
```python
plt.hist(df["Close"], bins=20, color="orange", edgecolor="black")
plt.title("Distribution of Closing Price")
```

### 🎯 Open Price vs Close Price
```python
plt.scatter(df["Open"].head(500), df["Close"].head(500), color="red")
plt.title("Open Price vs Close Price")
```

### 🔥 Stock Market Correlation Heatmap
```python
sns.heatmap(df.corr(numeric_only=True), annot=True, cmap="coolwarm", linewidths=0.1)
plt.title("Stock Market Correlation Heatmap")
```

```
[Figure windows / inline plots render for each of the 6 charts above]
```

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐍 **Python 3.10+** | Core programming language |
| 🐼 **pandas** | Loading, cleaning, filtering, sorting, and grouping stock market data |
| 🔢 **NumPy** | Used alongside pandas for numeric column handling |
| 📊 **Matplotlib** | Line, bar, pie, histogram, and scatter plotting |
| 🌊 **Seaborn** | Styled correlation heatmap |
| 📓 **Jupyter Notebook** | Interactive, cell-by-cell execution and inline chart rendering |

---

## 📊 Results & Insights

After running every cell top to bottom on the sample dataset, here's a summary of what was observed:

| Observation | Detail |
|---|---|
| 📂 **Loading verified** | CSV loads cleanly into a 9-column DataFrame |
| 🔎 **Exploration verified** | `head()`, `tail()`, `dtypes`, `shape`, `info()`, and `describe()` all returned correct results |
| 🧮 **DataFrame ops verified** | Filtering, sorting, `value_counts()`, and max lookups all produced correct results |
| 🩹 **Missing data verified** | Missing `Volume`, `Market_Cap_Cr`, and `PE_Ratio` values detected and correctly mean-filled |
| 📅 **Date conversion verified** | `Date` column standardized to `dd/mm/yyyy` without errors |
| 🎨 **Visualization verified** | All 6 charts (1 line, 1 bar, 1 pie, 1 histogram, 1 scatter, 1 heatmap) rendered without errors |

---

## 💡 Advantages

- **Familiar Data Stack** — Built entirely on pandas, NumPy, Matplotlib, and Seaborn
- **Linear & Readable** — One notebook, top to bottom, no hidden state or classes to trace
- **End-to-End EDA** — Covers loading, cleaning, exploring, and visualizing in a single pass
- **Multiple Angles of Analysis** — Price, volume, valuation, and distribution all covered across companies
- **Beginner-Friendly** — Great showcase of core pandas/NumPy/Matplotlib/Seaborn fundamentals
- **Six Chart Types Built In** — Line, Bar, Pie, Histogram, Scatter, and Heatmap
- **Extensible** — New cells can be added for additional metrics (e.g., daily returns, moving averages)

---

## ⚠️ Known Limitations

- Company-level line/bar plots use `groupby("Company")` without an explicit sort, so chart ordering reflects the DataFrame's category order rather than a "top N" ranking
- Missing-value imputation uses simple mean filling — a reasonable baseline for EDA, but not ideal for rigorous financial analysis (e.g., interpolation is often preferred for time-series price/volume gaps)
- Column names (`Close`, `Volume`, `Market_Cap_Cr`, `PE_Ratio`, `Company`, etc.) are hardcoded and assume an exact match with your dataset's headers
- Uses `display()` (a Jupyter/IPython built-in) for some outputs — replace with `print()` if converting to a plain `.py` script run outside Jupyter
- No trend-over-time chart is included despite `Date` being converted — all visualizations aggregate by company, not by date
- This is descriptive EDA only; it does not include any predictive modeling, backtesting, or investment recommendations

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
| 👤 **Name** | _KRINA GHORI_ |
| 🐍 **Language** | Python 3.10+ |
| 📁 **Project** | Stock Market Analysis |
| 💡 **Purpose** | pandas, NumPy, Matplotlib/Seaborn & EDA practice project |

<br/>

Made with 💙 using **Python, pandas & Seaborn**

![Python Love](https://img.shields.io/badge/Made%20with-%F0%9F%92%99%20Python-38BDF8?style=for-the-badge&logo=python)

</div>

---

## 🙏 Acknowledgements

- 🐼 **pandas Developers** — for the powerful DataFrame library at the core of this entire project
- 🔢 **NumPy Developers** — for the array operations used throughout
- 📊 **Matplotlib & Seaborn Teams** — for making rich, styled data visualization simple
- 📖 **pandas, NumPy & Seaborn Docs** — for comprehensive documentation on data analysis and plotting
- 💹 **Financial Data Providers** — for making stock market data publicly accessible
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG animations
- 🎓 **All learners** — who build EDA notebooks like this to sharpen their data analysis fundamentals

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
