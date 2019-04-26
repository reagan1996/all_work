--Exercise 5

USE [Northwind];
--Apply this line before running any code for Exercise 5, so the sql serve knows which database to use.

--Question 5.1

SELECT
	  e.FirstName + ' ' + e.LastName AS 'Employee Name',
	  b.FirstName + ' ' + b.LastName AS 'Reports To'
FROM Employees e
LEFT JOIN Employees b ON e.ReportsTo = b.EmployeeID;
--Relate the Reports to ID of each employee 'e' to the Employee ID of there boss 'b'

--Question 5.2

SELECT
	  s.CompanyName AS 'Supplier Name',
	  ROUND(SUM(od.UnitPrice*od.Quantity*(1-od.Discount)),2) AS 'Total Sales'
FROM [Order Details] od
INNER JOIN Products p ON od.ProductID = p.ProductID
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
--Relate total sales and the suppliers
GROUP BY s.CompanyName
HAVING SUM(od.UnitPrice*od.Quantity*(1-od.Discount)) > 10000
ORDER BY 'Total Sales' DESC;

--Question 5.3

SELECT
	  TOP 10 c.CompanyName AS 'Top 10 Customers YTD',
--Display the top 10 Company Names
	  FORMAT(SUM(od.UnitPrice*od.Quantity*(1-od.Discount)),'N2') AS 'Total Sales YTD'
--Format the total sales YTD with 2 decimal places, and the thousands separated by commas
FROM [Order Details] od
INNER JOIN Orders o ON od.OrderID = o.OrderID
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
--Relate the sales details to the company names
WHERE YEAR(o.ShippedDate) =
	(SELECT MAX(YEAR(ShippedDate)) FROM Orders)
--Use a subquery to identify the year of the latest order
GROUP BY c.CompanyName
ORDER BY SUM(od.UnitPrice*od.Quantity*(1-od.Discount)) DESC;

--Question 5.4

SELECT
	  YEAR(OrderDate) AS 'Year',
	  MONTH(OrderDate) AS 'Month',
	  FORMAT(AVG(CAST(DATEDIFF(D, OrderDate, ShippedDate) AS DECIMAL)),'N2') AS 'Average Ship Time (Days)'
--Use CAST keyword to show the values as decimals, so the average is exact,
--then use format to show only 2 decimal places
FROM Orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
--group by the year of the order first, then group by month
ORDER BY 'Year';