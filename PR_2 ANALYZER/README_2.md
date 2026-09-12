<div align="center">

# 📊 ANALYZER — SALES ANALYTICS WORKBOOK

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=38BDF8&center=true&vCenter=true&width=560&lines=Load+%7C+Analyze+%7C+Visualize+%7C+Decide;250+Sales+Records%2C+One+Workbook;Built+in+Microsoft+Excel+%F0%9F%93%88" alt="Typing SVG" />

<br/>

![Excel](https://img.shields.io/badge/Microsoft_Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![Records](https://img.shields.io/badge/Records-250-blue?style=for-the-badge)
![Sheets](https://img.shields.io/badge/Sheets-8-orange?style=for-the-badge)
![PivotTable](https://img.shields.io/badge/PivotTable-Enabled-purple?style=for-the-badge)
![Regression](https://img.shields.io/badge/Regression-Analysis-red?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)

<br/>

> 🚀 A **single Excel workbook** that turns 250 raw sales transactions into a full analytics suite — lookups, descriptive statistics, regression, monthly growth tracking, top-customer ranking, a pivot table, and a 4-panel chart dashboard — all in one file.

</div>

---

## 📑 Table of Contents

1. [Overview](#-overview)
2. [Problem Statement](#-problem-statement)
3. [Features](#-features)
4. [Key Features](#-key-features)
5. [Workbook Structure](#-workbook-structure)
6. [Analysis Workflow](#-analysis-workflow)
7. [Expected Dataset Format](#-expected-dataset-format)
8. [Sheet 1 — Sales_Data](#1️⃣-sheet-1--sales_data)
9. [Sheet 2 — Analysis](#2️⃣-sheet-2--analysis)
10. [Sheet 3 — Descriptive_Stats](#3️⃣-sheet-3--descriptive_stats)
11. [Sheet 4 — Regression](#4️⃣-sheet-4--regression)
12. [Sheet 5 — Monthly_Sales](#5️⃣-sheet-5--monthly_sales)
13. [Sheet 6 — Top Customer](#6️⃣-sheet-6--top-customer)
14. [Sheet 7 — Pivot Table](#7️⃣-sheet-7--pivot-table)
15. [Sheet 8 — Charts](#8️⃣-sheet-8--charts)
16. [Tech Stack](#-tech-stack)
17. [Results & Insights](#-results--insights)
18. [Advantages](#-advantages)
19. [Known Limitations](#-known-limitations)
20. [License](#-license)
21. [Author](#-author)
22. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Analyzer** is a single `.xlsx` workbook built around one raw table — **250 sales transactions** — that feeds into **seven downstream analysis sheets**. It walks a sales dataset through the full analytics pipeline: raw data → row-level lookups → descriptive statistics → regression → time-series growth → customer ranking → pivot summarization → visual dashboard.

Instead of separate files for each analysis, everything lives in one workbook with live formulas, so updating `Sales_Data` automatically ripples through every downstream sheet, chart, and pivot table.

Built entirely with native Excel formulas, PivotTables, the Data Analysis ToolPak (regression), and native charts — no macros, no VBA.

---

## ❗ Problem Statement

A flat table of 250 sales transactions — customers, regions, products, sales, cost, discount, profit, and dates — is hard to act on directly. Left as raw rows, it's difficult to answer business questions like:

- What's the overall shape of the sales distribution — average, spread, and outliers?
- Does sales volume actually predict profit, and how strongly?
- Is monthly sales trending up or down, and by how much month-over-month?
- Who are the highest-value customers, and how many customers are above average?
- How do sales break down by region and product simultaneously?
- What does profit look like against discount, and which product dominates sales?

**Analyzer** solves this by combining lookups, statistics, regression, pivoting, and charting into **one connected workbook**, turning 250 rows into ranked tables, a regression model, a growth tracker, and a full chart dashboard.

---

## ✨ Features

| Feature | Sheet | Description |
|---|---|---|
| 📂 **Raw Transaction Log** | Sales_Data | 250 rows of SaleID, Customer, Region, Product, Sales, Cost, Discount, Profit, Date, Quantity |
| 🔍 **Row Lookup** | Analysis | `XLOOKUP` + `SUMIF` to pull a customer's region and total sales by ID |
| 📈 **Descriptive Statistics** | Descriptive_Stats | Full stat summary — mean, median, mode, std dev, variance, kurtosis, skewness, range |
| 📉 **Regression Model** | Regression | Sales vs. Profit regression with R², ANOVA, coefficients, and confidence intervals |
| 📅 **Monthly Growth Tracker** | Monthly_Sales | Month-by-month sales totals with growth % and up/down indicators |
| 🏆 **Top Customer Ranking** | Top Customer | Top 10 customers by total purchase, plus above-average customer count |
| 🧮 **Pivot Table** | Pivot Table | Region × Product cross-tab of total sales |
| 🎨 **Chart Dashboard** | Charts | 4-panel dashboard — clustered bar, line, pie, and 3D bar charts |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🔗 **Fully Linked Workbook** | Every analysis sheet references `Sales_Data` live — no copy-pasted values |
| ⚡ **Modern Lookup Functions** | Uses `XLOOKUP` throughout instead of legacy `VLOOKUP` |
| 📊 **Built-In Statistics Suite** | Excel's Analysis ToolPak powers both Descriptive Statistics and Regression |
| 📅 **Rolling Date Math** | `EDATE` chains monthly period boundaries automatically |
| 🎯 **Conditional Aggregation** | `SUMIF` / `SUMIFS` drive customer totals, category totals, and monthly totals |
| 🥇 **Dynamic Ranking** | Top 10 customers with color-scaled purchase amounts and an above-average count |
| 🧩 **Interactive Pivot & Charts** | Region/Product filters on both the Pivot Table and Chart Dashboard |
| ♻️ **No Macros/VBA** | 100% native Excel features — formulas, PivotTables, ToolPak, and Charts |

---

## 📁 Workbook Structure

```
📦 ANALYZER.xlsx
 ┣ 📄 Sales_Data         ← 250 raw transactions (SaleID → Quantity)
 ┣ 📄 Analysis           ← Customer ID → Region + Total Sales (XLOOKUP, SUMIF)
 ┣ 📄 Descriptive_Stats  ← Mean, Median, Mode, StdDev, Variance, Kurtosis, Skewness...
 ┣ 📄 Regression         ← Sales vs Profit regression + Category-wise Sales/Profit table
 ┣ 📄 Monthly_Sales      ← Jan–Sep 2026 totals with month-over-month growth %
 ┣ 📄 Top Customer       ← Top 10 customers by purchase + above-average count
 ┣ 📄 Pivot Table        ← Region × Product pivot of Sum of Sales
 ┣ 📄 Charts             ← 4-panel visual dashboard
 ┗ 📄 README.md          ← Project documentation (you're here!)
```

> Single-workbook project — open in Excel; every sheet, pivot, and chart recalculates automatically.

---

## 🔁 Analysis Workflow

```
START
  │
  ▼
Sales_Data (250 transactions: Customer, Region, Product, Sales, Cost, Discount, Profit, Date)
  │
  ├──► Analysis          → XLOOKUP customer's Region + SUMIF total Sales by Customer ID
  │
  ├──► Descriptive_Stats → Mean · Median · Mode · Std Dev · Variance · Kurtosis · Skewness · Range
  │
  ├──► Regression        → Sales (X) vs Profit (Y): R², ANOVA, Coefficients, Confidence Intervals
  │                         + Category-wise Sales & Profit totals (SUMIF)
  │
  ├──► Monthly_Sales     → SUMIFS by month window (EDATE) → month-over-month growth %
  │
  ├──► Top Customer      → SUMIF total purchase per customer → sort → Top 10 + above-average count
  │
  ├──► Pivot Table       → Region (rows) × Product (columns) → Sum of Sales / Sales2
  │
  └──► Charts            → Clustered Bar · Line · Pie · 3D Bar — all fed by the Pivot Table
  │
  ▼
END
```

---

## 📋 Expected Dataset Format

The `Sales_Data` sheet holds the source table, with the following columns feeding every downstream sheet:

| Column         | Description                              |
|----------------|--------------------------------------------|
| `SaleID`       | Unique transaction ID (e.g. S001)         |
| `CustomerID`   | Unique customer ID (e.g. C111)            |
| `CustomerName` | Customer's first name                     |
| `Region`       | East / West / North / South               |
| `Product`      | Headphones, Keyboard, Laptop, Mobile, Monitor, Mouse, Tablet |
| `Category`     | Product category (e.g. Electronics, Accessories) |
| `Sales`        | Sale amount                               |
| `Cost`         | Cost of goods                             |
| `Discount`     | Discount percentage applied               |
| `Profit`       | Sales − Cost, net of discount             |
| `Date`         | Transaction date                          |
| `Quantity`     | Units sold                                |

A sample of the actual data:

```
SaleID,CustomerID,CustomerName,Region,Product,Category,Sales,Cost,Discount,Profit,Date,Quantity
S001,C111,Arjun,West,Laptop,Electronics,97496,55939,7,34732.28,2026-07-09,3
S002,C102,Priya,West,Keyboard,Accessories,55602,25816,2,28673.96,2026-03-02,4
S003,C109,Dev,West,Keyboard,Accessories,26362,20356,22,206.36,2026-04-19,9
S004,C104,Neha,East,Keyboard,Accessories,36763,29934,0,6829.00,2026-06-29,3
S005,C107,Karan,North,Tablet,Electronics,20679,11309,24,4407.04,2026-01-28,6
```

---

## 1️⃣ Sheet 1 — Sales_Data

> The single source of truth: **250 rows** across 12 columns, referenced by every other sheet in the workbook.

```
'SaleID', 'CustomerID', 'CustomerName', 'Region', 'Product', 'Category',
'Sales', 'Cost', 'Discount', 'Profit', 'Date', 'Quantity'
```

---

## 2️⃣ Sheet 2 — Analysis

> Given a Customer ID, pulls that customer's region and total lifetime sales.

```excel
=XLOOKUP(B5, Sales_Data!B:B, Sales_Data!C:C)   ' Customer Name for the given ID
=SUMIF(Sales_Data!B:B, B5, Sales_Data!G:G)      ' Total Sales for that customer
```

---

## 3️⃣ Sheet 3 — Descriptive_Stats

> Excel's Analysis ToolPak "Descriptive Statistics" output for the `Sales` column across all 250 records.

<div align="center">
<img src="screenshots/descriptive_status.jpg" alt="Descriptive Statistics Output" width="500"/>
</div>

| Statistic | Value |
|---|---|
| Mean | 48,470.24 |
| Standard Error | 1,839.68 |
| Median | 48,777 |
| Mode | #N/A (no repeated value) |
| Standard Deviation | 29,087.83 |
| Sample Variance | 846,101,743.7 |
| Kurtosis | -1.26 |
| Skewness | 0.0366 |
| Range | 98,550 |
| Minimum | 636 |
| Maximum | 99,186 |
| Sum | 12,117,561 |
| Count | 250 |

> ✅ **Reading it:** near-zero skewness means sales are roughly symmetric around the mean; negative kurtosis means the distribution is flatter than a normal curve, with fewer extreme outliers than expected.

---

## 4️⃣ Sheet 4 — Regression

> A linear regression of **Profit (Y) on Sales (X)** using the Analysis ToolPak, plus a category-wise Sales/Profit rollup.

<div align="center">
<img src="screenshots/summary.jpg" alt="Regression Summary Output and Top Customer by Purchase" width="600"/>
</div>

```excel
=SUMIF(Sales_Data!$C$2:$C$251, A29, Sales_Data!$G$2:$G$251)   ' Category-wise total Sales
=SUMIF(Sales_Data!$C$2:$C$251, Regression!A29, Sales_Data!$J$2:$J$251)  ' Category-wise total Profit
```

| Regression Statistic | Value |
|---|---|
| Multiple R | 0.547 |
| R Square | 0.299 |
| Adjusted R Square | 0.297 |
| Standard Error | 7,966.41 |
| Observations | 250 |

| ANOVA | df | SS | MS | F | Significance F |
|---|---|---|---|---|---|
| Regression | 1 | 6,721,680,956 | 6,721,680,956 | 105.91 | 6.48E-21 |
| Residual | 248 | 15,739,295,472 | 63,464,901 | — | — |
| Total | 249 | 22,460,976,428 | — | — | — |

> ✅ **Reading it:** R² ≈ 0.30 means Sales explains about **30%** of the variation in Profit — a real but moderate relationship, with the highly significant F-value (p ≈ 6.5E-21) confirming it's not due to chance.

---

## 5️⃣ Sheet 5 — Monthly_Sales

> Rolling month-over-month totals and growth percentage using `SUMIFS` + `EDATE`.

<div align="center">
<img src="screenshots/monthly_sales.jpg" alt="Monthly Sales Growth" width="500"/>
</div>

```excel
=DATE(2026,1,1)                                                              ' First period start
=SUMIFS(Sales_Data!$G$2:$G$251, Sales_Data!$K$2:$K$251, ">="&A4,
        Sales_Data!$K$2:$K$251, "<"&EDATE(A4,1))                             ' Month total
=(B5-B4)/B4                                                                   ' Growth % vs prior month
=EDATE(A4,1)                                                                  ' Next month start
```

| Month | Total Sales | Growth |
|---|---|---|
| Jan 2026 | $13,26,612 | 🔻 -16.9% |
| Feb 2026 | $11,03,068 | 🔼 +18.9% |
| Mar 2026 | $13,11,640 | 🔼 +21.7% |
| Apr 2026 | $15,96,405 | 🔻 -30.8% |
| May 2026 | $11,04,983 | 🔼 +19.4% |
| Jun 2026 | $13,18,813 | 🔼 +21.2% |
| Jul 2026 | $15,98,656 | 🔼 +36.9% |
| Aug 2026 | $21,88,981 | 🔻 -74.0% |
| Sep 2026 | $5,68,403 | (last period) |

> ✅ **Reading it:** August was the peak month at ~$21.9L before a sharp drop in September — worth investigating whether that's a partial month or a genuine slowdown.

---

## 6️⃣ Sheet 6 — Top Customer

> Ranks all customers by total purchase and counts how many sit above the overall average.

<div align="center">
<img src="screenshots/top_customer.jpg" alt="High-Value Customers Ranking" width="500"/>
</div>

```excel
=SUMIF(Sales_Data!$C$2:$C$251, B5, Sales_Data!$G$2:$G$251)             ' Total purchase per customer
=XLOOKUP(B5, Sales_Data!$C$2:$C$251, Sales_Data!$D$2:$D$251)           ' Customer's Region
```

| Rank | Customer | Total Purchase | Region |
|---|---|---|---|
| 1 | Jay | $13,93,310 | North |
| 2 | Arjun | $12,02,281 | West |
| 3 | Vivek | $10,15,197 | West |
| 4 | Riya | $10,13,143 | East |
| 5 | Rohan | $9,80,219 | West |
| 6 | Kavya | $8,85,563 | North |
| 7 | Rahul | $8,75,459 | East |
| 8 | Dev | $8,61,185 | West |
| 9 | Meera | $7,90,274 | North |
| 10 | Priya | $7,35,182 | West |

**Average Purchase:** $10,01,847.89 · **Customers Above Average:** 4

---

## 7️⃣ Sheet 7 — Pivot Table

> A Region × Product cross-tab summarizing total sales, built directly from `Sales_Data`.

<div align="center">
<img src="screenshots/pivot_table.jpg" alt="Region by Product Pivot Table" width="700"/>
</div>

| Region | Headphones | Keyboard | Laptop | Mobile | Monitor | Mouse | Tablet | **Grand Total** |
|---|---|---|---|---|---|---|---|---|
| East | $4,11,805 | $3,64,400 | $4,77,709 | $2,06,776 | $5,45,474 | $4,18,630 | $7,65,125 | **$31,09,899** |
| North | $7,72,409 | $6,21,274 | $4,62,228 | $4,62,328 | $5,25,272 | $17,15,262 | $2,59,895 | **$33,73,055** |
| South | $6,33,986 | $4,07,672 | $3,11,823 | $5,31,009 | $6,21,677 | $4,79,061 | $2,42,195 | **$32,27,623** |
| West | $4,28,373 | $5,98,822 | $2,84,417 | $2,91,187 | $3,43,668 | $25,05,202 | $2,35,465 | **$26,06,384** |
| **Grand Total** | **$22,46,573** | **$19,92,268** | — | — | — | **$18,30,648** | — | **$1,21,17,561** |

---

## 8️⃣ Sheet 8 — Charts

> A 4-panel dashboard built directly from the Pivot Table, filterable by Region and Product.

<div align="center">
<img src="screenshots/charts.jpg" alt="Chart Dashboard: Clustered Bar, Total Profit vs Discount, Headphones Pie, 3D Bar" width="750"/>
</div>

| Chart | Type | Shows |
|---|---|---|
| 📊 **Sales by Region & Product** | Clustered Column | Sum of Sales/Sales2 split by Region, sliced by Product |
| 📉 **Total Profit vs Discount** | Line | Profit trending down as discount percentage increases (0%–80%) |
| 🥧 **Headphones — Sum of Sales** | 3D Pie | Regional share of Headphones sales (East 18%, North 35%, South 28%, West 19%) |
| 🧱 **Sales by Region & Product (3D)** | 3D Clustered Column | Same regional/product breakdown in a 3D perspective view |

> ✅ **Reading it:** the Profit-vs-Discount line makes the trade-off explicit — profit drops fairly steadily as discounting increases, dipping sharply past ~60% discount.

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 📊 **Microsoft Excel** | Spreadsheet application hosting the entire workbook |
| 🧮 **Native Excel Formulas** | `XLOOKUP`, `SUMIF`, `SUMIFS`, `EDATE`, `DATE` |
| 📈 **Analysis ToolPak** | Descriptive Statistics and Regression outputs |
| 🧩 **PivotTable & PivotChart** | Region × Product summarization and interactive charts |
| 🎨 **Excel Native Charts** | Clustered Bar, Line, 3D Pie, and 3D Bar visualizations |

---

## 📊 Results & Insights

| Sheet | Key Insight |
|---|---|
| 📈 **Descriptive_Stats** | Average sale ≈ **$48,470**, fairly symmetric distribution (skewness ≈ 0.04), no strong outlier skew |
| 📉 **Regression** | Sales explains **~30%** of Profit variance (R² = 0.299); relationship is statistically significant (p ≈ 6.5E-21) |
| 📅 **Monthly_Sales** | Sales peaked in **August 2026 (~$21.9L)** then fell sharply in September — worth flagging for review |
| 🏆 **Top Customer** | **Jay** is the top customer at $13.93L in total purchases; only **4 customers** sit above the $10.02L average |
| 🧮 **Pivot Table** | **North** region leads overall sales (~$33.7L), driven heavily by Mouse sales |
| 🎨 **Charts** | Profit consistently declines as discount rate rises, most sharply beyond 60% discount |

---

## 💡 Advantages

- **Fully Connected** — One raw table drives seven live analysis sheets; update `Sales_Data` and everything recalculates
- **End-to-End Analytics** — Covers lookup, descriptive stats, regression, time-series, ranking, pivoting, and visualization in one file
- **Modern Formulas** — Uses `XLOOKUP` and `EDATE` instead of older, more brittle equivalents
- **Statistically Grounded** — Regression and descriptive statistics come from Excel's built-in Analysis ToolPak, not manual calculation
- **Business-Ready Visuals** — The Chart Dashboard and Pivot Table are presentation-ready with working filters
- **No Dependencies** — No macros, VBA, or external data connections required
- **Great Learning Reference** — Demonstrates how a single dataset can power a complete analytics workflow in pure Excel

---

## ⚠️ Known Limitations

- `XLOOKUP` is stored internally as `_xlfn.XLOOKUP` — it requires **Excel 2019/365** or a compatible modern spreadsheet app; older Excel versions will show `#NAME?` errors
- The Descriptive Statistics and Regression outputs are **static snapshots** generated by the Analysis ToolPak — they will not auto-update if `Sales_Data` changes; you'll need to re-run the ToolPak
- `Mode` returns `#N/A` because no sales value repeats exactly — expected behavior for continuous data, not an error
- The Pivot Table and Charts must be manually refreshed (Data → Refresh All) after editing `Sales_Data`
- Regional/Product totals in the Pivot Table screenshot are partially cut off (`########`) due to column width — widen columns in Excel to see full figures
- September 2026's total appears low likely because it's a partial month in the source data, not necessarily a real sales decline

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
| 📊 **Tool** | Microsoft Excel |
| 📁 **Project** | Analyzer — Sales Analytics Workbook |
| 💡 **Purpose** | End-to-end Excel analytics: lookups, statistics, regression & dashboards |

<br/>

Made with 💙 using **Microsoft Excel**

![Excel Love](https://img.shields.io/badge/Made%20with-%F0%9F%92%99%20Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)

</div>

---

## 🙏 Acknowledgements

- 📊 **Microsoft Excel Team** — for the formula engine, PivotTables, and Analysis ToolPak powering this workbook
- 📖 **Excel Function & ToolPak Documentation** — for reference on `XLOOKUP`, regression, and descriptive statistics
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG animations
- 🎓 **All learners** — who build analytics workbooks like this to sharpen their data analysis fundamentals

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
