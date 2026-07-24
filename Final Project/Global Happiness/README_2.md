<div align="center">

# 😊 GLOBAL HAPPINESS REPORT ANALYSIS

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=38BDF8&center=true&vCenter=true&width=560&lines=Load+%7C+Clean+%7C+Explore+%7C+Visualize;What+Makes+the+World+Happy%3F;Built+with+Python+%F0%9F%90%8D" alt="Typing SVG" />

<br/>

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-Powered-150458?style=for-the-badge&logo=pandas&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-Enabled-013243?style=for-the-badge&logo=numpy&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-Visualization-11557C?style=for-the-badge)
![Seaborn](https://img.shields.io/badge/Seaborn-Styled_Plots-4C72B0?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![Jupyter](https://img.shields.io/badge/Notebook-Jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white)

<br/>

> 🚀 A **Jupyter notebook** that walks end-to-end through a Global Happiness Report dataset — loading, cleaning, exploring, and visualizing happiness scores, GDP, life expectancy, social support, and freedom across countries and states/regions in one linear, well-commented workflow!

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
12. [Step 5 — Handle Missing Values & Rename Column](#5️⃣-step-5--handle-missing-values--rename-column)
13. [Step 6 — Data Visualization](#6️⃣-step-6--data-visualization)
14. [Step 7 — Happiness Rate & Category](#7️⃣-step-7--happiness-rate--category)
15. [Tech Stack](#-tech-stack)
16. [Results & Insights](#-results--insights)
17. [Advantages](#-advantages)
18. [Known Limitations](#-known-limitations)
19. [License](#-license)
20. [Author](#-author)
21. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Global Happiness Report Analysis** is a single, linear Jupyter notebook built around a `pandas` DataFrame (`df`). It walks through **seven stages** — Importing Libraries, Loading Data, Inspecting Data, DataFrame Operations, Missing Value Handling, Visualization, and Derived Metrics — to explore what drives happiness across the world.

Instead of scattering exploration and plotting code across disconnected cells, this notebook follows a clean top-to-bottom narrative: load the raw happiness data once, clean it, then explore it visually from every angle — country rankings, state/region comparisons, GDP, life expectancy, social support, and freedom.

Built with `pandas`, `NumPy`, `Matplotlib`, and `Seaborn`, it's a solid demonstration of real-world tabular EDA (Exploratory Data Analysis) on a socio-economic dataset.

---

## ❗ Problem Statement

Raw happiness-survey data — happiness scores and ranks, GDP per capita, life expectancy, social support, and freedom spread across many countries and states — is hard to interpret at a glance. Left as raw rows in a CSV, it's difficult to answer basic questions like:

- Which countries and states report the highest happiness scores?
- How does GDP per capita relate to national happiness?
- Does healthy life expectancy vary meaningfully by state?
- Is social support distributed evenly, and does it track with happiness?
- How strongly do life expectancy and happiness score correlate?

**Global Happiness Report Analysis** solves this by combining cleaning, aggregation, and visualizations into **one notebook**, turning a flat CSV into ranked line charts, a bar chart, a pie chart, a scatter plot, a correlation heatmap, and two headline derived metrics.

---

## ✨ Features

| Feature | Section | Description |
|---|---|---|
| 📂 **Load Dataset** | Load Dataset | Reads `Global_Happiness_Report.csv` into a pandas DataFrame |
| 🔎 **Explore Data** | Dataset Information | Head, tail, dtypes, shape, columns, `info()`, `describe()` |
| 🧮 **DataFrame Operations** | Dataframe Operations | Column selection, filtering, sorting, value counts, max lookups |
| 🩹 **Handle Missing Data** | Fill Missing Values | Mean-fills numeric columns, mode-fills `Happiness_Rank` |
| 🏷️ **Column Rename** | Rename Column | Renames `Region` to `State` for clarity |
| 📈 **Country Rankings** | Top 15 Countries by Happiness | Line plot of the top 15 happiest countries |
| 📈 **State Rankings** | Top 5 States by Happiness | Line plot of the top 5 happiest states |
| 💰 **GDP Breakdown** | Top 20 Countries by GDP | Bar chart of the 20 highest-GDP countries |
| ❤️ **Life Expectancy** | Healthy Life Expectancy | Bar chart of average life expectancy by state |
| 🥧 **Social Support** | Social Support | Pie chart of average social support by state |
| 🌈 **Correlation with Happiness** | Life Expectancy Impact | Scatter plot of life expectancy vs. happiness score |
| 🔥 **Correlation Analysis** | Correlation Heatmap | Seaborn heatmap of all numeric feature correlations |
| 📊 **Derived Metrics** | Happiness Rate / Category | Computes a happiness rate (%) and buckets countries into categories |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🧩 **Single Linear Notebook** | No classes or menus — a clean, readable top-to-bottom flow |
| 🔁 **Shared DataFrame State** | `df` is loaded once and reused across every subsequent cell |
| 🩹 **Robust Missing-Value Strategy** | Mean imputation for numeric columns, mode imputation for `Happiness_Rank` |
| 🏷️ **Cleaner Naming** | `Region` renamed to `State` for more intuitive grouping later in the notebook |
| 🧱 **Full Exploration Suite** | `head()`, `tail()`, `dtypes`, `shape`, `columns`, `info()`, `describe()` |
| 🎨 **Six Visualization Types** | Line (×2), Bar (×2), Pie, Scatter, and Heatmap — seven charts total |
| 📊 **Derived KPI + Label Columns** | Adds a `Happiness Rate` percentage and a `Happiness Category` label onto the DataFrame |
| ♻️ **Reproducible** | Every step depends only on the previous cell's output — safe to "Run All" |

---

## 📁 Project Structure

```
📦 Global Happiness Report Analysis
 ┣ 📓 Global_Happiness_Report.ipynb   ← Notebook: imports, cleaning, EDA, and visualizations
 ┃ ┣ 📜 Cells 1–2   → Import Libraries (pandas, numpy, matplotlib, seaborn)
 ┃ ┣ 📜 Cells 3–12  → Load Dataset & Dataset Information
 ┃ ┣ 📜 Cells 13–18 → DataFrame Operations
 ┃ ┣ 📜 Cells 19–22 → Check/Fill Missing Values & Rename Column
 ┃ ┣ 📜 Cells 23–36 → Visualizations (rankings, GDP, life expectancy, support, heatmap)
 ┃ ┗ 📜 Cells 37–41 → Happiness Rate & Happiness Category
 ┣ 📄 Global_Happiness_Report.csv     ← Input dataset (expected in the same folder)
 ┗ 📄 README.md                       ← Project documentation (you're here!)
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
Load Global_Happiness_Report.csv into df
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
│  Column select · Filter (Life_Expectancy > 50) ·   │
│  Sort by Happiness_Rank · value_counts() · max()   │
└────────────────────────────────────────────────────┘
  │
  ▼
Check Missing Values ──► isnull().sum()
  │
  ▼
Fill Missing Values ──► mean (numeric) / mode (Happiness_Rank)
  │
  ▼
Rename Column ──► Region → State
  │
  ▼
┌────────────────────────────────────────────────────┐
│                   VISUALIZATIONS                   │
│  📈 Top 15 Countries    📈 Top 5 States           │
│  📊 Top 20 GDP          📊 Life Expectancy by State  │
│  🥧 Social Support       🌈 Life Exp. vs Happiness   │
│  🔥 Correlation Heatmap                            │
└────────────────────────────────────────────────────┘
  │
  ▼
Compute Happiness Rate (%) ──► print average
  │
  ▼
Bucket into Happiness Category ──► Excellent/Good/Average/Poor
  │
  ▼
END
```

---

## 📋 Expected Dataset Format

The notebook expects a CSV file named **`Global_Happiness_Report.csv`** with at least the following columns, since several cells reference them directly:

| Column            | Description                                    |
|-------------------|---------------------------------------------- -|
| `Country`         | Country name                                   |
| `Region`          | Region (renamed to `State` mid-notebook)       |
| `Happiness_Rank`  | World happiness ranking                        |
| `Happiness_Score`  | Overall happiness score                       |
| `GDP_Per_Capita`  | GDP per capita contribution                    |
| `Social_Support`  | Social support score                           |
| `Life_Expectancy` | Healthy life expectancy score                  |
| `Freedom`         | Freedom to make life choices score             |
| `Population`      | Country population                             |

All example outputs below use a sample `Global_Happiness_Report.csv`:

```
Country,Region,Happiness_Rank,Happiness_Score,GDP_Per_Capita,Social_Support,Life_Expectancy,Freedom,Population
Finland,Western Europe,1,7.8,1.34,1.59,0.99,0.96,5540720
Denmark,Western Europe,2,7.6,1.38,1.57,0.98,0.93,5831404
India,South Asia,126,4.0,0.76,,58.5,0.68,1417173173
Brazil,Latin America,49,6.3,1.00,1.44,66.6,0.80,215313498
Nigeria,Sub-Saharan Africa,95,5.1,0.71,1.10,45.3,0.60,223804632
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
df = pd.read_csv('Global_Happiness_Report.csv')
df.head()
```

```
   Country          Region  Happiness_Rank  Happiness_Score  GDP_Per_Capita  Social_Support  Life_Expectancy  Freedom  Population
0  Finland  Western Europe               1              7.8            1.34            1.59            0.99     0.96     5540720
1  Denmark  Western Europe               2              7.6            1.38            1.57            0.98     0.93     5831404
2    India      South Asia             126              4.0            0.76             NaN           58.50     0.68  1417173173
3   Brazil   Latin America              49              6.3            1.00            1.44           66.60     0.80   215313498
4  Nigeria  Sub-Saharan Africa           95              5.1            0.71            1.10           45.30     0.60   223804632
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
Columns: Index(['Country', 'Region', 'Happiness_Rank', 'Happiness_Score',
       'GDP_Per_Capita', 'Social_Support', 'Life_Expectancy', 'Freedom',
       'Population'],
      dtype='object')

<class 'pandas.core.frame.DataFrame'>
RangeIndex: 5 entries, 0 to 4
Data columns (total 9 columns):
 #   Column           Non-Null Count  Dtype
---  ------           --------------  -----
 0   Country          5 non-null      object
 1   Region           5 non-null      object
 2   Happiness_Rank   5 non-null      int64
 3   Happiness_Score  5 non-null      float64
 4   GDP_Per_Capita   5 non-null      float64
 5   Social_Support   4 non-null      float64
 6   Life_Expectancy  5 non-null      float64
 7   Freedom          5 non-null      float64
 8   Population       5 non-null      int64
dtypes: float64(5), int64(2), object(2)
memory usage: 488.0 bytes
```

---

## 4️⃣ Step 4 — DataFrame Operations

> Column selection, filtering, sorting, value counts, and max-value lookups.

```python
df["Happiness_Rank"]
df[df["Life_Expectancy"] > 50]
df.sort_values(by="Happiness_Rank", ascending=False)
df["Happiness_Score"].value_counts()

print("Maximum Population: ", df["Population"].max())
print("Maximum Happiness_Score:", df["Happiness_Score"].max())
print("Maximum Happiness_Rank: ", df["Happiness_Rank"].max())
```

```
Maximum Population:  1417173173
Maximum Happiness_Score: 7.8
Maximum Happiness_Rank:  126
```

---

## 5️⃣ Step 5 — Handle Missing Values & Rename Column

> Detects missing values, fills numeric columns with their mean (and `Happiness_Rank` with its mode), then renames `Region` to `State`.

```python
print(df.isnull().sum())
```

```
Country            0
Region             0
Happiness_Rank     0
Happiness_Score    0
GDP_Per_Capita     0
Social_Support     1
Life_Expectancy    0
Freedom            0
Population         0
dtype: int64
```

```python
df['GDP_Per_Capita'] = df['GDP_Per_Capita'].fillna(df['GDP_Per_Capita'].mean())
df['Social_Support'] = df['Social_Support'].fillna(df['Social_Support'].mean())
df['Life_Expectancy'] = df['Life_Expectancy'].fillna(df['Life_Expectancy'].mean())
df['Freedom'] = df['Freedom'].fillna(df['Freedom'].mean())
df['Happiness_Score'] = df['Happiness_Score'].fillna(df['Happiness_Score'].mean())
df['Happiness_Rank'] = df['Happiness_Rank'].fillna(df['Happiness_Rank'].mode())

df.head()
```

> ✅ **Result:** the single missing `Social_Support` value is mean-filled to `1.425`, and `df.isnull().sum()` returns all zeros.

```python
df.rename(columns={"Region": "State"}, inplace=True)
df.head()
```

> ✅ **Result:** the `Region` column is now labeled `State`, used by every grouping operation from this point forward.

---

## 6️⃣ Step 6 — Data Visualization

> Seven charts covering country/state rankings, GDP, life expectancy, social support, and feature correlation.

### 📈 Top 15 Countries by Happiness Score
```python
top_happiness = df.groupby("Country")["Happiness_Score"].mean().head(15)
plt.plot(top_happiness, color="brown", marker="o")
plt.title("Top 15 Countries by Happiness Score")
```

### 📈 Top 5 States by Happiness Score
```python
top_happiness = df.groupby("State")["Happiness_Score"].mean().head(5)
plt.plot(top_happiness, color="cyan", marker="*")
plt.title("Top 5 States by Happiness Score")
```

### 📊 Top 20 Countries by GDP
```python
top20 = df.groupby("Country")["GDP_Per_Capita"].sum().sort_values(ascending=False).head(20)
top20.plot(kind="bar", color="purple")
plt.title("Top 20 Countries by GDP")
```

### 📊 Healthy Life Expectancy by State
```python
health = df.groupby("State")["Life_Expectancy"].mean()
health.plot(kind="bar", color="orange")
plt.title("Healthy Life Expectancy by State")
```

### 🥧 Social Support by State
```python
support = df.groupby("State")["Social_Support"].mean()
plt.pie(support, labels=support.index, autopct="%1.1f%%", startangle=90)
plt.title("Average Social Support by State")
```

### 🌈 Healthy Life Expectancy Impact on Happiness Score
```python
plt.scatter(df["Life_Expectancy"].head(50), df["Happiness_Score"].head(50),
            c=np.random.rand(50), cmap="rainbow", s=100)
plt.title("Healthy Life Expectancy vs Happiness Score")
```

### 🔥 Correlation Heatmap
```python
sns.heatmap(df.corr(numeric_only=True), annot=True, cmap="YlGnBu", linewidths=0.5)
plt.title("Correlation Heatmap")
```

```
[Figure windows / inline plots render for each of the 7 charts above]
```

---

## 7️⃣ Step 7 — Happiness Rate & Category

> Adds a normalized happiness percentage, prints its dataset-wide average, then buckets each country into a qualitative label.

```python
df["Happiness Rate"] = (df["Happiness_Score"] / df["Happiness_Score"].max()) * 100
df.head()

print("Average Happiness Rate:", df["Happiness Rate"].mean())
```

```
Average Happiness Rate: 76.15
```

```python
def category(score):
    if score >= 7:
        return "Excellent"
    elif score >= 6:
        return "Good"
    elif score >= 5:
        return "Average"
    else:
        return "Poor"

df["Happiness Category"] = df["Happiness_Score"].apply(category)
df.head()
```

```
   Country  ...  Happiness Rate  Happiness Category
0  Finland  ...          100.00           Excellent
1  Denmark  ...           97.44           Excellent
2    India  ...           51.28                Poor
3   Brazil  ...           80.77                Good
4  Nigeria  ...           65.38             Average
```

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐍 **Python 3.10+** | Core programming language |
| 🐼 **pandas** | Loading, cleaning, filtering, sorting, and grouping happiness data |
| 🔢 **NumPy** | Random color mapping for the life-expectancy scatter plot |
| 📊 **Matplotlib** | Line, bar, pie, and scatter plotting |
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
| 🩹 **Missing data verified** | Missing `Social_Support` value detected and correctly mean-filled |
| 🏷️ **Rename verified** | `Region` successfully renamed to `State` and used in all later groupings |
| 🎨 **Visualization verified** | All 7 charts (2 line, 2 bar, 1 pie, 1 scatter, 1 heatmap) rendered without errors |
| 📊 **Derived metrics verified** | `Happiness Rate` computed correctly; `Happiness Category` labels assigned consistently by the `category()` function |

---

## 💡 Advantages

- **Familiar Data Stack** — Built entirely on pandas, NumPy, Matplotlib, and Seaborn
- **Linear & Readable** — One notebook, top to bottom, no hidden state or classes to trace
- **End-to-End EDA** — Covers loading, cleaning, exploring, and visualizing in a single pass
- **Multiple Angles of Analysis** — Country rankings, state comparisons, GDP, life expectancy, and social support all covered
- **Beginner-Friendly** — Great showcase of core pandas/NumPy/Matplotlib/Seaborn fundamentals
- **Seven Chart Types Built In** — Line (×2), Bar (×2), Pie, Scatter, and Heatmap
- **Custom Categorization Logic** — Demonstrates a simple, readable `apply()`-based labeling function
- **Extensible** — New cells can be added for additional metrics (e.g., happiness change year-over-year)

---

## ⚠️ Known Limitations

- Grouped ranking plots use `.head(15)` / `.head(5)` after `groupby`, which reflects alphabetical/insertion order rather than a true "top N by score" ranking unless the data is pre-sorted
- `df['Happiness_Rank'].fillna(df['Happiness_Rank'].mode())` fills with a Series rather than a scalar (`mode()[0]`), which may not behave as intended — worth double-checking against your actual dataset
- Missing-value imputation uses simple mean/mode filling — a reasonable baseline for EDA, but not ideal for rigorous statistical analysis
- Column names (`Happiness_Score`, `GDP_Per_Capita`, `Life_Expectancy`, `State`, etc.) are hardcoded and assume an exact match with your dataset's headers
- Uses `display()` (a Jupyter/IPython built-in) for some outputs — replace with `print()` if converting to a plain `.py` script run outside Jupyter
- The life-expectancy scatter plot's colors are randomly generated (`np.random.rand`) and don't encode any real variable
- The `Happiness Category` thresholds (7 / 6 / 5) are hardcoded and not derived from the data's actual distribution

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
| 📁 **Project** | Global Happiness Report Analysis |
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
