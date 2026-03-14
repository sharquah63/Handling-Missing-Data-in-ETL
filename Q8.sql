CREATE TABLE customers (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
    Monthly_Sales DECIMAL(10,2),
    Income DECIMAL(10,2),
    Region VARCHAR(20)
);

INSERT INTO customers (Customer_ID, Name, City, Monthly_Sales, Income, Region) VALUES
(101, 'Rahul Mehta', 'Mumbai', 12000, 65000, 'West'),
(102, 'Neha Singh', 'Delhi', NULL, NULL, 'North'),
(103, 'Anjali Rao', 'Bengaluru', NULL, NULL, 'South'),
(104, 'Amit Verma', 'Pune', 18000, 58000, NULL),
(105, 'Pooja Das', 'Kolkata', 14000, NULL, 'East'),
(106, 'Suresh Iyer', 'Chennai', 15000, 72000, 'South'),
(107, 'Karan Shah', 'Ahmedabad', NULL, 61000, 'West'),
(108, 'Riya Kapoor', 'Jaipur', 16000, 69000, 'North');

SELECT * FROM customers;

SELECT * FROM customers WHERE Region IS NULL;

DELETE FROM customers WHERE Region IS NULL;

SELECT * FROM customers;

SELECT 8 - COUNT(*) AS Records_Lost FROM customers;