# LESSON 31 – SQL CASE STATEMENTS
-- Project: SalesSense AI
-- Database: SQL Server

-- 1. Basic CASE WHEN - Profit categories
SELECT
    Product,
    Profit,
    CASE
        WHEN Profit >= 70 THEN 'High Profit'
        WHEN Profit >= 40 THEN 'Medium Profit'
        ELSE 'Low Profit'
    END AS Profit_Category
FROM Sales;

-- 2. CASE WHEN - Sales performance
SELECT
    Product,
    Sales,
    CASE
        WHEN Sales >= 250 THEN 'Excellent'
        WHEN Sales >= 150 THEN 'Good'
        ELSE 'Needs Improvement'
    END AS Sales_Performance
FROM Sales;

-- 3. CASE WHEN with AND
SELECT
    Product,
    Sales,
    Profit,
    CASE
        WHEN Sales >= 200 AND Profit >= 70
        THEN 'Best Performance'
        ELSE 'Normal Performance'
    END AS Performance
FROM Sales;

-- 4. CASE WHEN with OR
SELECT
    Product,
    Sales,
    Profit,
    CASE
        WHEN Sales >= 200 OR Profit >= 70
        THEN 'Good Performance'
        ELSE 'Normal Performance'
    END AS Performance
FROM Sales;

-- 5. Final challenge - Sales status
SELECT
    Product,
    Sales,
    CASE
        WHEN Sales >= 250 THEN 'Excellent'
        WHEN Sales >= 150 THEN 'Good'
        ELSE 'Poor'
    END AS Sales_Status
FROM Sales;

-- END OF LESSON 31