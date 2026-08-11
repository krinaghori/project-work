CREATE DATABASE DATA_TRANSFORMER;

USE DATA_TRANSFORMER;

--=======================
--1.CUSTOMER TABLE
--=======================

CREATE TABLE Customer_Table(
     CustomerID INT PRIMARY KEY,
     first_name VARCHAR(50),
     last_name VARCHAR(50),
     Email VARCHAR(50),
     registration_date DATE
);

INSERT INTO Customer_Table (CustomerID, first_name, last_name, Email, registration_date) VALUES
(1, 'Aarav', 'Shah', 'aarav.shah@example.com', '2024-01-15'),
(2, 'Priya', 'Patel', 'priya.patel@example.com', '2024-02-03'),
(3, 'Rohan', 'Mehta', 'rohan.mehta@example.com', '2024-02-20'),
(4, 'Ananya', 'Desai', 'ananya.desai@example.com', '2024-03-05'),
(5, 'Vivaan', 'Joshi', 'vivaan.joshi@example.com', '2024-03-18'),
(6, 'Diya', 'Trivedi', 'diya.trivedi@example.com', '2024-04-02'),
(7, 'Kabir', 'Iyer', 'kabir.iyer@example.com', '2024-04-25'),
(8, 'Saanvi', 'Nair', 'saanvi.nair@example.com', '2024-05-10'),
(9, 'Arjun', 'Rao', 'arjun.rao@example.com', '2024-05-30'),
(10, 'Ishita', 'Kulkarni', 'ishita.kulkarni@example.com', '2024-06-14'),
(11, 'Aditya', 'Bhatt', 'aditya.bhatt@example.com', '2024-07-01'),
(12, 'Meera', 'Reddy', 'meera.reddy@example.com', '2024-07-19'),
(13, 'Kunal', 'Verma', 'kunal.verma@example.com', '2024-08-05'),
(14, 'Neha', 'Chauhan', 'neha.chauhan@example.com', '2024-08-22'),
(15, 'Yash', 'Pillai', 'yash.pillai@example.com', '2024-09-09'),
(16, 'Tanvi', 'Kapoor', 'tanvi.kapoor@example.com', '2024-09-25'),
(17, 'Devansh', 'Malhotra', 'devansh.malhotra@example.com', '2024-10-08'),
(18, 'Riya', 'Chopra', 'riya.chopra@example.com', '2024-10-21'),
(19, 'Aryan', 'Menon', 'aryan.menon@example.com', '2024-11-03'),
(20, 'Kavya', 'Bose', 'kavya.bose@example.com', '2024-11-17'),
(21, 'Ishaan', 'Saxena', 'ishaan.saxena@example.com', '2024-12-01'),
(22, 'Sneha', 'Agarwal', 'sneha.agarwal@example.com', '2024-12-15'),
(23, 'Reyansh', 'Bhatia', 'reyansh.bhatia@example.com', '2025-01-04'),
(24, 'Aisha', 'Dutta', 'aisha.dutta@example.com', '2025-01-20'),
(25, 'Vihaan', 'Rana', 'vihaan.rana@example.com', '2025-02-02');





--=======================
--2.ORDER TABLE
--=======================


CREATE TABLE Order_Table(
    order_id     INT PRIMARY KEY,
    CustomerID  INT,
    order_date   DATE NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customer_Table(CustomerID)
);

INSERT INTO Order_Table (order_id, CustomerID, order_date, total_amount) VALUES
(101, 1, '2024-01-20', 250.00),
(102, 2, '2024-02-10', 480.50),
(103, 3, '2024-02-25', 120.75),
(104, 4, '2024-03-12', 999.99),
(105, 5, '2024-03-22', 65.20),
(106, 6, '2024-04-08', 340.00),
(107, 7, '2024-04-30', 1200.00),
(108, 8, '2024-05-15', 89.99),
(109, 9, '2024-06-02', 550.30),
(110, 10, '2024-06-18', 210.00),
(111, 11, '2024-07-05', 75.50),
(112, 12, '2024-07-24', 640.00),
(113, 13, '2024-08-10', 305.25),
(114, 14, '2024-08-27', 150.00),
(115, 15, '2024-09-14', 980.00),
(116, 16, '2024-09-30', 45.99),
(117, 17, '2024-10-12', 720.10),
(118, 18, '2024-10-25', 199.99),
(119, 19, '2024-11-08', 415.00),
(120, 20, '2024-11-22', 60.00),
(121, 21, '2024-12-05', 875.40),
(122, 22, '2024-12-20', 130.00),
(123, 23, '2025-01-10', 500.00),
(124, 24, '2025-01-25', 275.75),
(125, 25, '2025-02-10', 90.20);



--=======================
--2.EMPLOYEES TABLE
--=======================

CREATE TABLE Employee_Table (
    employee_id INT PRIMARY KEY,
    first_name  VARCHAR(50) NOT NULL,
    last_name   VARCHAR(50) NOT NULL,
    department  VARCHAR(50) NOT NULL,
    hire_date   DATE NOT NULL,
    salary      DECIMAL(10,2) NOT NULL
);

INSERT INTO employee_table (employee_id, first_name, last_name, department, hire_date, salary) VALUES
(1, 'Mark', 'Johnson', 'Sales', '2020-01-15', 50000.00),
(2, 'Susan', 'Lee', 'HR', '2021-03-20', 55000.00),
(3, 'David', 'Kumar', 'Sales', '2019-06-10', 42000.00),
(4, 'Priya', 'Nair', 'IT', '2022-02-01', 68000.00),
(5, 'Tom', 'Brown', 'IT', '2018-11-25', 30000.00),
(6, 'Anjali', 'Mehta', 'Finance', '2020-05-14', 61000.00),
(7, 'Rahul', 'Verma', 'Marketing', '2021-08-09', 47000.00),
(8, 'Kavita', 'Rao', 'HR', '2019-12-03', 53000.00),
(9, 'Sanjay', 'Gupta', 'IT', '2017-04-18', 72000.00),
(10, 'Neha', 'Kapoor', 'Sales', '2022-07-22', 39000.00),
(11, 'Vikram', 'Singh', 'Finance', '2020-09-30', 64000.00),
(12, 'Pooja', 'Iyer', 'Marketing', '2023-01-11', 45000.00),
(13, 'Arjun', 'Patel', 'IT', '2019-03-05', 58000.00),
(14, 'Divya', 'Shah', 'HR', '2021-06-17', 51000.00),
(15, 'Karan', 'Malhotra', 'Sales', '2018-10-08', 44000.00),
(16, 'Meena', 'Reddy', 'Finance', '2022-11-25', 60000.00),
(17, 'Rohit', 'Sharma', 'IT', '2020-02-14', 75000.00),
(18, 'Simran', 'Kaur', 'Marketing', '2019-07-19', 48000.00),
(19, 'Aditya', 'Joshi', 'Sales', '2021-12-01', 41000.00),
(20, 'Isha', 'Chopra', 'HR', '2018-05-27', 56000.00),
(21, 'Manoj', 'Tiwari', 'Finance', '2023-03-16', 63000.00),
(22, 'Ritu', 'Bhatt', 'IT', '2017-09-09', 80000.00),
(23, 'Deepak', 'Nair', 'Marketing', '2020-12-20', 46000.00),
(24, 'Swati', 'Desai', 'Sales', '2022-04-04', 40000.00),
(25, 'Amitabh', 'Rao', 'HR', '2019-01-30', 54000.00);




--=======================
-- Operetions
--=======================

--INNER JOIN

SSELECT 
    o.order_id,
    c.CustomerID,
    c.first_name,
    c.last_name,
    c.Email,
    o.order_date,
    o.total_amount
FROM Order_Table o
INNER JOIN Customer_Table c
ON o.CustomerID = c.CustomerID;

--LEFT JOIN

SELECT 
    c.CustomerID,
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date,
    o.total_amount
FROM Customer_Table c
LEFT JOIN Order_Table o
ON c.CustomerID = o.CustomerID;

--RIGHT JOIN

SELECT 
    o.order_id,
    o.order_date,
    o.total_amount,
    c.CustomerID,
    c.first_name,
    c.last_name
FROM Customer_Table c
RIGHT JOIN Order_Table o
ON c.CustomerID = o.CustomerID;

--FULL OUTER JOIN

SELECT 
    c.CustomerID,
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date,
    o.total_amount
FROM Customer_Table c
LEFT JOIN Order_Table o
ON c.CustomerID = o.CustomerID

UNION

SELECT 
    c.CustomerID,
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date,
    o.total_amount
FROM Customer_Table c
RIGHT JOIN Order_Table o
ON c.CustomerID = o.CustomerID;

--employees whose salary is above the average salary

SELECT  employee_id, first_name, last_name, department, salary FROM Employee_Table WHERE salary > ( SELECT AVG(salary)  FROM Employee_Table);

--Extract YEAR and MONTH from OrderDate

SELECT  order_id, order_date, YEAR(order_date) AS Order_Year, MONTHNAME(order_date) AS Order_Month FROM Order_Table;

--Difference in days between OrderDate and current date

SELECT  order_id, order_date, DATEDIFF(CURDATE(), order_date) AS Days_Difference FROM Order_Table;

--Format OrderDate as DD-MM-YYYY

SELECT  order_id, order_date, DATE_FORMAT(order_date, '%d-%m-%Y') AS Formatted_Date FROM Order_Table;

--Concatenate FirstName and LastName to form Full Name


SELECT  CustomerID, CONCAT(first_name, ' ', last_name) AS Full_Name FROM Customer_Table;

--Replace part of a string

SELECT  last_name, REPLACE(last_name, 'Shah', 'Patel') AS Updated_LastName FROM Customer_Table;

--Convert FirstName to UPPERCASE

SELECT  first_name, UPPER(first_name) AS Upper_Name FROM Customer_Table;

--Convert LastName to LOWERCASE

SELECT  first_name, LOWER(first_name) AS Lower_Name FROM Customer_Table;

--Trim extra spaces from Email

SELECT  CustomerID, Email, TRIM(Email) AS Clean_Email FROM Customer_Table;

--Calculate running total of TotalAmount for each order

SELECT order_id, order_date, total_amount, SUM(total_amount) OVER ( ORDER BY order_date ) AS Running_Total FROM Order_Table;

--Rank orders based on TotalAmount

SELECT  order_id, order_date, total_amount, RANK() OVER ( ORDER BY total_amount DESC ) AS Order_Rank FROM Order_Table;

--Assign discount based on TotalAmount

SELECT order_id, total_amount,
    CASE
        WHEN total_amount >= 500 THEN '10%'
        WHEN total_amount >= 100 THEN '5%'
        ELSE '0%'
    END AS Discount
FROM Order_Table;

--Categorize employees based on salary

SELECT  employee_id, first_name, last_name, salary,
    CASE
        WHEN salary >= 70000 THEN 'High'
        WHEN salary >= 50000 THEN 'Medium'
        ELSE 'Low'
    END AS Salary_Category
FROM Employee_Table;