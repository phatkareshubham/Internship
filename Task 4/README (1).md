
# Ecommerce SQL Data Analysis

This project is part of my **Data Analyst Internship**. The objective is to analyze ecommerce data using **SQL Server Management Studio (SSMS)** and gain hands-on experience in querying structured data.

---

##  Task Overview

**Task 4: SQL for Data Analysis**  
- Use SQL to extract meaningful insights from ecommerce data.
- Perform queries such as filtering, aggregating, joining, and subqueries.
- Use SQL Server to run and visualize query results.

---

## Dataset Used

**AdventureWorks Sample Database** by Microsoft  
- Source: [Download AdventureWorks](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure)
- Contains realistic ecommerce-like data including:
  - Products
  - Orders
  - Customers
  - Employees
  - Territories
  - Shipments

---

##  Skills Applied

- SQL querying (SELECT, WHERE, GROUP BY, ORDER BY, HAVING)
- JOIN operations (INNER, LEFT, RIGHT)
- Subqueries
- Aggregations (SUM, AVG, COUNT)
- Filtering with WHERE clause
- Creating meaningful business insights

---

## Key Queries and Insights

###  1. Total Revenue by Product
```sql
SELECT P.Name, SUM(OD.LineTotal) AS Revenue
FROM Sales.SalesOrderDetail OD
JOIN Production.Product P ON OD.ProductID = P.ProductID
GROUP BY P.Name
ORDER BY Revenue DESC;
```

###  2. Top 10 Best-Selling Products by Quantity
```sql
SELECT TOP 10 P.Name, SUM(OD.OrderQty) AS QuantitySold
FROM Sales.SalesOrderDetail OD
JOIN Production.Product P ON OD.ProductID = P.ProductID
GROUP BY P.Name
ORDER BY QuantitySold DESC;
```

###  3. Monthly Revenue Trend
```sql
SELECT FORMAT(OrderDate, 'yyyy-MM') AS Month, SUM(TotalDue) AS Revenue
FROM Sales.SalesOrderHeader
GROUP BY FORMAT(OrderDate, 'yyyy-MM')
ORDER BY Month;
```

---

##  Learning Outcome

- Learned to navigate and query a normalized database
- Practiced real-world ecommerce data analysis
- Improved SQL skills in filtering, aggregating, and joining tables

---
