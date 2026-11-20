
-- ==========================================
-- LESSON 35: SQL STORED PROCEDURES
-- Project: SalesSense AI
-- Database: SQL Server
-- ==========================================


-- STEP 1: Remove old practice procedures
-- This allows us to run the complete file again.

DROP PROCEDURE IF EXISTS GetAllSales;
DROP PROCEDURE IF EXISTS GetHighSales;
DROP PROCEDURE IF EXISTS GetSalesAbove;
DROP PROCEDURE IF EXISTS GetSalesByCriteria;
DROP PROCEDURE IF EXISTS GetProductByName;
GO


-- STEP 2: Create a basic Stored Procedure

CREATE PROCEDURE GetAllSales
AS
BEGIN
    SELECT *
    FROM Sales;
END;
GO

-- Execute the procedure
EXEC GetAllSales;
GO


-- STEP 3: Stored Procedure with WHERE

CREATE PROCEDURE GetHighSales
AS
BEGIN
    SELECT *
    FROM Sales
    WHERE Sales > 150;
END;
GO

EXEC GetHighSales;
GO


-- STEP 4: Stored Procedure with one parameter

CREATE PROCEDURE GetSalesAbove
    @MinSales INT
AS
BEGIN
    SELECT *
    FROM Sales
    WHERE Sales > @MinSales;
END;
GO

EXEC GetSalesAbove 150;
GO


-- STEP 5: Stored Procedure with multiple parameters

CREATE PROCEDURE GetSalesByCriteria
    @MinSales INT,
    @MinProfit INT
AS
BEGIN
    SELECT *
    FROM Sales
    WHERE Sales > @MinSales
    AND Profit > @MinProfit;
END;
GO

EXEC GetSalesByCriteria 100, 40;

EXEC GetSalesByCriteria 150, 60;
GO


-- STEP 6: ALTER an existing Stored Procedure

ALTER PROCEDURE GetSalesAbove
    @MinSales INT
AS
BEGIN
    SELECT *
    FROM Sales
    WHERE Sales > @MinSales
    ORDER BY Sales DESC;
END;
GO

EXEC GetSalesAbove 100;
GO


-- STEP 7: Stored Procedure with a text parameter

CREATE PROCEDURE GetProductByName
    @ProductName VARCHAR(100)
AS
BEGIN
    SELECT *
    FROM Sales
    WHERE Product = @ProductName;
END;
GO

EXEC GetProductByName 'Toy car';
GO


-- STEP 8: DROP a Stored Procedure

DROP PROCEDURE GetSalesAbove;
GO

-- GetSalesAbove has now been deleted.
-- Trying to execute it now will produce an error.


-- ==========================================
-- END OF LESSON 35
-- ==========================================
