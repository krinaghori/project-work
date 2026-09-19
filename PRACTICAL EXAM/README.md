<div align="center">

# 🎓 STUDENT ANALYSIS PROJECT

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=38BDF8&center=true&vCenter=true&width=560&lines=Load+%7C+Analyze+%7C+Visualize+%7C+Decide;What+Drives+Student+Placement%3F;Built+in+Microsoft+Excel+%F0%9F%93%88" alt="Typing SVG" />

<br/>

![Excel](https://img.shields.io/badge/Microsoft_Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![Students](https://img.shields.io/badge/Students-250-blue?style=for-the-badge)
![Sheets](https://img.shields.io/badge/Sheets-6-orange?style=for-the-badge)
![Correlation](https://img.shields.io/badge/Correlation-Analysis-purple?style=for-the-badge)
![PivotTable](https://img.shields.io/badge/PivotTable-Enabled-red?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)

<br/>

> 🚀 A **single Excel workbook** that turns 250 student academic records into a full analytics suite — KPI dashboard, high-performing student ranking, department-level correlation analysis, a pivot table, and an 8-panel chart dashboard — all in one connected file.

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
10. [Sheet 3 — High-Performing Students](#3️⃣-sheet-3--high-performing-students)
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

**Student Analysis Project** is a single `.xlsx` workbook built around one raw table of **250 student records**, feeding into **five downstream analysis sheets**. It walks the data through a complete academic analytics pipeline: raw records → engineered helper columns → KPI dashboard → top-student ranking → department & correlation analysis → pivot summarization → visual chart dashboard.

Instead of separate reports for grades, placement, and department performance, everything lives in one connected workbook — update the `Dataset` sheet and the KPI cards, rankings, department table, pivot, and charts all recalculate automatically.

Built entirely with native Excel formulas, `RANK`, `CORREL`, array-style `INDEX`/`MATCH` lookups, PivotTables, and native charts — no macros, no VBA.

---

## ❗ Problem Statement

A flat table of 250 student records — attendance, study hours, scores, backlogs, internships, and placement outcomes — is hard to act on directly. Left as raw rows, it's difficult to answer questions that matter to a placement cell or academic department like:

- What are the headline numbers — total students, average score, placement rate — at a glance?
- Who are the top-performing students, and which department produces the most of them?
- Does attendance or study time actually predict exam performance?
- Do backlogs or internships meaningfully affect placement chances?
- Which department has the best placement rate, and which lags behind?
- How does gender or semester affect average performance?

**Student Analysis Project** solves this by combining engineered columns, ranking, correlation analysis, pivoting, and charting into **one connected workbook**, turning 250 student records into a KPI scorecard, a Top-10 leaderboard, a department comparison table, a Pearson correlation matrix, a pivot table, and an 8-panel chart dashboard.

---

## ✨ Features

| Feature | Sheet | Description |
|---|---|---|
| 📂 **Raw Student Records** | Dataset | 250 rows × 23 columns — academic, behavioral, and placement fields, plus engineered columns |
| 🧮 **Engineered Columns** | Dataset | `GRADE`, `PLACED FLAG`, `AVG EXAM SCORE`, `RANK`, `UPPER_CASE`, `STUDENT NO` |
| 📊 **KPI Scorecard** | KPI | 11 headline metrics + a Grade Distribution table (A–F) |
| 🏆 **High-Performing Student Ranking** | High-Performing Students | Top 10 students by Overall Score + "best of" callouts by department |
| 🎯 **Full Student Directory** | High-Performing Students | Every student with Overall Score, Projects, and Placement Status |
| 🏢 **Department Analysis** | Analysis | Per-department student count, average score, attendance %, certifications, placement rate |
| 📐 **Pearson Correlation Matrix** | Analysis | 8 correlation pairs (e.g. Attendance vs. Final Exam Score) with strength classification |
| 🧩 **Multi-View Pivot Table** | Pivot Table | 6 pivot views — department, placement, internship, backlogs, gender, certifications |
| 🎨 **Chart Dashboard** | Charts | 8-panel dashboard — bar, pie, scatter, stacked bar, and line charts |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🔗 **Fully Linked Workbook** | Every analysis sheet references `Dataset` live — no copy-pasted values |
| 🧮 **Engineered Feature Columns** | `GRADE` (nested `IF` vs. KPI thresholds), `PLACED FLAG` (binary), `AVG EXAM SCORE`, dense `RANK`, name-cleanup columns |
| 🥇 **Tie-Aware Ranking** | `RANK()` combined with `COUNTIF()` produces a clean, tie-broken dense rank for every student |
| 📐 **Statistical Correlation** | `CORREL()` powers 8 relationship checks, auto-labeled Strong/Moderate/Weak/Negligible against configurable cut-offs |
| 🛡️ **Error-Safe Formulas** | Nearly every formula is wrapped in `IFERROR(...)` so blank or missing lookups never break the sheet |
| 🎯 **Layered Conditional Aggregation** | `COUNTIF`, `AVERAGEIF`, `SUMIF` combine to build the department comparison table |
| 🧩 **Interactive Multi-View Pivot** | Six separate pivot breakdowns feeding embedded charts in the same sheet |
| ♻️ **No Macros/VBA** | 100% native Excel features — formulas, PivotTables, and Charts |

---

## 📁 Workbook Structure

```
📦 Student_Analysis_Project.xlsx
 ┣ 📄 Dataset                   ← 250 student records + 6 engineered columns (23 total)
 ┣ 📄 KPI                       ← 11-metric KPI Summary + Grade Distribution (A–F) table
 ┣ 📄 HIGH-PERFORMING STUDENTS  ← Top 10 by Overall Score + department callouts + full directory
 ┣ 📄 ANALYSIS                  ← Department comparison table + Pearson correlation matrix
 ┣ 📄 PIVOT TABLE               ← 6 pivot views (dept, placement, internship, backlogs, gender, certs)
 ┣ 📄 CHARTS                    ← 8-panel visual dashboard
 ┗ 📄 README.md                 ← Project documentation (you're here!)
```

> Single-workbook project — open in Excel; every KPI, ranking, pivot, and chart recalculates automatically.

---

## 🔁 Analysis Workflow

```
START
  │
  ▼
Dataset (250 students: Attendance, Study Hours, Scores, Backlogs, Internship, Placement...)
  │
  ├──► Engineered Columns → GRADE (nested IF) · PLACED FLAG · AVG EXAM SCORE ·
  │                         RANK (tie-aware) · UPPER_CASE · STUDENT NO
  │
  ├──► KPI                → Total Students · Avg Overall Score · Placement Rate ·
  │                         Total Placed/Not Placed · Avg Attendance · Avg Study Hours ·
  │                         Total Projects · Total Certifications · Backlogs · Internship
  │                         Rate · Avg Stipend · Missing Values + Grade Distribution
  │
  ├──► High-Performing    → INDEX/MATCH Top 10 by RANK
  │    Students             + "Best Department" callouts (via ANALYSIS sheet)
  │                         + Full directory: Overall Score, Projects, Placement Status
  │
  ├──► Analysis           → Per-department: COUNTIF, AVERAGEIF, SUMIF
  │                         + CORREL() Pearson correlations, auto-classified by strength
  │
  ├──► Pivot Table        → 6 views: Dept Avg Score · Placement by Dept · Internship vs
  │                         Placement · Backlogs vs Placement · Gender Avg · Dept Certs
  │
  └──► Charts             → Bar · Pie · Scatter · Stacked Bar · Line — fed by the Pivot Table
  │
  ▼
END
```

---

## 📋 Expected Dataset Format

The `Dataset` sheet holds the source table — 23 columns feeding every downstream sheet:

| Column | Description |
|---|---|
| `Student_ID`, `Student_Name` | Student identifiers |
| `Department` | AI-ML, Computer Engineering, Data Science, Electronics, IT |
| `Gender`, `Semester` | Student demographics |
| `Attendance_%`, `Study_Hours` | Behavioral metrics |
| `Assignment_Score`, `Midterm_Score`, `Final_Exam_Score` | Academic scores |
| `Projects_Completed`, `Certifications`, `Backlogs` | Academic activity |
| `Internship`, `Monthly_Stipend` | Internship status and pay |
| `Placement_Status` | Placed / Not Placed |
| `Overall_Score` | Composite academic score |
| `GRADE`, `PLACED FLAG`, `AVG EXAM SCORE`, `RANK`, `UPPER_CASE`, `STUDENT NO` | Engineered columns |

A sample of the actual data:

```
Student_ID,Student_Name,Department,Gender,Semester,Attendance_%,Study_Hours,
Assignment_Score,Midterm_Score,Final_Exam_Score,Projects_Completed,Certifications,
Backlogs,Internship,Monthly_Stipend,Placement_Status,Overall_Score,GRADE,PLACED FLAG,
AVG EXAM SCORE,RANK,UPPER_CASE,STUDENT NO
STU1001,Student_001,IT,Female,6,76.4,1.9,100,76.4,74.9,2,1,0,No,0,Placed,
80.37,B,1,75.65,79,STUDENT_001,001
```

---

## 1️⃣ Sheet 1 — Dataset

> The single source of truth: **250 rows** across **23 columns**, including 6 engineered helper columns computed directly from the raw fields.

```excel
=IF(Q2>=KPI!$E$4,"A",IF(Q2>=KPI!$E$5,"B",IF(Q2>=KPI!$E$6,"C",IF(Q2>=KPI!$E$7,"D","F"))))
' GRADE — nested IF against the KPI sheet's grade threshold table

=IF(P2="Placed",1,0)                                  ' PLACED FLAG (binary)
=IFERROR(AVERAGE(I2:J2),0)                              ' AVG EXAM SCORE (Midterm + Final)
=RANK(Q2,$Q$2:$Q$251,0)+COUNTIF($Q$2:Q2,Q2)-1           ' RANK (tie-aware, dense)
=UPPER(B2)                                              ' UPPER_CASE
=IFERROR(MID(B2,FIND("_",B2)+1,LEN(B2)),B2)             ' STUDENT NO (numeric suffix)
```

---

## 2️⃣ Sheet 2 — KPI

> An 11-metric scorecard plus a live Grade Distribution table (A–F) that also feeds the `GRADE` formula on the Dataset sheet.

<div align="center">
<img src="student_analysis_screenshots/kpi_summary.png" alt="KPI Summary Metrics and Grade Distribution" width="600"/>
</div>

```excel
=IFERROR(COUNTA(Dataset!A2:A251),0)                      ' Total Students
=IFERROR(AVERAGE(Dataset!Q2:Q251),0)                      ' Average Overall Score
=IFERROR(SUM(Dataset!S2:S251)/COUNTA(Dataset!A2:A251),0)  ' Placement Rate
=IFERROR(COUNTIF(Dataset!P2:P251,"Placed"),0)             ' Total Placed
=IFERROR(COUNTIF(Dataset!P2:P251,"Not Placed"),0)         ' Total Not Placed
=IFERROR(AVERAGE(Dataset!F2:F251),0)                      ' Average Attendance %
=IFERROR(AVERAGE(Dataset!G2:G251),0)                      ' Average Study Hours / Day
=IFERROR(SUM(Dataset!K2:K251),0)                          ' Total Projects Completed
=IFERROR(SUM(Dataset!L2:L251),0)                          ' Total Certifications
=IFERROR(COUNTIF(Dataset!M2:M251,">0"),0)                 ' Students with Backlogs
=IFERROR(COUNTIF(Dataset!N2:N251,"Yes")/COUNTA(Dataset!A2:A251),0)  ' Internship Rate
=IFERROR(AVERAGEIF(Dataset!O2:O251,">0"),0)               ' Average Stipend (Interns)
=COUNTBLANK(Dataset!A2:Q251)                              ' Missing Values (Blank Cells)
=COUNTIF(Dataset!R2:R251,D4)                              ' Students per Grade (A–F)
```

| Metric | Value |
|---|---|
| Total Students | 250 |
| Average Overall Score | 75.23 |
| Placement Rate | **56.0%** |
| Total Placed | 140 |
| Total Not Placed | 110 |
| Average Attendance % | 81.3% |
| Average Study Hours / Day | 4.76 |
| Total Projects Completed | 635 |
| Total Certifications | 526 |
| Students with Backlogs | 107 |
| Internship Rate | 41.6% |
| Average Stipend (Interns) | ₹12,343 |
| Missing Values (Blank Cells) | 20 |

| Grade | Min Score | Students |
|---|---|---|
| A | 85 | 37 |
| B | 75 | 98 |
| C | 65 | 76 |
| D | 50 | 37 |
| F | 0 | 2 |

> ✅ **Reading it:** just over half of students (**56%**) are placed, with the bulk of the class (**98 students**) landing a **B** grade — a healthy, right-skewed grade distribution with very few outright failures.

---

## 3️⃣ Sheet 3 — High-Performing Students

> Ranks the Top 10 students by Overall Score, surfaces "best of" department callouts, and lists every student with score, projects, and placement outcome.

<div align="center">
<img src="student_analysis_screenshots/high_performing_students.png" alt="High-Performing Students ranking and full student directory" width="500"/>
</div>

```excel
=IFERROR(INDEX(Dataset!$B$2:$B$251,MATCH(ROWS($A$5:A5),Dataset!$U$2:$U$251,0)),"")
' Top 10 by RANK — pulls Student Name where RANK = 1, 2, 3...

=IFERROR(INDEX(Dataset!$Q$2:$Q$251,MATCH(ROWS($A$5:A5),Dataset!$U$2:$U$251,0)),"")
' Corresponding Overall Score

=INDEX(ANALYSIS!$A$4:$A$8,MATCH(MAX(ANALYSIS!$C$4:$C$8),ANALYSIS!$C$4:$C$8,0))
' Top Department by Avg Overall Score

=INDEX(ANALYSIS!$A$4:$A$8,MATCH(MAX(ANALYSIS!$B$4:$B$8),ANALYSIS!$B$4:$B$8,0))
' Largest Department (Most Students)

=INDEX(ANALYSIS!$A$4:$A$8,MATCH(MAX(ANALYSIS!$F$4:$F$8),ANALYSIS!$F$4:$F$8,0))
' Best Department by Placement Rate
```

| Rank | Student | Overall Score | Department |
|---|---|---|---|
| 1 | Student_046 | 93.65 | AI-ML |
| 2 | Student_021 | 91.62 | AI-ML |
| 3 | Student_028 | 91.51 | AI-ML |
| 4 | Student_138 | 91.45 | Data Science |
| 5 | Student_192 | 91.33 | Electronics |
| 6 | Student_116 | 91.31 | Electronics |
| 7 | Student_215 | 89.69 | Electronics |
| 8 | Student_141 | 89.54 | Electronics |
| 9 | Student_030 | 89.35 | Computer Engineering |
| 10 | Student_231 | 88.74 | Data Science |

**Top Department (Avg Score):** 🏆 **AI-ML** · **Largest Department:** 🏢 **Computer Engineering** · **Best Placement Rate:** 🎯 **AI-ML**

> ✅ **Reading it:** **AI-ML** students dominate the top of the leaderboard and also post the best placement rate — a clear signal that this department's academic performance translates directly into placement outcomes.

---

## 4️⃣ Sheet 4 — Analysis

> A department comparison table plus a Pearson correlation matrix testing 8 relationships in the dataset.

<div align="center">
<img src="student_analysis_screenshots/department_analysis.png" alt="Department Analysis and Correlation Matrix" width="700"/>
</div>

```excel
=IFERROR(COUNTIF(Dataset!C:C,A4),0)                        ' Total Students per Department
=IFERROR(AVERAGEIF(Dataset!C:C,A4,Dataset!Q:Q),0)           ' Avg Overall Score
=IFERROR(AVERAGEIF(Dataset!C:C,A4,Dataset!F:F),0)           ' Avg Attendance %
=IFERROR(SUMIF(Dataset!C:C,A4,Dataset!L:L),0)               ' Total Certifications
=IFERROR(SUMIF(Dataset!C:C,A4,Dataset!S:S)/B4,0)            ' Placement Rate

=IFERROR(CORREL(Dataset!F2:F251,Dataset!J2:J251),0)         ' Attendance % vs Final Exam Score
=IF(ABS(B14)<$F$17,"Negligible",
   IF(ABS(B14)>=$F$15,"Strong",
   IF(ABS(B14)>=$F$16,"Moderate","Weak"))&IF(B14<0," negative"," positive"))
' Strength classification against configurable cut-offs (Strong ≥0.7, Moderate ≥0.4, Weak ≥0.2)
```

| Department | Students | Avg Score | Avg Attendance % | Certifications | Placement Rate |
|---|---|---|---|---|---|
| AI-ML | 48 | **77.14** | 83.1% | 110 | **66.7%** |
| Computer Engineering | 76 | 74.70 | 80.4% | **176** | 59.2% |
| Data Science | 37 | 75.27 | 80.0% | 58 | 59.5% |
| Electronics | 41 | 75.44 | 80.3% | 79 | 46.3% |
| IT | 48 | 73.96 | 82.6% | 103 | 45.8% |
| **All Departments** | **250** | **75.23** | **81.3%** | **526** | **56.0%** |

| Relationship | Correlation (r) | Strength |
|---|---|---|
| Attendance % vs Final Exam Score | 0.272 | Weak positive |
| Study Hours vs Overall Score | 0.213 | Weak positive |
| Attendance % vs Overall Score | 0.194 | Negligible |
| **Final Exam Score vs Overall Score** | **0.914** | **Strong positive** |
| Overall Score vs Placed (1/0) | 0.209 | Weak positive |
| Backlogs vs Placed (1/0) | -0.211 | Weak negative |
| Projects Completed vs Placed (1/0) | 0.121 | Negligible |
| Certifications vs Placed (1/0) | -0.038 | Negligible |

> ✅ **Reading it:** unsurprisingly, **Final Exam Score correlates strongly (r = 0.914)** with Overall Score since it's a major input to it. More interestingly, attendance and study hours show only **weak** correlation with performance, and backlogs show a modest **negative** pull on placement — while certifications and project count barely move the needle on placement odds.

---

## 5️⃣ Sheet 5 — Pivot Table

> Six pivot views built directly from `Dataset`, each paired with an embedded chart.

<div align="center">
<img src="student_analysis_screenshots/pivot_table.png" alt="Pivot Table with six analytical views" width="750"/>
</div>

| Pivot View | Row Labels | Values | Headline |
|---|---|---|---|
| 1. Avg Overall Score by Department | Department | Avg Overall Score, Count | AI-ML highest (77.14) |
| 2. Placement Rate by Department | Department | Placed, Not Placed, Rate | AI-ML best (66.7%), IT lowest (45.8%) |
| 3. Internship vs Placement Status | Internship (Yes/No) | Placed, Not Placed, Rate | Interns place at 61.5% vs. 52.1% for non-interns |
| 4. Backlogs vs Placement Status | Backlog Count | Placed, Not Placed, Rate | Placement rate drops sharply beyond 2 backlogs |
| 5. Gender-wise Average Score | Gender | Avg Overall Score, Avg Final Exam | Male students score marginally higher (75.76 vs 74.60) |
| 6. Department-wise Certification Count | Department | Sum & Avg Certifications/Student | Computer Engineering leads in total certs (176) |

---

## 6️⃣ Sheet 6 — Charts

> An 8-panel dashboard combining bar, pie, scatter, stacked bar, and line charts, all fed by the Pivot Table and Dataset.

<div align="center">
<img src="student_analysis_screenshots/charts_dashboard.png" alt="8-panel chart dashboard" width="750"/>
</div>

| Chart | Type | Shows |
|---|---|---|
| 📊 **Placement Rate by Department** | Bar | AI-ML leads at 66.7%, IT trails at 45.8% |
| 🥧 **Placed vs Not Placed Students** | Pie | 56% Placed vs 44% Not Placed, dataset-wide |
| 🔵 **Attendance % vs Final Exam Score** | Scatter | Loose upward scatter, consistent with the weak positive correlation |
| 🔵 **Study Hours vs Overall Score** | Scatter | Broad spread confirming a weak-to-moderate relationship |
| 📊 **Internship vs Placement Status** | Stacked Bar | Interned students show a visibly higher placed share |
| 📊 **Backlogs vs Placement Status** | Stacked Bar | Placement share collapses as backlog count rises |
| 📊 **Average Monthly Stipend by Department** | Horizontal Bar | Stipend and score don't move in lockstep across departments |
| 📈 **Semester-wise Performance** | Line | Overall Score and Attendance % tracked across 8 semesters |
| 📊 **Gender-wise Average Score** | Bar | Near-parity between Female and Male average scores |
| 📊 **Department-wise Certification Count** | Bar | Computer Engineering and AI-ML lead on total certifications |

> ✅ **Reading it:** the dashboard visually reinforces the correlation matrix — internship and low backlog count both track with better placement outcomes, while attendance and study hours show only a loose relationship with scores.

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 📊 **Microsoft Excel** | Spreadsheet application hosting the entire workbook |
| 🧮 **Native Excel Formulas** | `IF`, `RANK`, `COUNTIF`, `AVERAGEIF`, `SUMIF`, `INDEX`/`MATCH`, `IFERROR` |
| 📐 **Statistical Functions** | `CORREL()` for Pearson correlation, `AVERAGE`, `COUNTBLANK` |
| 🧩 **PivotTable & PivotChart** | Six department/placement/gender pivot breakdowns |
| 🎨 **Excel Native Charts** | Bar, Pie, Scatter, Stacked Bar, and Line visualizations |

---

## 📊 Results & Insights

| Sheet | Key Insight |
|---|---|
| 📈 **KPI** | **56% placement rate** across 250 students, with a healthy grade curve (98 B's, only 2 F's) |
| 🏆 **High-Performing Students** | **AI-ML** produces the top-ranked students *and* the best placement rate — academic strength and placement outcome align in this department |
| 🏢 **Analysis** | **Final Exam Score** is the strongest predictor of Overall Score (r = 0.914); backlogs pull placement odds down (r = -0.211), while certifications and projects show almost no correlation with placement |
| 🧩 **Pivot Table** | Internship experience lifts placement rate from **52.1% → 61.5%**; each additional backlog visibly erodes placement chances |
| 🎨 **Charts** | Visual confirmation across all 8 panels that department, internship status, and backlog count matter more to placement than raw attendance or study hours |

---

## 💡 Advantages

- **Fully Connected** — One raw dataset drives five live analysis sheets; update `Dataset` and everything recalculates
- **Engineered Features Built-In** — `GRADE`, `PLACED FLAG`, `AVG EXAM SCORE`, and tie-aware `RANK` demonstrate practical feature engineering directly in Excel
- **Real Statistical Analysis** — Pearson correlation (`CORREL`) with automatic strength classification, not just descriptive averages
- **Error-Resilient** — Nearly every formula uses `IFERROR` so missing or blank lookups never break the report
- **Actionable Segmentation** — Department, internship, backlog, and gender breakdowns all point to concrete, decision-ready insights
- **Business-Ready Visuals** — An 8-panel Chart Dashboard and a 6-view Pivot Table, both presentation-ready
- **No Dependencies** — No macros, VBA, or external data connections required

---

## ⚠️ Known Limitations

- The `GRADE` formula on `Dataset` references the `KPI` sheet's threshold table (`KPI!$E$4:$E$7`) — changing those thresholds will silently reclassify every student's grade
- `RANK()` combined with `COUNTIF()` produces a dense, tie-broken rank, but ties are broken by row order, not by any secondary academic criterion (e.g. attendance)
- Correlation values (`CORREL`) measure only **linear** relationships — a genuinely non-linear link between two variables (e.g. attendance and score) could be underestimated by a "weak" or "negligible" label
- The Pivot Table and Charts must be manually refreshed (Data → Refresh All) after editing `Dataset`
- 20 blank cells are flagged by the KPI sheet's "Missing Values" metric but are not otherwise cleaned or imputed anywhere in the workbook
- Correlation strength cut-offs (Strong ≥ 0.7, Moderate ≥ 0.4, Weak ≥ 0.2) are a common convention but are somewhat arbitrary — different fields may use different thresholds

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
| 👤 **Name** | _Your Name Here_ |
| 📊 **Tool** | Microsoft Excel |
| 📁 **Project** | Student Analysis Project |
| 💡 **Purpose** | End-to-end Excel analytics: KPIs, student ranking, correlation & dashboards |

<br/>

Made with 💙 using **Microsoft Excel**

![Excel Love](https://img.shields.io/badge/Made%20with-%F0%9F%92%99%20Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)

</div>

---

## 🙏 Acknowledgements

- 📊 **Microsoft Excel Team** — for the formula engine, statistical functions, and PivotTables powering this workbook
- 📖 **Excel Function Documentation** — for reference on `RANK`, `CORREL`, `INDEX`/`MATCH`, and `IFERROR`
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG animations
- 🎓 **All learners** — who build academic analytics dashboards like this to sharpen their data analysis fundamentals

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
