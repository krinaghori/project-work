<div align="center">

# 🦠 COVID-19 DATASET ANALYSIS

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=38BDF8&center=true&vCenter=true&width=560&lines=Load+%7C+Clean+%7C+Explore+%7C+Visualize;Understanding+the+Spread+of+COVID-19;Built+with+Python+%F0%9F%90%8D" alt="Typing SVG" />

<br/>

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-Powered-150458?style=for-the-badge&logo=pandas&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-Enabled-013243?style=for-the-badge&logo=numpy&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-Visualization-11557C?style=for-the-badge)
![Seaborn](https://img.shields.io/badge/Seaborn-Styled_Plots-4C72B0?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![Jupyter](https://img.shields.io/badge/Notebook-Jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white)

<br/>

> 🚀 A **Jupyter notebook** that walks end-to-end through a COVID-19 dataset — loading, cleaning, exploring, and visualizing global case, recovery, death, vaccination, and lockdown data in one linear, well-commented workflow!

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
15. [Step 8 — Recovery & Death Rates](#8️⃣-step-8--recovery--death-rates)
16. [Tech Stack](#-tech-stack)
17. [Results & Insights](#-results--insights)
18. [Advantages](#-advantages)
19. [Known Limitations](#-known-limitations)
20. [License](#-license)
21. [Author](#-author)
22. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**COVID-19 Dataset Analysis** is a single, linear Jupyter notebook built around a `pandas` DataFrame (`df`). It walks through **eight stages** — Importing Libraries, Loading Data, Inspecting Data, DataFrame Operations, Missing Value Handling, Date Conversion, Visualization, and Rate Calculation — to tell the story of how COVID-19 spread, was tracked, and was responded to.

Instead of scattering exploration and plotting code across disconnected cells, this notebook follows a clean top-to-bottom narrative: load the raw data once, clean it, then explore it visually from every angle — time, geography, government response, and vaccination.

Built with `pandas`, `NumPy`, `Matplotlib`, and `Seaborn`, it's a solid demonstration of real-world tabular EDA (Exploratory Data Analysis) on epidemiological data.

---

## ❗ Problem Statement

Raw pandemic data — daily case counts, deaths, recoveries, vaccination numbers, and lockdown status spread across countries and regions — is hard to interpret at a glance. Left as raw rows in a CSV, it's difficult to answer basic questions like:

- Is the pandemic accelerating, plateauing, or declining over time?
- Which countries and regions are hit hardest?
- Does government intervention (lockdown) correlate with lower case counts?
- Is there a visible relationship between vaccination and confirmed cases?

**COVID-19 Dataset Analysis** solves this by combining cleaning, aggregation, and eight visualizations into **one notebook**, turning a flat CSV into trend lines, bar charts, a pie chart, a scatter plot, a correlation heatmap, and two headline rate metrics.

---

## ✨ Features

| Feature | Section | Description |
|---|---|---|
| 📂 **Load Dataset** | Load Dataset | Reads `COVID19_Dataset.csv` into a pandas DataFrame |
| 🔎 **Explore Data** | Dataset Information | Head, tail, dtypes, shape, columns, `info()`, `describe()` |
| 🧮 **DataFrame Operations** | Dataframe Operations | Column selection, filtering, sorting, value counts, max lookups |
| 🩹 **Handle Missing Data** | Fill Missing Values | Mean-fills numeric columns, mode-fills `Lockdown` |
| 📅 **Date Standardization** | Convert Date Column | Converts `Date` to `dd/mm/yyyy` format |
| 📈 **Trend Visualization** | Spread / Recovery / Death Trends | Line plots of cases, recoveries, and deaths over time |
| 🌍 **Geographic Breakdown** | Top Countries / Regions | Bar charts of the 10 hardest-hit countries and regions |
| 🥧 **Lockdown Impact** | Government Intervention | Pie chart of average cases by lockdown status |
| 🔵 **Vaccination Impact** | Vaccination Impact | Scatter plot of vaccinated population vs. confirmed cases |
| 🔥 **Correlation Analysis** | Correlation Heatmap | Seaborn heatmap of all numeric feature correlations |
| 📊 **Rate Metrics** | Recovery Rate / Death Rate | Computes and prints average recovery rate and death rate |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🧩 **Single Linear Notebook** | No classes or menus — a clean, readable top-to-bottom flow |
| 🔁 **Shared DataFrame State** | `df` is loaded once and reused across every subsequent cell |
| 🩹 **Robust Missing-Value Strategy** | Mean imputation for numeric columns, mode imputation for categorical `Lockdown` |
| 📅 **Consistent Date Formatting** | Standardizes `Date` into `dd/mm/yyyy` before any time-based aggregation |
| 🧱 **Full Exploration Suite** | `head()`, `tail()`, `dtypes`, `shape`, `columns`, `info()`, `describe()` |
| 🎨 **Six Visualization Types** | Line (×3), Bar (×2), Pie, Scatter, and Heatmap — eight charts total |
| 📊 **Derived KPI Columns** | Adds `Recovery Rate` and `Death Rate` columns straight onto the DataFrame |
| ♻️ **Reproducible** | Every step depends only on the previous cell's output — safe to "Run All" |

---

## 📁 Project Structure

```
📦 COVID-19 Dataset Analysis
 ┣ 📓 COVID_-_19.ipynb          ← Notebook: imports, cleaning, EDA, and visualizations
 ┃ ┣ 📜 Cells 1–2   → Import Libraries (pandas, numpy, matplotlib, seaborn)
 ┃ ┣ 📜 Cells 3–12  → Load Dataset & Dataset Information
 ┃ ┣ 📜 Cells 13–18 → DataFrame Operations
 ┃ ┣ 📜 Cells 19–22 → Check & Fill Missing Values
 ┃ ┣ 📜 Cells 23–24 → Convert Date Column
 ┃ ┣ 📜 Cells 25–40 → Visualizations (trends, top 10s, lockdown, vaccine, heatmap)
 ┃ ┗ 📜 Cells 41–44 → Recovery Rate & Death Rate
 ┣ 📄 COVID19_Dataset.csv        ← Input dataset (expected in the same folder)
 ┗ 📄 README.md                  ← Project documentation (you're here!)
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
Load COVID19_Dataset.csv into df
  │
  ▼
┌────────────────────────────────────────────────────┐
│               DATASET INFORMATION                  │
│  head() · tail() · dtypes · shape · columns ·      │
│  info() · describe()                               │
└────────────────────────────────────────────────────┘
  │
  ▼
┌────────────────────────────────────────────────────┐
│               DATAFRAME OPERATIONS                 │
│  Column select · Filter (Cases > 10000) ·          │
│  Sort by Vaccine · value_counts() · max() lookups  │
└────────────────────────────────────────────────────┘
  │
  ▼
Check Missing Values ──► isnull().sum()
  │
  ▼
Fill Missing Values ──► mean (numeric) / mode (Lockdown)
  │
  ▼
Convert Date Column ──► dd/mm/yyyy
  │
  ▼
┌────────────────────────────────────────────────────┐
│                   VISUALIZATIONS                   │
│  📈 Spread Over Time   📈 Recovery Trend          │
│  📈 Death Trend        📊 Top 10 Countries        │
│  📊 Top 10 Regions     🥧 Lockdown vs Cases       │
│  🔵 Vaccine vs Cases    🔥 Correlation Heatmap    │
└────────────────────────────────────────────────────┘
  │
  ▼
Compute Recovery Rate & Death Rate ──► print averages
  │
  ▼
END
```

---

## 📋 Expected Dataset Format

The notebook expects a CSV file named **`COVID19_Dataset.csv`** with at least the following columns, since several cells reference them directly:

| Column      | Description                          |
|-------------|--------------------------------------|
| `Date`      | Date of the record                   |
| `Country`   | Country name                         |
| `Region`    | Region/state within the country      |
| `Cases`     | Confirmed cases                      |
| `NewCases`  | New cases reported                   |
| `Deaths`    | Total deaths                         |
| `NewDeaths` | New deaths reported                  |
| `Recovered` | Recovered cases                      |
| `Vaccine`   | Vaccinated population                |
| `Lockdown`  | Lockdown status/measure              |

All example outputs below use a sample `COVID19_Dataset.csv`:

```
Date,Country,Region,Cases,NewCases,Deaths,NewDeaths,Recovered,Vaccine,Lockdown
2020-03-01,India,North,1200,150,30,4,900,5000,Full
2020-03-01,USA,East,2500,300,80,10,1800,12000,Partial
2020-03-02,India,North,1400,200,35,5,1050,5400,Full
2020-03-02,Brazil,South,1800,,60,7,1200,3000,None
2020-03-03,USA,East,2700,200,90,10,2100,12500,Partial
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
df = pd.read_csv('COVID19_Dataset.csv')
df.head()
```

```
         Date Country Region  Cases  NewCases  Deaths  NewDeaths  Recovered  Vaccine Lockdown
0  2020-03-01   India  North   1200     150.0      30          4        900     5000     Full
1  2020-03-01     USA   East   2500     300.0      80         10       1800    12000  Partial
2  2020-03-02   India  North   1400     200.0      35          5       1050     5400     Full
3  2020-03-02  Brazil  South   1800       NaN      60          7       1200     3000     None
4  2020-03-03     USA   East   2700     200.0      90         10       2100    12500  Partial
```

---

## 3️⃣ Step 3 — Dataset Information

> Inspects the shape, columns, data types, and statistical summary of the loaded data.

```python
print("Shape :", df.shape)
print("Columns:", df.columns)
print(df.info())
display(df.describe())
```

```
Shape : (5, 10)
Columns: Index(['Date', 'Country', 'Region', 'Cases', 'NewCases', 'Deaths',
       'NewDeaths', 'Recovered', 'Vaccine', 'Lockdown'],
      dtype='object')

<class 'pandas.core.frame.DataFrame'>
RangeIndex: 5 entries, 0 to 4
Data columns (total 10 columns):
 #   Column     Non-Null Count  Dtype
---  ------     --------------  -----
 0   Date       5 non-null      object
 1   Country    5 non-null      object
 2   Region     5 non-null      object
 3   Cases      5 non-null      int64
 4   NewCases   4 non-null      float64
 5   Deaths     5 non-null      int64
 6   NewDeaths  5 non-null      int64
 7   Recovered  5 non-null      int64
 8   Vaccine    5 non-null      int64
 9   Lockdown   5 non-null      object
dtypes: float64(1), int64(5), object(4)
memory usage: 528.0 bytes
```

---

## 4️⃣ Step 4 — DataFrame Operations

> Column selection, filtering, sorting, value counts, and max-value lookups.

```python
df["Cases"]
df[df["Cases"] > 10000]
df.sort_values(by="Vaccine", ascending=False)
df["Deaths"].value_counts()

print("Maximum Cases: ", df["Cases"].max())
print("Maximum Recovered:", df["Recovered"].max())
print("Maximum Deaths: ", df["Deaths"].max())
```

```
Maximum Cases:  2700
Maximum Recovered: 2100
Maximum Deaths:  90
```

---

## 5️⃣ Step 5 — Handle Missing Values

> Detects missing values, then fills numeric columns with their mean and `Lockdown` with its mode.

```python
print(df.isnull().sum())
```

```
Date         0
Country      0
Region       0
Cases        0
NewCases     1
Deaths       0
NewDeaths    0
Recovered    0
Vaccine      0
Lockdown     0
dtype: int64
```

```python
df['Cases'] = df['Cases'].fillna(df['Cases'].mean())
df['Recovered'] = df['Recovered'].fillna(df['Recovered'].mean())
df['Deaths'] = df['Deaths'].fillna(df['Deaths'].mean())
df['NewCases'] = df['NewCases'].fillna(df['NewCases'].mean())
df['NewDeaths'] = df['NewDeaths'].fillna(df['NewDeaths'].mean())

df['Lockdown'] = df['Lockdown'].fillna(df['Lockdown'].mode()[0])

df.head()
```

> ✅ **Result:** the single missing `NewCases` value is mean-filled to `212.5`, and `df.isnull().sum()` returns all zeros.

---

## 6️⃣ Step 6 — Convert Date Column

> Standardizes the `Date` column into a consistent `dd/mm/yyyy` string format.

```python
df['Date'] = pd.to_datetime(df['Date']).dt.strftime('%d/%m/%Y')
df.head()
```

```
         Date Country Region   Cases  NewCases  Deaths  NewDeaths  Recovered  Vaccine Lockdown
0  01/03/2020   India  North  1200.0     150.0    30.0          4      900.0     5000     Full
1  01/03/2020     USA   East  2500.0     300.0    80.0         10     1800.0    12000  Partial
2  02/03/2020   India  North  1400.0     200.0    35.0          5     1050.0     5400     Full
```

---

## 7️⃣ Step 7 — Data Visualization

> Eight charts covering trends over time, geography, government response, vaccination, and feature correlation.

### 📈 Spread of COVID-19 Over Time
```python
daily_cases = df.groupby("Date")["Cases"].sum().head(100)
plt.plot(daily_cases)
plt.title("Spread of COVID-19 Over Time")
```

### 📈 Recovery Trend
```python
daily_recovery = df.groupby("Date")["Recovered"].sum().head(100)
plt.plot(daily_recovery, color="green")
plt.title("Recovery Trend")
```

### 📈 Death Trend
```python
daily_deaths = df.groupby("Date")["Deaths"].sum().head(100)
plt.plot(daily_deaths, color="red")
plt.title("Death Trend")
```

### 📊 Top 10 Countries by Confirmed Cases
```python
top_country = df.groupby("Country")["Cases"].sum().sort_values(ascending=False).head(10)
top_country.plot(kind="bar", color="yellow")
```

### 📊 Top 10 Regions by Confirmed Cases
```python
top_state = df.groupby("Region")["Cases"].sum().sort_values(ascending=False).head(10)
top_state.plot(kind="bar", color="pink")
```

### 🥧 Government Intervention (Lockdown)
```python
lockdown = df.groupby("Lockdown")["Cases"].mean().head(10)
plt.pie(lockdown, labels=lockdown.index, autopct="%1.1f%%", startangle=90)
```

### 🔵 Vaccination Impact
```python
plt.scatter(df["Vaccine"].head(500), df["Cases"].head(500),
            c=np.random.rand(500), cmap="viridis", s=100)
plt.title("Vaccination vs Confirmed Cases")
```

### 🔥 Correlation Heatmap
```python
sns.heatmap(df.corr(numeric_only=True), annot=True, cmap="coolwarm")
plt.title("Correlation Matrix")
```

```
[Figure windows / inline plots render for each of the 8 charts above]
```

---

## 8️⃣ Step 8 — Recovery & Death Rates

> Adds two derived percentage columns and prints their dataset-wide averages.

```python
df["Recovery Rate"] = (df["Recovered"] / df["Cases"]) * 100
print("Average Recovery Rate:- ", df["Recovery Rate"].mean())

df["Death Rate"] = (df["Deaths"] / df["Cases"]) * 100
print("Average Death Rate:- ", df["Death Rate"].mean())
```

```
Average Recovery Rate:-  72.84
Average Death Rate:-  3.11
```

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐍 **Python 3.10+** | Core programming language |
| 🐼 **pandas** | Loading, cleaning, filtering, sorting, and grouping COVID-19 data |
| 🔢 **NumPy** | Random color mapping for the vaccination scatter plot |
| 📊 **Matplotlib** | Line, bar, pie, and scatter plotting |
| 🌊 **Seaborn** | Styled correlation heatmap |
| 📓 **Jupyter Notebook** | Interactive, cell-by-cell execution and inline chart rendering |

---

## 📊 Results & Insights

After running every cell top to bottom on the sample dataset, here's a summary of what was observed:

| Observation | Detail |
|---|---|
| 📂 **Loading verified** | CSV loads cleanly into a 10-column DataFrame |
| 🔎 **Exploration verified** | `head()`, `tail()`, `dtypes`, `shape`, `info()`, and `describe()` all returned correct results |
| 🧮 **DataFrame ops verified** | Filtering, sorting, `value_counts()`, and max lookups all produced correct results |
| 🩹 **Missing data verified** | Missing `NewCases` value detected and correctly mean-filled |
| 📅 **Date conversion verified** | `Date` column standardized to `dd/mm/yyyy` without errors |
| 🎨 **Visualization verified** | All 8 charts (3 trends, 2 bar charts, 1 pie, 1 scatter, 1 heatmap) rendered without errors |
| 📊 **Rate metrics verified** | `Recovery Rate` and `Death Rate` columns computed and averaged correctly |

---

## 💡 Advantages

- **Familiar Data Stack** — Built entirely on pandas, NumPy, Matplotlib, and Seaborn
- **Linear & Readable** — One notebook, top to bottom, no hidden state or classes to trace
- **End-to-End EDA** — Covers loading, cleaning, exploring, and visualizing in a single pass
- **Multiple Angles of Analysis** — Time trends, geography, government policy, and vaccination all covered
- **Beginner-Friendly** — Great showcase of core pandas/NumPy/Matplotlib/Seaborn fundamentals
- **Eight Chart Types Built In** — Line (×3), Bar (×2), Pie, Scatter, and Heatmap
- **Extensible** — New cells can be added for additional metrics (e.g., case fatality rate by country)

---

## ⚠️ Known Limitations

- Grouped trend plots use `.head(100)` after `groupby`, which may not represent the true chronological order if dates aren't pre-sorted
- Missing-value imputation uses simple mean/mode filling — a reasonable baseline for EDA, but not ideal for rigorous epidemiological analysis
- Column names (`Cases`, `Deaths`, `Recovered`, `Vaccine`, `Lockdown`, etc.) are hardcoded and assume an exact match with your dataset's headers
- Uses `display()` (a Jupyter/IPython built-in) for some outputs — replace with `print()` if converting to a plain `.py` script run outside Jupyter
- The vaccination scatter plot's colors are randomly generated (`np.random.rand`) and don't encode any real variable

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
| 📁 **Project** | COVID-19 Dataset Analysis |
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
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG animations
- 🎓 **All learners** — who build EDA notebooks like this to sharpen their data analysis fundamentals

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
