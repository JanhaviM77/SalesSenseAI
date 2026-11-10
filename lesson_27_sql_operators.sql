
-- ============================================
-- SalesSense AI — Lesson 27: SQL Operators
-- Topics: IN, NOT IN, BETWEEN, AND, OR
-- Database: SalesSenseAI
-- Table: Sales
-- Columns: Product, Sales, Profit
-- ============================================

-- 1. IN Operator
-- Select specific products

SELECT *
FROM Sales
WHERE Product IN ('Toy car', 'Teddy bear');


-- 2. NOT IN Operator
-- Exclude specific products

SELECT *
FROM Sales
WHERE Product NOT IN ('Toy ball');


-- 3. BETWEEN Operator
-- Select sales within a range (inclusive)

SELECT *
FROM Sales
WHERE Sales BETWEEN 150 AND 250;


-- 4. AND Operator
-- Both conditions must be true

SELECT *
FROM Sales
WHERE Sales BETWEEN 100 AND 200
AND Profit > 40;


-- 5. OR Operator
-- At least one condition must be true

SELECT *
FROM Sales
WHERE Product = 'Teddy bear'
OR Profit > 60;


-- 6. Combined SQL Operators
-- Exclude Toy ball, filter sales and profit

SELECT *
FROM Sales
WHERE Product NOT IN ('Toy ball')
AND Sales BETWEEN 150 AND 250
AND Profit > 40;


-- 7. Additional Practice
-- Sales between 150 and 200

SELECT *
FROM Sales
WHERE Product NOT IN ('Toy ball')
AND Sales BETWEEN 150 AND 200
AND Profit > 40;


-- ============================================
-- END OF LESSON 27
-- ============================================
