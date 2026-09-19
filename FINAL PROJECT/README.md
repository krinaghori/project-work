<div align="center">

# 🛍️ FINAL PROJECT — RETAIL SALES ANALYTICS DASHBOARD

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=38BDF8&center=true&vCenter=true&width=560&lines=Load+%7C+Analyze+%7C+Visualize+%7C+Decide;250+Transactions%2C+One+Dashboard;Built+in+Microsoft+Excel+%F0%9F%93%88" alt="Typing SVG" />

<br/>

![Excel](https://img.shields.io/badge/Microsoft_Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![Records](https://img.shields.io/badge/Transactions-250-blue?style=for-the-badge)
![Sheets](https://img.shields.io/badge/Sheets-6-orange?style=for-the-badge)
![KPI](https://img.shields.io/badge/KPI-Dashboard-purple?style=for-the-badge)
![PivotTable](https://img.shields.io/badge/PivotTable-Enabled-red?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)

<br/>

> 🚀 A **single Excel workbook** that turns 250 raw retail transactions into a full analytics suite — KPI dashboard, high-value customer ranking, product-level profitability analysis, a pivot table, and a 4-panel chart dashboard — all in one connected file.

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
8. [Sheet 1 — Dataset](#1️⃣-sheet-1--dataset)
9. [Sheet 2 — KPI](#2️⃣-sheet-2--kpi)
10. [Sheet 3 — High-Value Customers](#3️⃣-sheet-3--high-value-customers)
11. [Sheet 4 — Analysis](#4️⃣-sheet-4--analysis)
12. [Sheet 5 — Pivot Table](#5️⃣-sheet-5--pivot-table)
13. [Sheet 6 — Charts](#6️⃣-sheet-6--charts)
14. [Tech Stack](#-tech-stack)
15. [Results & Insights](#-results--insights)
16. [Advantages](#-advantages)
17. [Known Limitations](#-known-limitations)
18. [License](#-license)
19. [Author](#-author)
20. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Final Project** is a single `.xlsx` workbook built around one raw table of **250 retail transactions**, feeding into **five downstream analysis sheets**. It walks the data through a complete analytics pipeline: raw transaction log → engineered helper columns → KPI dashboard → customer ranking → product analysis → pivot summarization → visual chart dashboard.

Instead of separate files for each report, everything lives in one connected workbook — update the `Dataset` sheet and the KPI cards, customer rankings, product table, pivot, and charts all recalculate automatically.

Built entirely with native Excel formulas, array formulas, PivotTables, and native charts — no macros, no VBA.

---

## ❗ Problem Statement

A flat table of 250 retail transactions — customers, products, categories, regions, revenue, cost, profit, ratings, and payment methods — is hard to act on directly. Left as raw rows, it's difficult to answer business questions like:

- What are the headline numbers — total revenue, total profit, average margin — at a glance?
- Who are the highest-value customers, and what do they buy most?
- Which products drive the most revenue and profit, and how do they rate with customers?
- How do sales break down by region and product simultaneously?
- Which categories, salespeople, or customer types deserve more attention?

**Final Project** solves this by combining engineered columns, conditional aggregation, ranking, pivoting, and charting into **one connected workbook**, turning 250 transactions into a KPI scorecard, a Top-10 customer leaderboard, a full product profitability table, a pivot table, and a chart dashboard.

---

## ✨ Features

| Feature | Sheet | Description |
|---|---|---|
| 📂 **Raw Transaction Log** | Dataset | 250 rows × 26 columns — transaction, customer, product, financials, plus engineered fields |
| 🧮 **Engineered Columns** | Dataset | `YEAR`, `MONTH`, `PROFIT MARGIN`, `UPPER_CASE` name, and `FIRST NAME` derived via formula |
| 📊 **KPI Scorecard** | KPI | Total Transactions, Revenue, Cost, Profit, Quantity, Average Rating, Profit Margin |
| 🏆 **High-Value Customer Ranking** | High-Value Customers | Top 10 customers by revenue (array formula) + full customer list with profit, quantity, and type |
| 🛒 **Most Purchased Product** | High-Value Customers | Array-formula lookup of the single best-selling product |
| 📦 **Product Profitability Table** | Analysis | Per-product revenue, profit, quantity, purchase frequency, and average rating |
| 🧩 **Pivot Table** | Pivot Table | Region × Product cross-tab of Sum of Revenue and Sum of Quantity |
| 🎨 **Chart Dashboard** | Charts | 4-panel dashboard — combo chart, pie chart, line chart, and 100% stacked area chart |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🔗 **Fully Linked Workbook** | Every analysis sheet references `Dataset` live — no copy-pasted values |
| 🧮 **Engineered Feature Columns** | `PROFIT MARGIN`, `UPPER_CASE`, and `FIRST NAME` are computed directly from raw fields for reuse across sheets |
| ⚡ **Array Formulas** | `TOP 10 by Revenue` and `Most Purchased Product` use array formulas to rank/select without helper columns |
| 🛡️ **Error-Safe Formulas** | Nearly every formula is wrapped in `IFERROR(...)` so blank or missing lookups never break the sheet |
| 🎯 **Layered Conditional Aggregation** | `SUMIF`, `COUNTIF`, and `AVERAGEIF` combine to build the per-product Analysis table |
| 🥇 **Customer Segmentation** | Every customer is tagged as **New**, **Returning**, or **VIP**, visible in the full customer list |
| 🧩 **Interactive Pivot & Charts** | Region/Product filters drive both the Pivot Table and the Chart Dashboard |
| ♻️ **No Macros/VBA** | 100% native Excel features — formulas, array formulas, PivotTables, and Charts |

---

## 📁 Workbook Structure

```
📦 FINAL_PROJECT.xlsx
 ┣ 📄 Dataset                ← 250 raw transactions + 5 engineered columns (26 total)
 ┣ 📄 KPI                    ← 8-metric KPI Summary scorecard (SUM, AVERAGE, IFERROR)
 ┣ 📄 HIGH-VALUE CUSTOMERS   ← Top 10 by revenue + most purchased product + full customer list
 ┣ 📄 ANALYSIS               ← Per-product revenue, profit, quantity, frequency, rating
 ┣ 📄 PIVOT TABLE            ← Region × Product pivot of Revenue & Quantity + embedded chart
 ┣ 📄 CHARTS                 ← 4-panel visual dashboard
 ┗ 📄 README.md              ← Project documentation (you're here!)
```

> Single-workbook project — open in Excel; every KPI, ranking, pivot, and chart recalculates automatically.

---

## 🔁 Analysis Workflow

```
START
  │
  ▼
Dataset (250 transactions: Customer, Product, Category, Region, Revenue, Cost, Profit, Rating...)
  │
  ├──► Engineered Columns → YEAR · MONTH · PROFIT MARGIN · UPPER_CASE · FIRST NAME
  │
  ├──► KPI                → Total Transactions · Revenue · Cost · Profit · Quantity ·
  │                         Average Rating · Average Profit Margin · Profit Margin %
  │
  ├──► High-Value         → Array-rank Top 10 Customers by Revenue (SUMIF + XLOOKUP)
  │    Customers            + Most Purchased Product (array formula)
  │                         + Full customer list: Profit, Quantity, Customer Type
  │
  ├──► Analysis           → Per-product: SUMIF Revenue/Profit, COUNTIF Frequency,
  │                         AVERAGEIF Rating
  │
  ├──► Pivot Table        → Region (rows) × Product (columns) → Sum of Revenue / Quantity
  │
  └──► Charts             → Combo Chart · Pie · Line · 100% Stacked Area — fed by the Pivot Table
  │
  ▼
END
```

---

## 📋 Expected Dataset Format

The `Dataset` sheet holds the source table — 26 columns feeding every downstream sheet:

| Column | Description |
|---|---|
| `TransactionID` | Unique transaction ID (e.g. T0001) |
| `Date`, `Time` | Transaction date and time |
| `CustomerID`, `CustomerName` | Customer identifiers |
| `Gender`, `Age` | Customer demographics |
| `Region`, `City` | Location of sale |
| `Category`, `Product` | Product classification and name |
| `Quantity`, `UnitPrice`, `Discount` | Order line details |
| `Revenue`, `Cost`, `Profit` | Financial outcome |
| `PaymentMethod`, `Salesperson` | Transaction metadata |
| `CustomerType` | New / Returning / VIP |
| `Rating` | Customer satisfaction rating (1–5) |
| `YEAR`, `MONTH` | Extracted from `Date` |
| `PROFIT MARGIN` | `Profit / Revenue`, computed per row |
| `UPPER_CASE`, `FIRST NAME` | Derived from `CustomerName` |

A sample of the actual data:

```
TransactionID,Date,Time,CustomerID,CustomerName,Gender,Age,Region,City,Category,Product,
Quantity,UnitPrice,Discount,Revenue,Cost,Profit,PaymentMethod,Salesperson,CustomerType,
Rating,YEAR,MONTH,PROFIT MARGIN,UPPER_CASE,FIRST NAME
T0001,2025-09-16,12:20,C029,Avni Patel,Male,51,West,Vadodara,Fashion,Sneakers,
2,2805.42,0.05,5330.30,3676.48,1653.82,Cash,Amit,Returning,
4,2025,Sep,0.3103,AVNI PATEL,Avni
```

<div align="center">
<img src="final_project_screenshots/dataset_columns.png" alt="Dataset engineered columns preview" width="450"/>
</div>

---

## 1️⃣ Sheet 1 — Dataset

> The single source of truth: **250 rows** across **26 columns**, including 5 engineered helper columns computed directly from the raw fields.

```excel
=YEAR(B2)                                     ' YEAR
=TEXT(B2,"mmm")                                ' MONTH (3-letter form)
=Q2/O2                                         ' PROFIT MARGIN  (Profit / Revenue)
=UPPER(E2)                                     ' UPPER_CASE  (full name, uppercase)
=LEFT(E2,FIND(" ",E2)-1)                       ' FIRST NAME
```

---

## 2️⃣ Sheet 2 — KPI

> An 8-metric scorecard summarizing the entire dataset in one glance.

<div align="center">
<img src="final_project_screenshots/kpi_summary.png" alt="KPI Summary Metrics" width="420"/>
</div>

```excel
=IFERROR(COUNTA(Dataset!A2:A251),0)             ' Total Transaction
=SUM(Dataset!O2:O251)                            ' Total Revenue
=AVERAGE(Dataset!Q2:Q251)                        ' Average Profit Margin
=IFERROR(SUM(Dataset!P2:P251),0)                 ' Total Cost
=IFERROR(SUM(Dataset!Q2:Q251),0)                 ' Total Profit
=IFERROR(SUM(Dataset!L2:L251),0)                 ' Total Quantity
=IFERROR(AVERAGE(Dataset!U2:U251),0)             ' Average Rating
=IFERROR(SUM(Dataset!Q2:Q251)/SUM(Dataset!O2:O251),0)  ' Profit Margin %
```

| Metric | Value |
|---|---|
| Total Transactions | 250 |
| Total Revenue | ₹69,03,164.13 |
| Average Profit Margin | 7,866.76 *(sheet mislabels a Revenue-scale figure)* |
| Total Cost | ₹49,36,473.14 |
| Total Profit | ₹19,66,690.99 |
| Total Quantity | 747 |
| Average Rating | 4.24 / 5 |
| Profit Margin | 28.49% |

> ✅ **Reading it:** the business converts roughly **28.5%** of every rupee of revenue into profit, with an average customer rating of **4.24/5** — a healthy, well-regarded product mix.

---

## 3️⃣ Sheet 3 — High-Value Customers

> Ranks the Top 10 customers by total revenue, surfaces the single most purchased product, and lists every unique customer with profit, quantity, and segment.

<div align="center">
<img src="final_project_screenshots/high_value_customers.png" alt="High-Value Customer ranking and full customer list" width="480"/>
</div>

```excel
{=INDEX(Dataset!$E$2:$E$251, MATCH(LARGE(SUMIF(Dataset!$E$2:$E$251,Dataset!$E$2:$E$251,Dataset!$Q$2:$Q$251),ROW()-4), SUMIF(Dataset!$E$2:$E$251,Dataset!$E$2:$E$251,Dataset!$Q$2:$Q$251), 0))}
' Array formula: ranks customers by total revenue, row by row

=IFERROR(SUMIF(Dataset!E:E,A20,Dataset!Q:Q),0)         ' Profit per unique customer
=IFERROR(SUMIF(Dataset!E:E,A20,Dataset!L:L),0)          ' Quantity per unique customer
=IFERROR(XLOOKUP(A20,Dataset!E:E,Dataset!T:T),"Not Found") ' Customer Type lookup

{=INDEX(Dataset!$K$2:$K$251, MATCH(MAX(COUNTIF(Dataset!$K$2:$K$251,Dataset!$K$2:$K$251)), COUNTIF(Dataset!$K$2:$K$251,Dataset!$K$2:$K$251), 0))}
' Array formula: finds the single most frequently purchased product
```

| Rank | Customer | Revenue |
|---|---|---|
| 1 | Kavya Patel | ₹7,85,542.24 |
| 2 | Dev Shah | ₹6,25,417.68 |
| 3 | Ishaan Shah | ₹3,04,143.57 |
| 4 | Rohan Shah | ₹2,88,697.45 |
| 5 | Kavya Shah | ₹2,87,541.58 |
| 6 | Riya Shah | ₹2,85,679.52 |
| 7 | Jiya Patel | ₹2,80,732.81 |
| 8 | Avni Shah | ₹2,74,760.96 |
| 9 | Priya Shah | ₹2,68,725.62 |
| 10 | Anaya Shah | ₹2,65,947.38 |

**Most Purchased Product:** 🏆 **Laptop**

> ✅ **Reading it:** **Kavya Patel** is the top customer by a wide margin (~25% ahead of #2), and Laptops are the single most frequently bought product — a strong candidate for loyalty offers or bundling.

---

## 4️⃣ Sheet 4 — Analysis

> A full per-product breakdown: units sold, revenue, profit, purchase frequency, and average customer rating.

<div align="center">
<img src="final_project_screenshots/product_analysis.png" alt="Product Analysis table" width="600"/>
</div>

```excel
=IFERROR(SUMIF(Dataset!K:K,A5,Dataset!L:L),0)        ' Units Sold
=IFERROR(SUMIF(Dataset!K:K,A5,Dataset!O:O),0)        ' Product Revenue
=IFERROR(SUMIF(Dataset!K:K,A5,Dataset!Q:Q),0)        ' Product Profit
=IFERROR(COUNTIF(Dataset!K:K,A5),0)                   ' Purchase Frequency
=IFERROR(AVERAGEIF(Dataset!K:K,A5,Dataset!U:U),0)    ' Average Rating
```

| Product | Units Sold | Revenue | Profit | Frequency | Avg. Rating |
|---|---|---|---|---|---|
| **Laptop** | 79 | ₹40,68,930.51 | ₹11,84,750.72 | 24 | 4.21 |
| **Smartphone** | 53 | ₹15,17,841.32 | ₹4,10,068.03 | 18 | 4.28 |
| Sneakers | 63 | ₹1,69,940.65 | ₹49,993.96 | 19 | 4.00 |
| Smartwatch | 40 | ₹1,80,633.74 | ₹54,067.63 | 17 | 4.29 |
| Headphones | 41 | ₹95,380.34 | ₹27,735.28 | 13 | 4.31 |
| Perfume | 4 | ₹6,428.64 | ₹1,747.55 | 3 | **4.67** |

> ✅ **Reading it:** **Laptops** dominate both revenue (₹40.7L) and profit (₹11.8L) despite lower unit volume than Sneakers — a clear signal that high-ticket electronics are the profitability engine, while low-volume items like Perfume post the highest satisfaction scores.

---

## 5️⃣ Sheet 5 — Pivot Table

> A Region × Product cross-tab of Sum of Revenue and Sum of Quantity, with an embedded chart.

<div align="center">
<img src="final_project_screenshots/pivot_table.png" alt="Region by Product Pivot Table" width="650"/>
</div>

| Region | Top Product (by Revenue) | Region Total Revenue | Region Total Quantity |
|---|---|---|---|
| **North** | Laptop (₹1,19,736.7) | ₹19,06,628.9 | 112 |
| **West** | Laptop (₹10,67,668.85) | ₹17,32,932.6 | 180 |
| **Grand Total** | — | **₹36,39,561.5** | **292** |

> ✅ **Reading it:** North and West together account for the full dataset, with Laptop as the dominant revenue driver in both regions — North edges out West on total revenue despite West moving more units, again pointing to Laptop's high price point.

---

## 6️⃣ Sheet 6 — Charts

> A 4-panel dashboard built from the Pivot Table, filterable by Region and Product.

<div align="center">
<img src="final_project_screenshots/charts_dashboard.png" alt="Chart Dashboard: Combo chart, Pie, Line, and 100% Stacked Area" width="750"/>
</div>

| Chart | Type | Shows |
|---|---|---|
| 📊 **Revenue & Quantity by Product & Region** | Combo (Bar + Line) | Revenue as bars, Quantity as an overlaid line, across North and West |
| 🥧 **Sum of Revenue** | Pie | Regional/product share of total revenue — Mixer Grinder and Laptop stand out |
| 📈 **North / West Trend** | Line | Product-by-product Quantity vs. Revenue trend within each region |
| 🌊 **100% Stacked Area** | Stacked Area | Relative Quantity vs. Revenue proportion per product, normalized to 100% |

> ✅ **Reading it:** the combo chart makes the Laptop and Mixer Grinder revenue spikes immediately visible against a sea of smaller-ticket products, confirming the same pattern seen in the Analysis and Pivot Table sheets.

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 📊 **Microsoft Excel** | Spreadsheet application hosting the entire workbook |
| 🧮 **Native Excel Formulas** | `SUM`, `AVERAGE`, `SUMIF`, `COUNTIF`, `AVERAGEIF`, `XLOOKUP`, `IFERROR` |
| 🧠 **Array Formulas** | Top-10 customer ranking and most-purchased-product lookup |
| 🧩 **PivotTable & PivotChart** | Region × Product summarization and interactive charts |
| 🎨 **Excel Native Charts** | Combo, Pie, Line, and 100% Stacked Area visualizations |

---

## 📊 Results & Insights

| Sheet | Key Insight |
|---|---|
| 📈 **KPI** | ₹69.03L total revenue converts to ₹19.67L profit — a **28.49%** margin, with a strong **4.24/5** average rating |
| 🏆 **High-Value Customers** | **Kavya Patel** leads at ₹7.86L in revenue; **Laptop** is the single most purchased product across all customers |
| 📦 **Analysis** | **Laptop** and **Smartphone** together drive the majority of profit despite moderate unit volumes — high-ticket electronics outperform high-volume, low-price items |
| 🧩 **Pivot Table** | **North** (₹19.07L) edges out **West** (₹17.33L) in revenue even though West sold more units (180 vs. 112) |
| 🎨 **Charts** | Visual confirmation that Laptop and Mixer Grinder are consistent revenue outliers across every region |

---

## 💡 Advantages

- **Fully Connected** — One raw dataset drives five live analysis sheets; update `Dataset` and everything recalculates
- **Engineered Features Built-In** — `PROFIT MARGIN`, `UPPER_CASE`, and `FIRST NAME` demonstrate practical feature engineering directly in Excel
- **Error-Resilient** — Nearly every formula uses `IFERROR` so missing or blank lookups never break the report
- **Advanced Array Formulas** — Top-10 ranking and most-purchased-product detection without any manual sorting
- **Complete Customer Segmentation** — Every customer tagged New / Returning / VIP for targeted analysis
- **Business-Ready Visuals** — The Chart Dashboard and Pivot Table are presentation-ready with working filters
- **No Dependencies** — No macros, VBA, or external data connections required

---

## ⚠️ Known Limitations

- `XLOOKUP` is stored internally as `_xlfn.XLOOKUP` — it requires **Excel 2019/365** or a compatible modern spreadsheet app; older Excel versions will show `#NAME?` errors
- The **KPI sheet's "Average Profit Margin" label** (₹7,866.76) appears to actually reference a different column than the true profit-margin ratio (0.2849, shown separately as "Profit Margin") — worth double-checking the `AVERAGE(Dataset!Q2:Q251)` formula against intent
- Array formulas (Top 10 Customers, Most Purchased Product) must be entered with **Ctrl+Shift+Enter** in older Excel versions, or as native dynamic arrays in Excel 365 — copying them incorrectly can break the ranking
- The Pivot Table and Charts must be manually refreshed (Data → Refresh All) after editing `Dataset`
- Some Pivot Table product columns are collapsed/hidden in the screenshot for space — full detail is visible by expanding all Product columns in Excel
- Dataset currently only contains **North** and **West** regions; South/East totals will show blank until data for those regions is added

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
| 📁 **Project** | Final Project — Retail Sales Analytics Dashboard |
| 💡 **Purpose** | End-to-end Excel analytics: KPIs, customer ranking, product analysis & dashboards |

<br/>

Made with 💙 using **Microsoft Excel**

![Excel Love](https://img.shields.io/badge/Made%20with-%F0%9F%92%99%20Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)

</div>

---

## 🙏 Acknowledgements

- 📊 **Microsoft Excel Team** — for the formula engine, array formulas, and PivotTables powering this workbook
- 📖 **Excel Function Documentation** — for reference on `XLOOKUP`, `SUMIF`, `IFERROR`, and array formulas
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG animations
- 🎓 **All learners** — who build analytics dashboards like this to sharpen their data analysis fundamentals

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
