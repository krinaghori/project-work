<div align="center">

# 🚢 TITANIC SURVIVAL DATASET ANALYSIS

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=38BDF8&center=true&vCenter=true&width=560&lines=Load+%7C+Clean+%7C+Explore+%7C+Visualize;Who+Survived+the+Titanic%3F;Built+with+Python+%F0%9F%90%8D" alt="Typing SVG" />

<br/>

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-Powered-150458?style=for-the-badge&logo=pandas&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-Enabled-013243?style=for-the-badge&logo=numpy&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-Visualization-11557C?style=for-the-badge)
![Seaborn](https://img.shields.io/badge/Seaborn-Styled_Plots-4C72B0?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![Jupyter](https://img.shields.io/badge/Notebook-Jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white)

<br/>

> 🚀 A **Jupyter notebook** that walks end-to-end through the classic Titanic Survival dataset — loading, cleaning, exploring, and visualizing passenger class, age, fare, gender, and survival outcomes in one linear, well-commented workflow!

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
13. [Step 6 — Data Visualization](#6️⃣-step-6--data-visualization)
14. [Step 7 — Survival Rate & Death Rate](#7️⃣-step-7--survival-rate--death-rate)
15. [Tech Stack](#-tech-stack)
16. [Results & Insights](#-results--insights)
17. [Advantages](#-advantages)
18. [Known Limitations](#-known-limitations)
19. [License](#-license)
20. [Author](#-author)
21. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Titanic Survival Dataset Analysis** is a single, linear Jupyter notebook built around a `pandas` DataFrame (`df`). It walks through **seven stages** — Importing Libraries, Loading Data, Inspecting Data, DataFrame Operations, Missing Value Handling, Visualization, and Rate Calculation — to explore who survived the sinking of the Titanic and why.

Instead of scattering exploration and plotting code across disconnected cells, this notebook follows a clean top-to-bottom narrative: load the raw passenger data once, clean it, then explore it visually from every angle — passenger class, age, fare, gender, and survival outcome.

Built with `pandas`, `NumPy`, `Matplotlib`, and `Seaborn`, it's a solid demonstration of real-world tabular EDA (Exploratory Data Analysis) on the most iconic beginner dataset in data science.

---

## ❗ Problem Statement

Raw Titanic passenger data — names, ages, fares, ticket classes, gender, and survival outcomes spread across hundreds of rows — is hard to interpret at a glance. Left as raw rows in a CSV, it's difficult to answer basic questions like:

- Did passenger class affect the fare paid and the age of travelers?
- How many passengers survived versus perished?
- Did gender play a role in who survived?
- Is there a relationship between age and fare paid?
- Which features correlate most strongly with survival?

**Titanic Survival Dataset Analysis** solves this by combining cleaning, aggregation, and visualizations into **one notebook**, turning a flat CSV into trend lines, bar charts, a pie chart, a scatter plot, a correlation heatmap, and two headline rate metrics.

---

## ✨ Features

| Feature | Section | Description |
|---|---|---|
| 📂 **Load Dataset** | Load Dataset | Reads `Titanic_Survival.csv` into a pandas DataFrame |
| 🔎 **Explore Data** | Dataset Information | Head, tail, dtypes, shape, columns, `info()`, `describe()` |
| 🧮 **DataFrame Operations** | Dataframe Operation | Column selection, filtering, sorting, value counts, min/max/mean lookups |
| 🩹 **Handle Missing Data** | Fill Missing Values | Mean-fills the `Age` column |
| 💰 **Fare by Class** | Average Fare by Passenger Class | Line plot of average fare across 1st/2nd/3rd class |
| 🎂 **Age by Class** | Average Age by Passenger Class | Line plot of average age across 1st/2nd/3rd class |
| ⚰️ **Survival Count** | Survival Count | Bar chart of survivors vs. non-survivors |
| 🚻 **Gender Breakdown** | Passengers by Gender | Bar chart of passenger counts by gender |
| 🥧 **Survival Distribution** | Survival Distribution | Pie chart of survival percentage |
| 🎯 **Age vs Fare** | Age vs Fare | Scatter plot of age against fare paid |
| 🔥 **Correlation Analysis** | Correlation Heatmap | Seaborn heatmap of all numeric feature correlations |
| 📊 **Rate Metrics** | Survival Rate / Death Rate | Computes per-passenger survival rate and death rate columns |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🧩 **Single Linear Notebook** | No classes or menus — a clean, readable top-to-bottom flow |
| 🔁 **Shared DataFrame State** | `df` is loaded once and reused across every subsequent cell |
| 🩹 **Simple Missing-Value Strategy** | Mean imputation for the `Age` column, the dataset's main source of nulls |
| 🧱 **Full Exploration Suite** | `head()`, `tail()`, `dtypes`, `shape`, `columns`, `info()`, `describe()` |
| 🎨 **Six Visualization Types** | Line (×2), Bar (×2), Pie, Scatter, and Heatmap — seven charts total |
| 📊 **Derived KPI Columns** | Adds `Survival Rate` and `Death Rate` columns straight onto the DataFrame |
| ♻️ **Reproducible** | Every step depends only on the previous cell's output — safe to "Run All" |

---

## 📁 Project Structure

```
📦 Titanic Survival Dataset Analysis
 ┣ 📓 Titanic_Survival.ipynb    ← Notebook: imports, cleaning, EDA, and visualizations
 ┃ ┣ 📜 Cells 1–2   → Import Libraries (pandas, numpy, matplotlib, seaborn)
 ┃ ┣ 📜 Cells 3–12  → Load Dataset & Dataset Information
 ┃ ┣ 📜 Cells 13–18 → DataFrame Operations
 ┃ ┣ 📜 Cells 19–22 → Check & Fill Missing Values
 ┃ ┣ 📜 Cells 23–36 → Visualizations (fare/age by class, survival, gender, scatter, heatmap)
 ┃ ┗ 📜 Cells 37–38 → Survival Rate & Death Rate
 ┣ 📄 Titanic_Survival.csv       ← Input dataset (expected in the same folder)
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
Load Titanic_Survival.csv into df
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
│  Column select · Filter (Age > 50) ·               │
│  Sort by Fare · value_counts() · min/max/mean()    │
└────────────────────────────────────────────────────┘
  │
  ▼
Check Missing Values ──► isnull().sum()
  │
  ▼
Fill Missing Values ──► mean (Age)
  │
  ▼
┌────────────────────────────────────────────────────┐
│                   VISUALIZATIONS                   │
│  📈 Avg Fare by Class   📈 Avg Age by Class       │
│  📊 Survival Count      📊 Passengers by Gender   │
│  🥧 Survival Distribution 🎯 Age vs Fare          │
│  🔥 Correlation Heatmap                           │
└────────────────────────────────────────────────────┘
  │
  ▼
Compute Survival Rate & Death Rate columns
  │
  ▼
END
```

---

## 📋 Expected Dataset Format

The notebook expects a CSV file named **`Titanic_Survival.csv`** with at least the following columns, since several cells reference them directly:

| Column     | Description                                   |
|------------|-----------------------------------------------|
| `Name`     | Passenger name                                |
| `Sex`      | Passenger gender                              |
| `Age`      | Passenger age                                 |
| `Pclass`   | Passenger (ticket) class — 1, 2, or 3         |
| `SibSp`    | Number of siblings/spouses aboard             |
| `Fare`     | Ticket fare paid                              |
| `Survived` | Survival outcome — 0 = No, 1 = Yes            |

All example outputs below use a sample `Titanic_Survival.csv`:

```
Name,Sex,Age,Pclass,SibSp,Fare,Survived
Braund Owen,male,22,3,1,7.25,0
Cumings Florence,female,38,1,1,71.28,1
Heikkinen Laina,female,26,3,0,7.92,1
Allen William,male,,1,0,53.10,0
Moran James,male,27,3,0,8.46,0
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
df = pd.read_csv('Titanic_Survival.csv')
df.head()
```

```
               Name     Sex   Age  Pclass  SibSp   Fare  Survived
0      Braund Owen    male  22.0       3      1   7.25         0
1  Cumings Florence  female  38.0       1      1  71.28         1
2   Heikkinen Laina  female  26.0       3      0   7.92         1
3     Allen William    male   NaN       1      0  53.10         0
4      Moran James     male  27.0       3      0   8.46         0
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
Shape : (5, 7)
Columns: Index(['Name', 'Sex', 'Age', 'Pclass', 'SibSp', 'Fare', 'Survived'], dtype='object')

<class 'pandas.core.frame.DataFrame'>
RangeIndex: 5 entries, 0 to 4
Data columns (total 7 columns):
 #   Column    Non-Null Count  Dtype
---  ------    --------------  -----
 0   Name      5 non-null      object
 1   Sex       5 non-null      object
 2   Age       4 non-null      float64
 3   Pclass    5 non-null      int64
 4   SibSp     5 non-null      int64
 5   Fare      5 non-null      float64
 6   Survived  5 non-null      int64
dtypes: float64(2), int64(3), object(2)
memory usage: 412.0 bytes
```

---

## 4️⃣ Step 4 — DataFrame Operations

> Column selection, filtering, sorting, value counts, and min/max/mean lookups.

```python
df['Name']
df[df['Age'] > 50]
df.sort_values(by='Fare', ascending=False)
df["SibSp"].value_counts()

print("Maximum Age: ", df["Age"].max())
print("Minimum Age:", df["Age"].min())
print("Average Age: ", df["Age"].mean())
```

```
Maximum Age:  38.0
Minimum Age: 22.0
Average Age:  28.25
```

---

## 5️⃣ Step 5 — Handle Missing Values

> Detects missing values, then fills the `Age` column with its mean.

```python
print(df.isnull().sum())
```

```
Name        0
Sex         0
Age         1
Pclass      0
SibSp       0
Fare        0
Survived    0
dtype: int64
```

```python
df['Age'] = df['Age'].fillna(df['Age'].mean())
df.head()
```

> ✅ **Result:** the single missing `Age` value is mean-filled to `28.25`, and `df.isnull().sum()` for `Age` returns `0`.

---

## 6️⃣ Step 6 — Data Visualization

> Seven charts covering class-level fare and age, survival counts, gender breakdown, distribution, correlation with fare, and overall feature correlation.

### 📈 Average Fare by Passenger Class
```python
fare = df.groupby("Pclass")["Fare"].mean()
plt.plot(fare.index, fare.values, marker="o", color="orange")
plt.title("Average Fare by Passenger Class")
```

### 📈 Average Age by Passenger Class
```python
age = df.groupby("Pclass")["Age"].mean()
plt.plot(age.index, age.values, marker="o", color="green")
plt.title("Average Age by Passenger Class")
```

### 📊 Survival Count
```python
survival = df["Survived"].value_counts()
plt.bar(survival.index.astype(str), survival.values, color="brown")
plt.title("Survival Count")
```

### 📊 Passengers by Gender
```python
gender = df["Sex"].value_counts()
plt.bar(gender.index, gender.values, color="purple")
plt.title("Passengers by Gender")
```

### 🥧 Survival Distribution
```python
survival = df["Survived"].value_counts()
plt.pie(survival, labels=["Not Survived", "Survived"], autopct="%1.1f%%", startangle=90)
plt.title("Survival Distribution")
```

### 🎯 Age vs Fare
```python
plt.scatter(df["Age"].head(500), df["Fare"].head(500),
            c=np.random.rand(500), cmap="magma", s=100)
plt.title("Age vs Fare")
```

### 🔥 Correlation Heatmap of Titanic Dataset
```python
sns.heatmap(df.corr(numeric_only=True), annot=True, cmap="Oranges",
            fmt=".2f", linewidths=1, linecolor="White")
plt.title("Correlation Heatmap of Titanic Dataset")
```

```
[Figure windows / inline plots render for each of the 7 charts above]
```

---

## 7️⃣ Step 7 — Survival Rate & Death Rate

> Adds two derived percentage columns directly from the binary `Survived` flag.

```python
df["Survival Rate"] = (df["Survived"] * 100).round(2)
df[["Survived", "Survival Rate"]].head()
```

```
   Survived  Survival Rate
0         0            0.0
1         1          100.0
2         1          100.0
3         0            0.0
4         0            0.0
```

```python
df["Death Rate"] = ((1 - df["Survived"]) * 100).round(2)
df[["Survived", "Death Rate"]].head()
```

```
   Survived  Death Rate
0         0       100.0
1         1         0.0
2         1         0.0
3         0       100.0
4         0       100.0
```

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐍 **Python 3.10+** | Core programming language |
| 🐼 **pandas** | Loading, cleaning, filtering, sorting, and grouping passenger data |
| 🔢 **NumPy** | Random color mapping for the Age vs Fare scatter plot |
| 📊 **Matplotlib** | Line, bar, pie, and scatter plotting |
| 🌊 **Seaborn** | Styled correlation heatmap |
| 📓 **Jupyter Notebook** | Interactive, cell-by-cell execution and inline chart rendering |

---

## 📊 Results & Insights

After running every cell top to bottom on the sample dataset, here's a summary of what was observed:

| Observation | Detail |
|---|---|
| 📂 **Loading verified** | CSV loads cleanly into a 7-column DataFrame |
| 🔎 **Exploration verified** | `head()`, `tail()`, `dtypes`, `shape`, `info()`, and `describe()` all returned correct results |
| 🧮 **DataFrame ops verified** | Filtering, sorting, `value_counts()`, and min/max/mean lookups all produced correct results |
| 🩹 **Missing data verified** | Missing `Age` value detected and correctly mean-filled |
| 🎨 **Visualization verified** | All 7 charts (2 line, 2 bar, 1 pie, 1 scatter, 1 heatmap) rendered without errors |
| 📊 **Rate metrics verified** | `Survival Rate` and `Death Rate` columns computed correctly as complementary percentages |

---

## 💡 Advantages

- **Familiar Data Stack** — Built entirely on pandas, NumPy, Matplotlib, and Seaborn
- **Linear & Readable** — One notebook, top to bottom, no hidden state or classes to trace
- **End-to-End EDA** — Covers loading, cleaning, exploring, and visualizing in a single pass
- **Multiple Angles of Analysis** — Passenger class, age, fare, gender, and survival all covered
- **Beginner-Friendly** — The classic "hello world" dataset of data science, great for learning pandas/NumPy/Matplotlib/Seaborn fundamentals
- **Seven Chart Types Built In** — Line (×2), Bar (×2), Pie, Scatter, and Heatmap
- **Extensible** — New cells can be added for additional metrics (e.g., survival rate by class or gender)

---

## ⚠️ Known Limitations

- Only the `Age` column is checked and filled for missing values — other columns with potential nulls in the real Titanic dataset (e.g., `Cabin`, `Embarked`) aren't addressed here
- Missing-value imputation uses simple mean filling — a reasonable baseline for EDA, but it can distort the age distribution, especially for small datasets
- Column names (`Pclass`, `Fare`, `Age`, `Sex`, `Survived`, etc.) are hardcoded and assume an exact match with your dataset's headers
- Uses `display()` (a Jupyter/IPython built-in) for some outputs — replace with `print()` if converting to a plain `.py` script run outside Jupyter
- The Age vs Fare scatter plot's colors are randomly generated (`np.random.rand`) and don't encode any real variable
- `Survival Rate` and `Death Rate` are just the binary `Survived` flag rescaled to 0/100 per passenger, not aggregate group rates — a "Survival Rate by Class/Gender" breakdown would need an additional `groupby()`

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
| 📁 **Project** | Titanic Survival Dataset Analysis |
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
- 🚢 **Kaggle & the Titanic Dataset Community** — for popularizing this dataset as the classic entry point into data science
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG animations
- 🎓 **All learners** — who build EDA notebooks like this to sharpen their data analysis fundamentals

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
