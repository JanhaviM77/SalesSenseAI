
-- ==========================================
-- SalesSense AI
-- Lesson 32: SQL Window Functions
-- ==========================================

-- 1. SUM() OVER()
-- Shows total sales while keeping every row.

SELECT
    Product,
    Sales,
    SUM(Sales) OVER() AS Total_Sales
FROM Sales;


-- 2. SUM() with PARTITION BY
-- Calculates total sales separately for each product.

SELECT
    Product,
    Sales,
    SUM(Sales) OVER(PARTITION BY Product) AS Product_Total
FROM Sales;


-- 3. AVG() with PARTITION BY
-- Calculates average sales for each product.

SELECT
    Product,
    Sales,
    AVG(Sales) OVER(PARTITION BY Product) AS Average_Product_Sales
FROM Sales;


-- 4. ROW_NUMBER()
-- Assigns a unique row number based on sales.

SELECT
    Product,
    Sales,
    ROW_NUMBER() OVER(ORDER BY Sales DESC) AS Row_Num
FROM Sales;


-- 5. RANK()
-- Equal sales receive the same rank.
-- The next rank is skipped.

SELECT
    Product,
    Sales,
    RANK() OVER(ORDER BY Sales DESC) AS Sales_Rank
FROM Sales;


-- 6. DENSE_RANK()
-- Equal sales receive the same rank.
-- The next rank is not skipped.

SELECT
    Product,
    Sales,
    DENSE_RANK() OVER(ORDER BY Sales DESC) AS Sales_Rank
FROM Sales;


-- 7. Comparing RANK() and DENSE_RANK()

SELECT
    Product,
    Sales,
    RANK() OVER(ORDER BY Sales DESC) AS Rank_Value,
    DENSE_RANK() OVER(ORDER BY Sales DESC) AS Dense_Rank_Value
FROM Sales;


-- 8. ROW_NUMBER() with PARTITION BY
-- Numbers rows separately for each product.

SELECT
    Product,
    Sales,
    ROW_NUMBER() OVER(
        PARTITION BY Product
        ORDER BY Sales DESC
    ) AS Product_Row
FROM Sales;


-- 9. Highest-selling record for each product
-- Uses a subquery and ROW_NUMBER().

SELECT Product, Sales, Profit
FROM (
    SELECT
        Product,
        Sales,
        Profit,
        ROW_NUMBER() OVER(
            PARTITION BY Product
            ORDER BY Sales DESC
        ) AS Row_Num
    FROM Sales
) AS RankedSales
WHERE Row_Num = 1;
