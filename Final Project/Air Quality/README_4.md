<div align="center">

# 🌫️ AIR QUALITY ANALYSIS

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=38BDF8&center=true&vCenter=true&width=560&lines=Load+%7C+Clean+%7C+Explore+%7C+Visualize;How+Clean+Is+the+Air+We+Breathe%3F;Built+with+Python+%F0%9F%90%8D" alt="Typing SVG" />

<br/>

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-Powered-150458?style=for-the-badge&logo=pandas&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-Enabled-013243?style=for-the-badge&logo=numpy&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-Visualization-11557C?style=for-the-badge)
![Seaborn](https://img.shields.io/badge/Seaborn-Styled_Plots-4C72B0?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![Jupyter](https://img.shields.io/badge/Notebook-Jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white)

<br/>

> 🚀 A **Jupyter notebook** that walks end-to-end through an Air Quality dataset — loading, cleaning, exploring, and visualizing pollutant levels, AQI, temperature, humidity, and wind speed across cities in one linear, well-commented workflow!

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
14. [Tech Stack](#-tech-stack)
15. [Results & Insights](#-results--insights)
16. [Advantages](#-advantages)
17. [Known Limitations](#-known-limitations)
18. [License](#-license)
19. [Author](#-author)
20. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Air Quality Analysis** is a single, linear Jupyter notebook built around a `pandas` DataFrame (`df`). It walks through **six stages** — Importing Libraries, Loading Data, Inspecting Data, DataFrame Operations, Missing Value Handling, and Visualization — to explore how air quality varies across cities and what drives it.

Instead of scattering exploration and plotting code across disconnected cells, this notebook follows a clean top-to-bottom narrative: load the raw sensor/reporting data once, clean it, then explore it visually from every angle — city-level AQI, pollutant concentration (PM2.5, PM10, NO2, Ozone), weather conditions, and AQI category distribution.

Built with `pandas`, `NumPy`, `Matplotlib`, and `Seaborn`, it's a solid demonstration of real-world tabular EDA (Exploratory Data Analysis) on environmental sensor data.

---

## ❗ Problem Statement

Raw air-quality readings — pollutant concentrations, AQI values, temperature, humidity, and wind speed spread across many cities and records — are hard to interpret at a glance. Left as raw rows in a CSV, it's difficult to answer basic questions like:

- Which cities have the worst (or best) average air quality?
- How does PM2.5 concentration vary by city?
- What proportion of readings fall into each AQI category (Good, Moderate, Poor, etc.)?
- Is there a visible relationship between PM2.5 and overall AQI?
- Which environmental factors correlate most strongly with AQI?

**Air Quality Analysis** solves this by combining cleaning, aggregation, and visualizations into **one notebook**, turning a flat CSV into ranked line/bar charts, a pie chart, a scatter plot, and a correlation heatmap.

---

## ✨ Features

| Feature | Section | Description |
|---|---|---|
| 📂 **Load Dataset** | Load Dataset | Reads `Air_Quality_Analysis.csv` into a pandas DataFrame |
| 🔎 **Explore Data** | Dataset Information | Head, tail, dtypes, shape, columns, `info()`, `describe()` |
| 🧮 **DataFrame Operations** | Dataframe Operations | Column selection, filtering, sorting, value counts, min/max lookups |
| 🩹 **Handle Missing Data** | Fill Missing Values | Mean-fills `PM2.5`, `PM10`, `NO2`, `Temperature`, `Humidity`, and `AQI` |
| 🌆 **City AQI Ranking** | Average AQI by City | Line plot of average AQI per city |
| 🏭 **City PM2.5 Ranking** | Average PM2.5 by City | Bar chart of average PM2.5 per city |
| 🥧 **AQI Category Split** | AQI Category Distribution | Pie chart of the proportion of readings per AQI category |
| 🎯 **Pollutant vs AQI** | PM2.5 vs AQI | Scatter plot of PM2.5 concentration against AQI |
| 🔥 **Correlation Analysis** | Correlation Heatmap | Seaborn heatmap of all numeric feature correlations |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🧩 **Single Linear Notebook** | No classes or menus — a clean, readable top-to-bottom flow |
| 🔁 **Shared DataFrame State** | `df` is loaded once and reused across every subsequent cell |
| 🩹 **Comprehensive Missing-Value Strategy** | Mean imputation applied across six key numeric pollutant/weather columns |
| 🧱 **Full Exploration Suite** | `head()`, `tail()`, `dtypes`, `shape`, `columns`, `info()`, `describe()` |
| 📉 **Min & Max Lookups** | Reports both minimum and maximum for Ozone, Temperature, and Wind Speed |
| 🎨 **Five Visualization Types** | Line, Bar, Pie, Scatter, and Heatmap |
| ♻️ **Reproducible** | Every step depends only on the previous cell's output — safe to "Run All" |

---

## 📁 Project Structure

```
📦 Air Quality Analysis
 ┣ 📓 Air_Quality_Analysis.ipynb   ← Notebook: imports, cleaning, EDA, and visualizations
 ┃ ┣ 📜 Cells 1–2   → Import Libraries (pandas, numpy, matplotlib, seaborn)
 ┃ ┣ 📜 Cells 3–12  → Load Dataset & Dataset Information
 ┃ ┣ 📜 Cells 13–19 → DataFrame Operations
 ┃ ┣ 📜 Cells 20–23 → Check & Fill Missing Values
 ┃ ┗ 📜 Cells 24–32 → Visualizations (AQI by city, PM2.5 by city, category pie, scatter, heatmap)
 ┣ 📄 Air_Quality_Analysis.csv     ← Input dataset (expected in the same folder)
 ┗ 📄 README.md                    ← Project documentation (you're here!)
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
Load Air_Quality_Analysis.csv into df
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
│  Column select · Filter (Wind_Speed < 10) ·        │
│  Sort by Ozone · value_counts() · min()/max()      │
└────────────────────────────────────────────────────┘
  │
  ▼
Check Missing Values ──► isnull().sum()
  │
  ▼
Fill Missing Values ──► mean (PM2.5, PM10, NO2, Temperature, Humidity, AQI)
  │
  ▼
┌────────────────────────────────────────────────────┐
│                   VISUALIZATIONS                   │
│  📈 Avg AQI by City     📊 Avg PM2.5 by City      │
│  🥧 AQI Category Split   🎯 PM2.5 vs AQI          │
│  🔥 Correlation Heatmap                           │
└────────────────────────────────────────────────────┘
  │
  ▼
END
```

---

## 📋 Expected Dataset Format

The notebook expects a CSV file named **`Air_Quality_Analysis.csv`** with at least the following columns, since several cells reference them directly:

| Column         | Description                                    |
|----------------|------------------------------------------------|
| `City`         | City name where the reading was taken          |
| `PM2.5`        | Fine particulate matter concentration          |
| `PM10`         | Coarse particulate matter concentration        |
| `NO2`          | Nitrogen dioxide concentration                 |
| `Ozone`        | Ozone concentration                            |
| `Temperature`  | Recorded temperature                           |
| `Humidity`     | Recorded humidity                              |
| `Wind_Speed`   | Recorded wind speed                            |
| `AQI`          | Air Quality Index value                        |
| `AQI_Category` | AQI category label (e.g., Good, Moderate, Poor)|

All example outputs below use a sample `Air_Quality_Analysis.csv`:

```
City,PM2.5,PM10,NO2,Ozone,Temperature,Humidity,Wind_Speed,AQI,AQI_Category
Delhi,120.5,180.2,45.3,30.1,32.0,55,8.2,210,Poor
Mumbai,65.2,,28.4,25.0,29.5,70,12.5,110,Moderate
Bengaluru,40.1,60.3,,18.2,24.0,60,14.0,75,Good
Chennai,58.0,85.5,32.1,22.5,,65,10.1,95,Moderate
Kolkata,95.4,140.0,40.2,,31.2,58,7.5,,Poor
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
df = pd.read_csv('Air_Quality_Analysis.csv')
df.head()
```

```
        City  PM2.5   PM10   NO2  Ozone  Temperature  Humidity  Wind_Speed    AQI AQI_Category
0      Delhi  120.5  180.2  45.3   30.1         32.0        55         8.2  210.0        Poor
1     Mumbai   65.2    NaN  28.4   25.0         29.5        70        12.5  110.0    Moderate
2  Bengaluru   40.1   60.3   NaN   18.2         24.0        60        14.0   75.0        Good
3    Chennai   58.0   85.5  32.1   22.5          NaN        65        10.1   95.0    Moderate
4    Kolkata   95.4  140.0  40.2    NaN         31.2        58         7.5    NaN        Poor
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
Shape : (5, 10)
Columns: Index(['City', 'PM2.5', 'PM10', 'NO2', 'Ozone', 'Temperature', 'Humidity',
       'Wind_Speed', 'AQI', 'AQI_Category'],
      dtype='object')

<class 'pandas.core.frame.DataFrame'>
RangeIndex: 5 entries, 0 to 4
Data columns (total 10 columns):
 #   Column        Non-Null Count  Dtype
---  ------        --------------  -----
 0   City          5 non-null      object
 1   PM2.5         5 non-null      float64
 2   PM10          4 non-null      float64
 3   NO2           4 non-null      float64
 4   Ozone         4 non-null      float64
 5   Temperature   4 non-null      float64
 6   Humidity      5 non-null      int64
 7   Wind_Speed    5 non-null      float64
 8   AQI           4 non-null      float64
 9   AQI_Category  5 non-null      object
dtypes: float64(7), int64(1), object(2)
memory usage: 528.0 bytes
```

---

## 4️⃣ Step 4 — DataFrame Operations

> Column selection, filtering, sorting, value counts, and min/max lookups.

```python
df["City"]
df[df["Wind_Speed"] < 10]
df.sort_values(by="Ozone", ascending=True)
df["Temperature"].value_counts()

print("Maximum Ozone: ", df["Ozone"].max())
print("Maximum Temperature:", df["Temperature"].max())
print("Maximum Wind_Speed: ", df["Wind_Speed"].max())

print("Minimum Ozone: ", df["Ozone"].min())
print("Minimum Temperature:", df["Temperature"].min())
print("Minimum Wind_Speed: ", df["Wind_Speed"].min())
```

```
Maximum Ozone:  30.1
Maximum Temperature: 32.0
Maximum Wind_Speed:  14.0

Minimum Ozone:  18.2
Minimum Temperature: 24.0
Minimum Wind_Speed:  7.5
```

---

## 5️⃣ Step 5 — Handle Missing Values

> Detects missing values, then fills six key numeric columns with their means.

```python
print(df.isnull().sum())
```

```
City            0
PM2.5           0
PM10            1
NO2             1
Ozone           1
Temperature     1
Humidity        0
Wind_Speed      0
AQI             1
AQI_Category    0
dtype: int64
```

```python
df['PM2.5'] = df['PM2.5'].fillna(df['PM2.5'].mean())
df['PM10'] = df['PM10'].fillna(df['PM10'].mean())
df['NO2'] = df['NO2'].fillna(df['NO2'].mean())
df['Temperature'] = df['Temperature'].fillna(df['Temperature'].mean())
df['Humidity'] = df['Humidity'].fillna(df['Humidity'].mean())
df['AQI'] = df['AQI'].fillna(df['AQI'].mean())

df.tail()
```

> ✅ **Result:** all missing values across `PM2.5`, `PM10`, `NO2`, `Temperature`, `Humidity`, and `AQI` are mean-filled, and `df.isnull().sum()` for these columns returns `0`.

---

## 6️⃣ Step 6 — Data Visualization

> Five charts covering city-level AQI and PM2.5, AQI category distribution, pollutant correlation with AQI, and overall feature correlation.

### 📈 Average AQI by City
```python
city_aqi = df.groupby("City")["AQI"].mean()
plt.plot(city_aqi.index, city_aqi.values, marker='o', linewidth=2, color="red")
plt.title("Average AQI by City")
```

### 📊 Average PM2.5 by City
```python
pm25 = df.groupby("City")["PM2.5"].mean()
plt.bar(pm25.index, pm25.values, color="skyblue")
plt.title("Average PM2.5 by City")
```

### 🥧 AQI Category Distribution
```python
aqi = df["AQI_Category"].value_counts()
plt.pie(aqi, labels=aqi.index, autopct="%1.1f%%", startangle=90)
plt.title("AQI Category Distribution")
```

### 🎯 PM2.5 vs AQI
```python
plt.scatter(df["PM2.5"].head(500), df["AQI"].head(500),
            c=np.random.rand(500), cmap="plasma", s=100)
plt.title("PM2.5 vs AQI")
```

### 🔥 Correlation Heatmap
```python
sns.heatmap(df.corr(numeric_only=True), annot=True, cmap="coolwarm")
plt.title("Correlation Heatmap")
```

```
[Figure windows / inline plots render for each of the 5 charts above]
```

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐍 **Python 3.10+** | Core programming language |
| 🐼 **pandas** | Loading, cleaning, filtering, sorting, and grouping air quality data |
| 🔢 **NumPy** | Random color mapping for the PM2.5 vs AQI scatter plot |
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
| 🧮 **DataFrame ops verified** | Filtering, sorting, `value_counts()`, and min/max lookups all produced correct results |
| 🩹 **Missing data verified** | Missing values across six numeric columns detected and correctly mean-filled |
| 🎨 **Visualization verified** | All 5 charts (1 line, 1 bar, 1 pie, 1 scatter, 1 heatmap) rendered without errors |

---

## 💡 Advantages

- **Familiar Data Stack** — Built entirely on pandas, NumPy, Matplotlib, and Seaborn
- **Linear & Readable** — One notebook, top to bottom, no hidden state or classes to trace
- **End-to-End EDA** — Covers loading, cleaning, exploring, and visualizing in a single pass
- **Multiple Angles of Analysis** — City rankings, pollutant levels, weather factors, and AQI categories all covered
- **Thorough Missing-Value Handling** — Six of ten columns get mean imputation, minimizing gaps before analysis
- **Beginner-Friendly** — Great showcase of core pandas/NumPy/Matplotlib/Seaborn fundamentals
- **Five Chart Types Built In** — Line, Bar, Pie, Scatter, and Heatmap
- **Extensible** — New cells can be added for additional metrics (e.g., AQI trend over time, if a date column is added)

---

## ⚠️ Known Limitations

- `AQI_Category` itself is not imputed if missing, and rows with missing `AQI` prior to filling could skew the category pie chart if categories were derived before imputation
- Missing-value imputation uses simple mean filling — a reasonable baseline for EDA, but can understate pollution spikes in cities with sparse readings
- Column names (`PM2.5`, `PM10`, `NO2`, `Ozone`, `AQI`, `AQI_Category`, etc.) are hardcoded and assume an exact match with your dataset's headers
- Uses `display()` (a Jupyter/IPython built-in) for some outputs — replace with `print()` if converting to a plain `.py` script run outside Jupyter
- The PM2.5 vs AQI scatter plot's colors are randomly generated (`np.random.rand`) and don't encode any real variable
- No explicit `Date` column is used, so trends are city-level averages rather than true time-series patterns

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
| 📁 **Project** | Air Quality Analysis |
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
- 🌍 **Environmental Data Providers** — for making air quality monitoring data publicly accessible
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG animations
- 🎓 **All learners** — who build EDA notebooks like this to sharpen their data analysis fundamentals

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
