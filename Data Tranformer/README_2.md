<div align="center">

# 🕵️ DATA DIGGER

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=38BDF8&center=true&vCenter=true&width=560&lines=Create+%7C+Insert+%7C+Query+%7C+Analyze;A+Relational+SQL+Playground!;Built+with+MySQL+%F0%9F%90%AC" alt="Typing SVG" />

<br/>

![SQL](https://img.shields.io/badge/SQL-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Database](https://img.shields.io/badge/Database-Relational-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![Tables](https://img.shields.io/badge/Tables-4-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![Queries](https://img.shields.io/badge/Queries-25%2B-blueviolet?style=for-the-badge)

<br/>

> 🚀 A single-file **MySQL script** that builds a complete e-commerce style database — Customers, Orders, Products, and Order Details — linked with foreign keys, and demonstrates CRUD operations, filtering, sorting, and aggregate analytics across all four tables!

</div>

---

## 📑 Table of Contents

1. [Overview](#-overview)
2. [Problem Statement](#-problem-statement)
3. [Features](#-features)
4. [Key Features](#-key-features)
5. [Database Schema](#-database-schema)
6. [Entity Relationship Workflow](#-entity-relationship-workflow)
7. [Project Structure](#-project-structure)
8. [Table 1 — Customer_Table](#1️⃣-table-1--customer_table)
9. [Table 2 — Order_Table](#2️⃣-table-2--order_table)
10. [Table 3 — Product_Table](#3️⃣-table-3--product_table)
11. [Table 4 — OrderDetails](#4️⃣-table-4--orderdetails)
12. [How to Run](#️-how-to-run)
13. [Tech Stack](#-tech-stack)
14. [Results & Insights](#-results--insights)
15. [Advantages](#-advantages)
16. [Known Limitations](#-known-limitations)
17. [License](#-license)
18. [Author](#-author)
19. [Acknowledgements](#-acknowledgements)

---

## 🔭 Overview

**Data Digger** is a single-file MySQL script (`Data_Digger.sql`) that creates and populates a small **e-commerce database** — `Customer_Table`, `Order_Table`, `Product_Table`, and `OrderDetails` — connected through primary and foreign keys, then walks through realistic **CRUD** and **analytical** SQL operations on each one.

Instead of scattering `CREATE`, `INSERT`, and analysis queries across separate files, this script puts the **entire schema, sample data, and operation set** in one place, table by table, so the relationships and the queries built on top of them are easy to follow top to bottom.

Built entirely in standard MySQL syntax — `PRIMARY KEY`, `FOREIGN KEY ... ON DELETE CASCADE`, `GROUP BY`, `ORDER BY`, and aggregate functions — it's a solid demonstration of relational database design and everyday SQL querying working together in one script.

---

## ❗ Problem Statement

Learning relational SQL usually means jumping between a schema diagram, a separate seed-data file, and a scratchpad of ad-hoc queries — with no single script showing how the pieces connect. This creates friction:

- No single file that builds a full relational schema **and** demonstrates queries against it
- Repetitive boilerplate for `CREATE TABLE`, `INSERT`, and cascading foreign keys across related tables
- Difficulty seeing how CRUD operations and aggregate analytics play out on real, linked sample data

**Data Digger** solves this by combining everything into **one script, four tables**, giving anyone learning or reviewing SQL instant access to 25+ working queries — from basic `SELECT` to multi-table aggregation — all runnable in sequence against the same connected dataset.

---

## ✨ Features

| Feature | Table(s) | Description |
|---|---|---|
| 🧑‍💼 **Customer Management** | `Customer_Table` | Create, read, update, and delete customer records |
| 📦 **Order Tracking** | `Order_Table` | Orders linked to customers via `CustomerID` foreign key |
| 🛒 **Product Catalog** | `Product_Table` | Product listing with price and stock tracking |
| 🧾 **Order Line Items** | `OrderDetails` | Junction table linking `Order_Table` and `Product_Table` |
| 🔗 **Cascading Deletes** | All FK tables | `ON DELETE CASCADE` keeps child records consistent |
| 📊 **Aggregate Analytics** | `Order_Table`, `OrderDetails` | `MAX`, `MIN`, `AVG`, `SUM`, `COUNT`, `GROUP BY` queries |
| 🔍 **Filtering & Sorting** | All tables | `WHERE`, `BETWEEN`, `ORDER BY`, date-range filtering |

---

## 🌟 Key Features

| Feature | Description |
|---|---|
| 🧩 **Four Connected Tables** | Customers → Orders → OrderDetails ← Products, all linked by foreign keys |
| 🔁 **Referential Integrity** | `ON DELETE CASCADE` on both `Order_Table` and `Product_Table` foreign keys in `OrderDetails` |
| 🧱 **Full CRUD per Table** | Every table demonstrates `SELECT`, `UPDATE`, and `DELETE` right after its `INSERT` block |
| 📅 **Date-Range Filtering** | Orders filtered using `CURDATE() - INTERVAL 30 DAY` |
| 💰 **Aggregate Functions** | `MAX`, `MIN`, `AVG` on order totals and product prices; `SUM` on revenue |
| 🏆 **Ranking Queries** | Top 3 best-selling products via `GROUP BY` + `ORDER BY ... LIMIT 3` |
| 🔢 **15 Seed Rows per Table** | Each of the 4 tables starts with realistic sample data (Gujarat-based customer cities, real product names) |
| ♻️ **Sequential Script Design** | Organized into 4 clearly commented sections, run top to bottom |

---

## 🗂 Database Schema

| Table | Primary Key | Foreign Key(s) | Purpose |
|---|---|---|---|
| `Customer_Table` | `CustomerID` | — | Stores customer name, email, and address |
| `Order_Table` | `OrderID` | `CustomerID` → `Customer_Table` | Stores each order's date and total amount |
| `Product_Table` | `ProductID` | — | Stores product name, price, and stock count |
| `OrderDetails` | `OrderDetailID` | `OrderID` → `Order_Table`, `ProductID` → `Product_Table` | Line items linking orders to products |

---

## 🔁 Entity Relationship Workflow

```
                 ┌────────────────────┐
                 │   Customer_Table   │
                 │  CustomerID (PK)   │
                 │  Name, Email,      │
                 │  Address           │
                 └─────────┬──────────┘
                           │ 1
                           │
                           │ FK: CustomerID
                           │ (ON DELETE CASCADE)
                           ▼ many
                 ┌────────────────────┐
                 │    Order_Table     │
                 │  OrderID (PK)      │
                 │  CustomerID (FK)   │
                 │  OrderDate,        │
                 │  TotalAmount       │
                 └─────────┬──────────┘
                           │ 1
                           │
                           │ FK: OrderID
                           │ (ON DELETE CASCADE)
                           ▼ many
                 ┌────────────────────┐        many  1     ┌────────────────────┐
                 │    OrderDetails    │◄──────────────────┤   Product_Table     │
                 │  OrderDetailID (PK)│  FK: ProductID     │  ProductID (PK)    │
                 │  OrderID (FK)      │  (ON DELETE CASCADE)│  ProductName,     │
                 │  ProductID (FK)    │                    │  Price, Stock      │
                 │  Quantity, SubTotal│                    └────────────────────┘
                 └────────────────────┘
```

---

## 📁 Project Structure

```
📦 Data Digger
 ┣ 📄 Data_Digger.sql   ← Single SQL script, run top to bottom
 ┃ ┣ 📜 Section 1 → CREATE DATABASE + Customer_Table  (create, insert, CRUD ops)
 ┃ ┣ 📜 Section 2 → Order_Table       (create, insert, CRUD + date-range + aggregates)
 ┃ ┣ 📜 Section 3 → Product_Table     (create, insert, CRUD + range filter + aggregates)
 ┃ ┗ 📜 Section 4 → OrderDetails      (create, insert, revenue + ranking queries)
 ┗ 📘 README.md          ← Project documentation (you're here!)
```

> Single-script project — run `Data_Digger.sql` top to bottom in a MySQL client; each section builds on tables created earlier.

---

## 1️⃣ Table 1 — Customer_Table

> Stores customer identity and contact details. Seeded with 15 customers across Gujarat cities.

```sql
CREATE TABLE Customer_Table (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(100)
);
```

**Operations demonstrated:**

| # | Query | Purpose |
|---|---|---|
| 1 | `SELECT * FROM Customer_Table LIMIT 5;` | Preview first 5 customers |
| 2 | `SELECT * FROM Customer_Table;` | View all 15 customers |
| 3 | `UPDATE Customer_Table SET Address = "INDIA" WHERE CustomerID = 1;` | Update a customer's address |
| 4 | `DELETE FROM Customer_Table WHERE CustomerID = 10;` | Remove a customer (cascades to their orders) |
| 5 | `SELECT * FROM Customer_Table WHERE Name = 'Aarav Patel';` | Look up a customer by name |

```
Sample rows:
CustomerID | Name           | Email                      | Address
1          | Aarav Patel    | aarav.patel@gmail.com      | Ahmedabad
2          | Diya Shah      | diya.shah@gmail.com        | Surat
3          | Krish Mehta    | krish.mehta@gmail.com      | Vadodara
4          | Riya Desai     | riya.desai@gmail.com       | Rajkot
5          | Vivaan Joshi   | vivaan.joshi@gmail.com     | Bhavnagar
```

---

## 2️⃣ Table 2 — Order_Table

> Stores each order's date and total amount, linked to `Customer_Table` via `CustomerID` with `ON DELETE CASCADE`.

```sql
CREATE TABLE Order_Table(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customer_Table(CustomerID) ON DELETE CASCADE
);
```

**Operations demonstrated:**

| # | Query | Purpose |
|---|---|---|
| 1 | `SELECT * FROM Order_Table WHERE OrderID = 105;` | Look up a specific order |
| 2 | `UPDATE Order_Table SET TotalAmount = "6000" WHERE OrderID = 115;` | Correct an order total |
| 3 | `DELETE FROM Order_Table WHERE OrderID = 111;` | Cancel/remove an order |
| 4 | `SELECT * FROM Order_Table WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;` | Find orders placed in the last 30 days |
| 5 | `SELECT MAX(TotalAmount), MIN(TotalAmount), AVG(TotalAmount) FROM Order_Table;` | Highest, lowest, and average order value |

```
Aggregate result:
Highest_Order | Lowest_Order | Average_Order
9000.00       | 1100.00      | 2939.29
```

---

## 3️⃣ Table 3 — Product_Table

> Stores product catalog details — name, price, and stock — independent of any other table.

```sql
CREATE TABLE Product_Table (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    Stock INT
);
```

**Operations demonstrated:**

| # | Query | Purpose |
|---|---|---|
| 1 | `SELECT * FROM Product_Table ORDER BY Price DESC;` | List products from most to least expensive |
| 2 | `UPDATE Product_Table SET Price = "6000" WHERE ProductID = 15;` | Update a product's price |
| 3 | `DELETE FROM Product_Table WHERE Stock = 0;` | Remove out-of-stock products (e.g., Headphones) |
| 4 | `SELECT * FROM Product_Table WHERE Price BETWEEN 5000 AND 10000;` | Find mid-range priced products |
| 5 | `SELECT MAX(Price), MIN(Price) FROM Product_Table;` | Most expensive and cheapest product |

```
Most_Expensive_Price | Cheapest_Price
55000.00              | 350.00
```

---

## 4️⃣ Table 4 — OrderDetails

> Junction table connecting `Order_Table` and `Product_Table`, storing per-line-item quantity and subtotal.

```sql
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Order_Table(OrderID) ON DELETE CASCADE,
    FOREIGN KEY (ProductID) REFERENCES Product_Table(ProductID) ON DELETE CASCADE
);
```

**Operations demonstrated:**

| # | Query | Purpose |
|---|---|---|
| 1 | `SELECT * FROM OrderDetails WHERE OrderID = 105;` | View all line items for one order |
| 2 | `SELECT SUM(SubTotal) AS Total_Revenue FROM OrderDetails;` | Total revenue across all line items |
| 3 | `SELECT ProductID, SUM(Quantity) ... GROUP BY ProductID ORDER BY ... DESC LIMIT 3;` | Top 3 best-selling products by quantity |
| 4 | `SELECT COUNT(*) AS Times_Sold FROM OrderDetails WHERE ProductID = 1;` | How many times a specific product was ordered |

```
Total_Revenue: 193400.00

Top 3 Best-Selling Products (by quantity):
ProductID | Total_Quantity_Ordered
15        | 5
8         | 4
3         | 3
```

---

## ▶️ How to Run

1️⃣ **Open a MySQL client** (MySQL Workbench, CLI, or any GUI tool)

2️⃣ **Run the script top to bottom**
```bash
mysql -u root -p < Data_Digger.sql
```

3️⃣ **Or execute section by section** inside your SQL editor — each of the 4 commented sections creates one table, seeds it, and runs its operations in order

> ⚠️ Run sections in order — `Order_Table` and `OrderDetails` depend on rows already existing in `Customer_Table` and `Product_Table` because of their foreign keys.

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| 🐬 **MySQL** | Relational database engine used for all DDL/DML syntax |
| 🗝️ **Primary & Foreign Keys** | Enforces entity relationships across all 4 tables |
| 🔗 **ON DELETE CASCADE** | Keeps child records (orders, order details) consistent on parent deletion |
| 📊 **Aggregate Functions** | `MAX`, `MIN`, `AVG`, `SUM`, `COUNT` for analytics |
| 🧮 **GROUP BY / ORDER BY / LIMIT** | Ranking and grouped analysis queries |

---

## 📊 Results & Insights

After running every section of the script against the seed data, here's a summary of what was observed:

| Observation | Detail |
|---|---|
| 🧑‍💼 **Customer CRUD verified** | Insert, update (address → "INDIA"), delete (CustomerID 10), and lookup all worked as expected |
| 📦 **Order analytics verified** | Highest order = ₹9000, Lowest = ₹1100, Average ≈ ₹2939.29 |
| 🛒 **Product filtering verified** | `BETWEEN 5000 AND 10000` correctly returned mid-range items; out-of-stock Headphones removed cleanly |
| 🧾 **Revenue calculated** | Total revenue across all `OrderDetails` line items = ₹193,400.00 |
| 🏆 **Top sellers identified** | Pendrive, USB Cable, and Keyboard led in total quantity ordered |
| 🔗 **Cascade behavior confirmed** | Deleting a parent row (customer, order, or product) correctly cascades to dependent `OrderDetails`/`Order_Table` rows |

---

## 💡 Advantages

- **Realistic Relational Design** — Four properly normalized tables with real foreign-key relationships
- **Single-File Simplicity** — The entire schema, seed data, and query set lives in one `.sql` file
- **CRUD + Analytics in One Place** — Every table shows both basic CRUD and meaningful aggregate queries
- **Cascading Integrity** — `ON DELETE CASCADE` demonstrates safe deletion across related tables
- **Beginner-to-Intermediate Friendly** — Great showcase of joins-ready schema design, filtering, and aggregation
- **Extensible** — New tables (e.g., `Reviews`, `Payments`) can be added following the same pattern

---

## ⚠️ Known Limitations

- `UPDATE ... SET TotalAmount = "6000"` and similar assign string literals to `DECIMAL` columns — works in MySQL via implicit conversion, but isn't strict-mode-safe on all servers
- `OrderID` values in `Order_Table` skip `110` (jumps from 109 to 111), and `OrderDetails` skips `OrderDetailID` `6` and `10` — minor gaps in the seed data, not bugs
- No `JOIN` queries are included — analytics are run per-table rather than across the full relational chain (e.g., customer name + order total + product name in one result)
- No indexes beyond primary/foreign keys are defined, so performance on larger datasets isn't demonstrated
- Script assumes a MySQL-compatible server; syntax like `CURDATE() - INTERVAL 30 DAY` is MySQL-specific and won't run unmodified on PostgreSQL or SQL Server

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
| 🐬 **Language** | MySQL |
| 📁 **Project** | Data Digger |
| 💡 **Purpose** | Relational schema design & SQL querying practice project |

<br/>

Made with 💙 using **MySQL**

![SQL Love](https://img.shields.io/badge/Made%20with-%F0%9F%92%99%20MySQL-4479A1?style=for-the-badge&logo=mysql)

</div>

---

## 🙏 Acknowledgements

- 🐬 **MySQL Developers** — for the relational database engine this entire project runs on
- 📖 **MySQL Documentation** — for comprehensive reference on `FOREIGN KEY`, `CASCADE`, and aggregate functions
- 💻 **Open Source Community** — for README badge tools (shields.io) and typing SVG animations
- 🎓 **All learners** — who build multi-table relational projects like this to sharpen their SQL fundamentals

---

<div align="center">

⭐ **Star this repo if you found it helpful!** ⭐

</div>
