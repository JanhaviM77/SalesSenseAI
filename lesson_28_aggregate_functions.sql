
-- ============================================
-- SalesSense AI - Lesson 28
-- SQL Aggregate Functions and Grouping
-- Database: SalesSenseAI
-- Table: Sales
-- Columns: Product, Sales, Profit
-- ============================================

-- STEP 1: COUNT()
-- Count total records in Sales table

SELECT COUNT(*) AS Total_Records
FROM Sales;


-- STEP 2: COUNT() with GROUP BY
-- Count records for each product

SELECT Product, COUNT(*) AS Total_Orders
FROM Sales
GROUP BY Product;


-- STEP 3: SUM() with GROUP BY
-- Calculate total sales for each product

SELECT Product, SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Product;


-- STEP 4: AVG() with GROUP BY
-- Calculate average sales for each product

SELECT Product, AVG(Sales) AS Average_Sales
FROM Sales
GROUP BY Product;


-- STEP 5: MAX()
-- Find the highest profit

SELECT MAX(Profit) AS Highest_Profit
FROM Sales;


-- STEP 6: MIN()
-- Find the lowest sales value

SELECT MIN(Sales) AS Lowest_Sales
FROM Sales;


-- STEP 7: HAVING
-- Display products with total sales greater than 200

SELECT Product, SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Product
HAVING SUM(Sales) > 200;


-- STEP 8: GROUP BY, HAVING and ORDER BY
-- Sort products by total sales, highest first

SELECT Product, SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Product
HAVING SUM(Sales) > 200
ORDER BY Total_Sales DESC;


-- FINAL CHALLENGE
-- Find average profit for each product
-- Display only products with average profit > 40

SELECT Product, AVG(Profit) AS Ave_profit
FROM Sales
GROUP BY Product
HAVING AVG(Profit) > 40;


-- ============================================
-- END OF LESSON 28
-- ============================================
