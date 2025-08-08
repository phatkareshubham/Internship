--Total revenue by product

SELECT P.Name AS ProductName, SUM(SD.LineTotal) AS TotalRevenue
FROM Sales.SalesOrderDetail SD
JOIN Production.Product P ON SD.ProductID = P.ProductID
GROUP BY P.Name
ORDER BY TotalRevenue DESC;

USE AdventureWorks2022;
GO


-- Average order value by customer
SELECT C.CustomerID, AVG(SOH.TotalDue) AS AvgOrderValue
FROM Sales.SalesOrderHeader SOH
JOIN Sales.Customer C ON SOH.CustomerID = C.CustomerID
GROUP BY C.CustomerID;


-- Orders by sales territory
SELECT ST.Name AS Territory, COUNT(*) AS TotalOrders
FROM Sales.SalesOrderHeader SOH
JOIN Sales.SalesTerritory ST ON SOH.TerritoryID = ST.TerritoryID
GROUP BY ST.Name;


--Top 10 Selling Products by Quantity
SELECT TOP 10 
    P.Name AS ProductName, 
    SUM(SD.OrderQty) AS TotalQuantitySold
FROM Sales.SalesOrderDetail SD
JOIN Production.Product P ON SD.ProductID = P.ProductID
GROUP BY P.Name
ORDER BY TotalQuantitySold DESC;


--List all products priced over ₹1000
SELECT ProductID, Name, ListPrice
FROM Production.Product
WHERE ListPrice > 1000


--Monthly Revenue
SELECT 
    FORMAT(OrderDate, 'yyyy-MM') AS Month,
    SUM(TotalDue) AS MonthlyRevenue
FROM Sales.SalesOrderHeader
GROUP BY FORMAT(OrderDate, 'yyyy-MM')
ORDER BY Month;