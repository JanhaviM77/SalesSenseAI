
-- ==========================================
-- SalesSense AI
-- Lesson 34: SQL Views
-- ==========================================


-- 1. CREATE VIEW
-- Create a View showing sales greater than 150.

GO

CREATE VIEW HighSalesView AS
SELECT *
FROM Sales
WHERE Sales > 150;

GO

-- Retrieve data from the View.

SELECT *
FROM HighSalesView;


-- 2. WHERE condition with a View

SELECT *
FROM HighSalesView
WHERE Profit > 70;


-- 3. CREATE VIEW with selected columns

GO

CREATE VIEW ProductSalesView AS
SELECT
    Product,
    Sales
FROM Sales;

GO

SELECT *
FROM ProductSalesView;


-- 4. ALTER VIEW
-- Modify the existing View to show sales >= 200.

GO

ALTER VIEW ProductSalesView AS
SELECT
    Product,
    Sales
FROM Sales
WHERE Sales >= 200;

GO

SELECT *
FROM ProductSalesView;


-- 5. DROP VIEW
-- Delete the View, not the original table.

DROP VIEW ProductSalesView;


-- 6. CREATE VIEW using Products table

GO

CREATE VIEW ToyCategoryView AS
SELECT
    Product_Name,
    Category
FROM Products;

GO

SELECT *
FROM ToyCategoryView;


-- 7. DROP VIEW
-- Remove the remaining Views after practice.

DROP VIEW HighSalesView;

DROP VIEW ToyCategoryView;


-- ==========================================
-- END OF LESSON 34
-- ==========================================
