# LESSON 30 – SQL SUBQUERIES
-- Project: SalesSense AI
-- Database: SQL Server

-- 1. Find sales greater than average sales
SELECT *
FROM Sales
WHERE Sales > (
    SELECT AVG(Sales)
    FROM Sales
);

-- 2. Find profits greater than average profit
SELECT *
FROM Sales
WHERE Profit > (
    SELECT AVG(Profit)
    FROM Sales
);

-- 3. Find the highest sales record
SELECT *
FROM Sales
WHERE Sales = (
    SELECT MAX(Sales)
    FROM Sales
);

-- 4. Find the lowest sales value
SELECT MIN(Sales)
FROM Sales;

-- 5. Find the record with the lowest profit
SELECT Product, Profit
FROM Sales
WHERE Profit = (
    SELECT MIN(Profit)
    FROM Sales
);

-- 6. Find products appearing more than once
SELECT Product
FROM Sales
GROUP BY Product
HAVING COUNT(*) > 1;

-- 7. Find all sales records for products appearing more than once
SELECT *
FROM Sales
WHERE Product IN (
    SELECT Product
    FROM Sales
    GROUP BY Product
    HAVING COUNT(*) > 1
);

-- 8. Final challenge: Sales greater than average sales
SELECT *
FROM Sales
WHERE Sales > (
    SELECT AVG(Sales)
    FROM Sales
);

-- END OF LESSON 30