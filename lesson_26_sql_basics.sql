
-- ==========================================
-- SalesSense AI
-- Lesson 26: SQL Basics
-- ==========================================

-- 1. Select our database
USE SalesSenseAI;
GO

-- 2. Create the Sales table
-- Run this only once when creating the table.
-- CREATE TABLE Sales (
--     Product VARCHAR(50),
--     Sales INT,
--     Profit INT
-- );

-- 3. Insert the five sales records
-- Run this only once to avoid duplicate records.
-- INSERT INTO Sales (Product, Sales, Profit)
-- VALUES
--     ('Toy car', 150, 50),
--     ('Teddy bear', 250, 80),
--     ('Toy ball', 100, 30),
--     ('Toy car', 200, 70),
--     ('Teddy bear', 150, 40);

-- 4. Display all records
SELECT *
FROM Sales;

-- 5. Select specific columns
SELECT Product, Sales
FROM Sales;

-- 6. Filter records using WHERE
SELECT *
FROM Sales
WHERE Profit > 50;

-- 7. Find sales below 200
SELECT *
FROM Sales
WHERE Sales < 200;

-- 8. Sort sales from highest to lowest
SELECT *
FROM Sales
ORDER BY Sales DESC;

-- 9. Sort sales from lowest to highest
SELECT *
FROM Sales
ORDER BY Sales ASC;

-- 10. Calculate total sales
SELECT SUM(Sales) AS Total_Sales
FROM Sales;

-- 11. Calculate average sales
SELECT AVG(Sales) AS Average_Sales
FROM Sales;

-- 12. Count total records
SELECT COUNT(*) AS Total_Records
FROM Sales;

-- 13. Calculate total profit
SELECT SUM(Profit) AS Total_Profit
FROM Sales;

-- 14. Calculate sales for each product
SELECT
    Product,
    SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Product;

-- 15. Calculate sales and profit for each product
SELECT
    Product,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM Sales
GROUP BY Product;

-- 16. Rank products by total sales
SELECT
    Product,
    SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Product
ORDER BY SUM(Sales) DESC;

-- 17. Rank products by total profit
SELECT
    Product,
    SUM(Profit) AS Total_Profit
FROM Sales
GROUP BY Product
ORDER BY SUM(Profit) DESC;
