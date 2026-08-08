-- =========================================
-- 1. Customer Table
-- =========================================

CREATE DATABASE Data_Digger;

USE Data_Digger;

-- Create Customer Table
CREATE TABLE Customer_Table (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(100)
);

-- Insert Records
INSERT INTO Customer_Table (CustomerID, Name, Email, Address)
VALUES
(1, 'Aarav Patel', 'aarav.patel@gmail.com', 'Ahmedabad'),
(2, 'Diya Shah', 'diya.shah@gmail.com', 'Surat'),
(3, 'Krish Mehta', 'krish.mehta@gmail.com', 'Vadodara'),
(4, 'Riya Desai', 'riya.desai@gmail.com', 'Rajkot'),
(5, 'Vivaan Joshi', 'vivaan.joshi@gmail.com', 'Bhavnagar'),
(6, 'Anaya Trivedi', 'anaya.trivedi@gmail.com', 'Anand'),
(7, 'Yash Patel', 'yash.patel@gmail.com', 'Nadiad'),
(8, 'Mihir Shah', 'mihir.shah@gmail.com', 'Jamnagar'),
(9, 'Kavya Parmar', 'kavya.parmar@gmail.com', 'Gandhinagar'),
(10, 'Dev Bhatt', 'dev.bhatt@gmail.com', 'Junagadh'),
(11, 'Ishita Patel', 'ishita.patel@gmail.com', 'Valsad'),
(12, 'Harsh Pandya', 'harsh.pandya@gmail.com', 'Navsari'),
(13, 'Nisha Modi', 'nisha.modi@gmail.com', 'Morbi'),
(14, 'Ronak Solanki', 'ronak.solanki@gmail.com', 'Mehsana'),
(15, 'Priya Gohil', 'priya.gohil@gmail.com', 'Palanpur');

-- Operetions 

SELECT * FROM Customer_Table LIMIT 5;

SELECT * FROM Customer_Table;

UPDATE Customer_Table SET Address = "INDIA" WHERE CustomerID = 1;

DELETE FROM Customer_Table WHERE CustomerID = 10;

SELECT * FROM Customer_Table WHERE Name = 'Aarav Patel';



-- =========================================
-- 2. Orders Table
-- =========================================


-- Create Orders Table

CREATE TABLE Order_Table(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customer_Table(CustomerID) ON DELETE CASCADE
);

-- Insert Records

INSERT INTO Order_Table (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(101, 1, '2026-01-05', 2500),
(102, 2, '2026-01-12', 1800),
(103, 3, '2026-02-03', 3200),
(104, 4, '2026-02-15', 1500),
(105, 5, '2026-03-01', 4500),
(106, 6, '2026-03-18', 2750),
(107, 7, '2026-04-10', 3900),
(108, 8, '2026-04-25', 2100),
(109, 9, '2026-05-07', 5200),
(111, 11, '2026-06-01', 2000),
(112, 12, '2026-06-7', 3000),
(113, 13, '2026-07-10', 1600),
(114, 14, '2026-07-23', 9000),
(115, 15, '2026-07-29', 1100);

--Operetions

SELECT * FROM Order_Table WHERE OrderID = 105;

UPDATE Order_Table SET TotalAmount = "6000" WHERE OrderID = 115;

DELETE FROM Order_Table WHERE OrderID = 111;

SELECT * FROM Order_Table WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;

SELECT  MAX(TotalAmount) AS Highest_Order, MIN(TotalAmount) AS Lowest_Order, AVG(TotalAmount) AS Average_Order FROM Order_Table;


-- =========================================
-- 3. Products Table
-- =========================================

-- Create Products Table

CREATE TABLE Product_Table (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    Stock INT
);

-- Insert Records

INSERT INTO Product_Table (ProductID, ProductName, Price, Stock)
VALUES
(1, 'Laptop', 55000.00, 20),
(2, 'Smartphone', 25000.00, 35),
(3, 'Keyboard', 1200.00, 50),
(4, 'Mouse', 700.00, 60),
(5, 'Monitor', 15000.00, 25),
(6, 'Headphones', 1800.00, 0),
(7, 'Printer', 12000.00, 15),
(8, 'USB Cable', 350.00, 100),
(9, 'Webcam', 2500.00, 30),
(10, 'Power Bank', 1500.00, 45),
(11, 'Tablet', 22000.00, 18),
(12, 'Speaker', 3000.00, 28),
(13, 'Smart Watch', 5000.00, 22),
(14, 'External Hard Disk', 6500.00, 12),
(15, 'Pendrive', 800.00, 75);


-- Operetions

SELECT * FROM Product_Table ORDER BY Price DESC;

UPDATE Product_Table SET Price = "6000" WHERE ProductID = 15;

DELETE FROM Product_Table WHERE Stock = 0;

SELECT * FROM Product_Table WHERE Price BETWEEN 5000 AND 10000;

SELECT  MAX(Price) AS Most_Expensive_Price,  MIN(Price) AS Cheapest_Price FROM Product_Table;


-- =========================================
-- 4.OrderDetails  Table
-- =========================================

-- Create OrderDetails Table

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Order_Table(OrderID) ON DELETE CASCADE,
    FOREIGN KEY (ProductID) REFERENCES Product_Table(ProductID) ON DELETE CASCADE
);

-- Insert Records

INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, SubTotal) VALUES
(1, 101, 1, 1, 55000.00),
(2, 102, 2, 2, 50000.00),
(3, 103, 3, 3, 3600.00),
(4, 104, 4, 2, 1400.00),
(5, 105, 5, 1, 15000.00),
(7, 107, 7, 1, 12000.00),
(8, 108, 8, 4, 1400.00),
(9, 109, 9, 2, 5000.00),
(11, 112, 11, 1, 22000.00),
(12, 113, 12, 2, 6000.00),
(13, 114, 13, 1, 5000.00),
(14, 115, 14, 2, 13000.00),
(15, 101, 15, 5, 4000.00);

-- Operetions

SELECT * FROM OrderDetails WHERE OrderID = 105;

SELECT SUM(SubTotal) AS Total_Revenue FROM OrderDetails;

SELECT ProductID, SUM(Quantity) AS Total_Quantity_Ordered FROM OrderDetails GROUP BY ProductID ORDER BY Total_Quantity_Ordered DESC LIMIT 3;

SELECT COUNT(*) AS Times_Sold FROM OrderDetails WHERE ProductID = 1;

