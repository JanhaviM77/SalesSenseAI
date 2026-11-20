
-- ==========================================
-- SalesSense AI
-- Lesson 33: SQL Common Table Expressions
-- ==========================================


-- 1. Basic CTE using Sales table

WITH SalesData AS (
    SELECT *
    FROM Sales
)
SELECT *
FROM SalesData;


-- 2. CTE using Products table

WITH ProductData AS (
    SELECT *
    FROM Products
)
SELECT *
FROM ProductData;


-- 3. CTE with WHERE condition

WITH ProductData AS (
    SELECT *
    FROM Products
    WHERE Category = 'Toys'
)
SELECT *
FROM ProductData;


-- 4. CTE with WHERE and ORDER BY

WITH HighSales AS (
    SELECT *
    FROM Sales
    WHERE Sales >= 200
)
SELECT *
FROM HighSales
ORDER BY Sales DESC;


-- 5. CTE with GROUP BY and SUM()

WITH ProductTotals AS (
    SELECT
        Product,
        SUM(Sales) AS Total_Sales
    FROM Sales
    GROUP BY Product
)
SELECT *
FROM ProductTotals;


-- 6. CTE with GROUP BY and HAVING

WITH ProductTotals AS (
    SELECT
        Product,
        SUM(Sales) AS Total_Sales
    FROM Sales
    GROUP BY Product
    HAVING SUM(Sales) > 300
)
SELECT *
FROM ProductTotals;


-- 7. CTE with LEFT JOIN

WITH ProductTotals AS (
    SELECT
        Product_ID,
        SUM(Sales) AS Total_Sales
    FROM Sales
    GROUP BY Product_ID
)
SELECT
    Products.Product_Name,
    Products.Category,
    ProductTotals.Total_Sales
FROM Products
LEFT JOIN ProductTotals
ON Products.Product_ID = ProductTotals.Product_ID;


-- 8. Using multiple CTEs

WITH SalesData AS (
    SELECT *
    FROM Sales
),
ProductData AS (
    SELECT *
    FROM Products
)
SELECT *
FROM SalesData;


-- 9. Final challenge:
-- Product names and total sales greater than 300

WITH ProductTotals AS (
    SELECT
        Product_ID,
        SUM(Sales) AS Total_Sales
    FROM Sales
    GROUP BY Product_ID
)
SELECT
    Products.Product_Name,
    ProductTotals.Total_Sales
FROM Products
INNER JOIN ProductTotals
ON Products.Product_ID = ProductTotals.Product_ID
WHERE ProductTotals.Total_Sales > 300;


-- ==========================================
-- END OF LESSON 33
-- ==========================================
