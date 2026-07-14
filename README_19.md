<div align="center">

# 📊 Pandas Analyzer & Data Visualization

### 🐼 An Interactive CLI Tool for Sales Data Exploration, Cleaning & Visualization

![Python](https://img.shields.io/badge/Python-3.10%2B-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-150458?style=for-the-badge&logo=pandas&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-Array%20Ops-013243?style=for-the-badge&logo=numpy&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-Plotting-11557C?style=for-the-badge)
![Seaborn](https://img.shields.io/badge/Seaborn-Visualization-4C72B0?style=for-the-badge)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?style=for-the-badge&logo=jupyter&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

**A menu-driven Python program built with `pandas`, `numpy`, `matplotlib`, and `seaborn` that lets you load, explore, clean, analyze, and visualize sales data — all from a friendly command-line interface.**

</div>

---

## 🌟 Overview

`SalesDataAnalyzer` is a Python class that wraps common **Pandas** and **Seaborn/Matplotlib** workflows into a simple, interactive, menu-based console application. Instead of writing new code every time you want to explore a dataset, just run the notebook and pick a number from the menu! 🎯

It's perfect for:
- 🧑‍🎓 Students learning Pandas & data visualization
- 📈 Quick exploratory data analysis (EDA) on CSV sales datasets
- 🧹 Practicing data cleaning workflows
- 🎨 Generating quick charts without writing plotting code every time

---

## ✨ Features

| 🔧 Module | 💡 What it does |
|---|---|
| 📂 **Load Dataset** | Load any CSV file into a Pandas DataFrame with error handling |
| 🔍 **Explore Data** | Peek at rows, columns, data types & dataset info |
| 🧮 **DataFrame Operations** | Convert columns to NumPy arrays, filter, sort & pivot data |
| 🧹 **Handle Missing Data** | Detect, fill, drop, or replace missing values |
| 📊 **Descriptive Statistics** | Instant summary stats, total sales & average profit |
| 🎨 **Data Visualization** | Bar, line, scatter, pie, histogram & heatmap plots |
| 💾 **Save Visualization** | Export your last generated chart as an image file |

---

## 🗂️ Project Structure

```
📦 Pandas-Analyzer-Data-Visualization
 ┣ 📓 Pandas_Analyzer_&_Data_Visualization.ipynb   # Main notebook (all code)
 ┣ 📄 sales_data_Q1.csv                            # Example dataset (your own CSV)
 ┗ 📘 README.md                                    # You are here!
```

---

## ⚙️ Requirements

Install the required libraries before running the notebook:

```bash
pip install pandas numpy matplotlib seaborn jupyter
```

| Library | Purpose |
|---|---|
| 🐼 `pandas` | Data loading & manipulation |
| 🔢 `numpy` | Numeric array operations |
| 📉 `matplotlib` | Core plotting engine |
| 🎨 `seaborn` | Statistical visualizations |

---

## 🚀 How to Run

1. Clone or download this repository
2. Open the notebook in Jupyter:
   ```bash
   jupyter notebook "Pandas_Analyzer_&_Data_Visualization.ipynb"
   ```
3. Run all cells (▶️ **Run All**)
4. Follow the on-screen menu prompts in the console/output cell

---

## 🖥️ Main Menu

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
```

---

## 📁 1️⃣ Load Dataset

Prompts you to enter the path of a CSV file and loads it into memory.

```
--- Load Dataset ---

Enter the path of the dataset (CSV file):
```

---

## 🔍 2️⃣ Explore Data

```
--- Explore Data ---

1. Display the first 5 rows
2. Display the last 5 rows
3. Display column names
4. Display data types
5. Display basic info
6. Exit
```

---

## 🧮 3️⃣ DataFrame Operations

```
--- DataFrame Operations ---

1. Convert a column to Numpy Array & Slice
2. Filter data by Region
3. Sort data by Sales
4. Create a Pivot Table
5. Exit
```

---

## 🧹 4️⃣ Handle Missing Data

```
--- Handle Missing Data ---

1. Display rows with missing values
2. Fill missing values with mean
3. Drop rows with missing values
4. Replace missing values with a specific value
5. Exit
```

---

## 📊 5️⃣ Generate Descriptive Statistics

Instantly displays:
- 📋 `data.describe()` summary table
- 💰 Aggregate Total Sales
- 📈 Average Profit

```
--- Descriptive Statistics ---
```

---

## 🎨 6️⃣ Data Visualization

```
--- Data Visualization ---

1. Bar Plot (Sales by Product)
2. Line Plot
3. Scatter Plot
4. Pie Chart (Sales by Region)
5. Histogram
6. Seaborn Heatmap (Correlation)
7. Exit
```

| Chart | Style Highlights |
|---|---|
| 🟪 Bar Plot | Purple bars, black edges, total sales by product |
| 🔴 Line Plot | Red line with star markers — sales trend over time |
| 🟧 Scatter Plot | Orange points, color-coded by Region |
| 🥧 Pie Chart | Sales distribution by Region with % labels |
| 📊 Histogram | Distribution of any numeric column with KDE curve |
| 🌡️ Heatmap | Correlation matrix using the `coolwarm` color map |

---

## 💾 7️⃣ Save Visualization

Saves the most recently generated chart to disk as an image (`.png`, `.jpg`, etc.), tightly cropped for a clean look.

```
--- Save Visualization ---

Enter file name to save the plot (e.g., scatter_plot.png):
```

---

## 🚪 8️⃣ Exit

Gracefully closes the program:

```
Exiting the program. Goodbye !!!
Program Closed...
```

---

## 📌 Example Dataset Columns

| Column | Description |
|---|---|
| 🆔 `SalesID` | Unique order identifier |
| 📅 `OrderDate` | Date the order was placed |
| 🗓️ `Month` | Month of the order |
| 📦 `Product` | Product name (e.g., Laptop, Mouse, Printer) |
| 🏷️ `Category` | Product category (e.g., Electronics, Accessories) |
| 🌍 `Region` | Sales region (North, South, East, West) |
| 🏙️ `City` | City of sale |
| 🔢 `Quantity` | Units sold |
| 💸 `Discount(%)` | Discount applied |
| 💰 `Sales` | Total sales value |
| 📈 `Profit` | Profit earned |
| 💳 `PaymentMode` | Payment method used |
| 📦 `OrderStatus` | Order status (Pending, Shipped, Delivered, etc.) |

---

## 🛠️ Built With

- 🐍 **Python 3**
- 🐼 **Pandas** — data wrangling
- 🔢 **NumPy** — numeric operations
- 📉 **Matplotlib** — base plotting
- 🎨 **Seaborn** — statistical charts
- 📓 **Jupyter Notebook** — interactive environment

---

## 🤝 Contributing

Contributions, ideas, and improvements are always welcome! Feel free to fork this project, open an issue, or submit a pull request. ⭐

---

## 📄 License

This project is open-source and available for learning and personal use.

<div align="center">

### 💜 Made with Python, Pandas & a lot of curiosity 💜

</div>
