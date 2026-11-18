# LESSON 29 – SQL JOINS
-- Project: SalesSense AI
-- Database: SQL Server

-- 1. Create Products table
CREATE TABLE Products (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Category VARCHAR(50)
);

-- 2. Insert products
INSERT INTO Products (Product_ID, Product_Name, Category)
VALUES
(1, 'Toy car', 'Toys'),
(2, 'Teddy bear', 'Soft toys'),
(3, 'Toy ball', 'Sports toys');

-- 3. Add Product_ID to Sales table
ALTER TABLE Sales
ADD Product_ID INT;

-- 4. Populate Product_ID using UPDATE with JOIN
UPDATE S
SET S.Product_ID = P.Product_ID
FROM Sales AS S
INNER JOIN Products AS P
ON S.Product = P.Product_Name;

-- 5. Verify Product_ID values
SELECT Product, Sales, Profit, Product_ID
FROM Sales;

-- 6. INNER JOIN – Only matching rows
SELECT
    Sales.Product,
    Sales.Sales,
    Sales.Profit,
    Products.Category
FROM Sales
INNER JOIN Products
ON Sales.Product_ID = Products.Product_ID;

-- 7. LEFT JOIN – All rows from Sales
SELECT
    Sales.Product,
    Sales.Sales,
    Products.Category
FROM Sales
LEFT JOIN Products
ON Sales.Product_ID = Products.Product_ID;

-- 8. RIGHT JOIN – All rows from Products
SELECT
    Sales.Product,
    Sales.Sales,
    Products.Product_Name,
    Products.Category
FROM Sales
RIGHT JOIN Products
ON Sales.Product_ID = Products.Product_ID;

-- 9. FULL OUTER JOIN – All rows from both tables
SELECT
    Sales.Product,
    Sales.Sales,
    Products.Product_Name,
    Products.Category
FROM Sales
FULL OUTER JOIN Products
ON Sales.Product_ID = Products.Product_ID;

-- 10. LEFT JOIN equivalent to RIGHT JOIN
-- All products with their matching sales
SELECT
    Products.Product_Name,
    Products.Category,
    Sales.Sales,
    Sales.Profit
FROM Products
LEFT JOIN Sales
ON Products.Product_ID = Sales.Product_ID;

-- END OF LESSON 29