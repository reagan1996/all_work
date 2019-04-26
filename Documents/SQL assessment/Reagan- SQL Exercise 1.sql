--Exercise 1

USE [Northwind];
--Apply this line before running any code for Exercise 1, so the sql serve knows which database to use.

--Question 1.1

SELECT
	  CustomerID AS 'Customer ID',
	  CompanyName AS 'Company Name',
	  [Address] + ', ' + City + ', ' + PostalCode + ', ' + Country AS 'Address'
--Concatenate all the address fields into one column
FROM Customers
WHERE City IN ('Paris', 'London');

--Question 1.2

SELECT
	  ProductName AS 'Products Stored In Bottles'
FROM Products
WHERE QuantityPerUnit LIKE '%bottle%';
--Select only products that have bottle in it's desription for quantity per unit

--Question 1.3

SELECT
	  p.ProductName AS 'Products Stored In Bottles',
	  s.CompanyName AS 'Supplier Name',
	  s.Country
FROM Products p
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
--Relate the products and their suppliers
WHERE QuantityPerUnit LIKE '%bottle%';

--Question 1.4

SELECT
	  c.CategoryName AS 'Category Name',
	  COUNT(*) AS 'Number of Products'
--Show the Category Name and count the number of products in each category
FROM Categories c
INNER JOIN Products p ON p.CategoryID = c.CategoryID
--Relate the products with the category names
GROUP BY c.CategoryName
ORDER BY [Number of Products] DESC;
--Show the categories with the most products first

--Question 1.5

SELECT
	  TitleOfCourtesy + ' ' + FirstName + ' ' + LastName AS 'Employee Name',
--Display Employee Names in full e.g. Mr. Reagan Prince
	  City AS 'City of Residence'
FROM Employees
WHERE Country = 'UK';

--Question 1.6

SELECT
	  r.RegionDescription AS 'Sales Region',
	  FORMAT(SUM(od.UnitPrice*od.Quantity*(1-od.Discount)), 'N2') AS 'Total Sales'
--Format the total sales to show only 2 decimal places, and separate thounsands by commas
FROM [Order Details] od
INNER JOIN Orders o ON od.OrderID = o.OrderID
INNER JOIN EmployeeTerritories et ON o.EmployeeID = et.EmployeeID
INNER JOIN Territories t ON et.TerritoryID = t.TerritoryID
INNER JOIN Region r ON t.RegionID = r.RegionID
--Join 5 tables together to link the sales details and the regions each sale occured in
GROUP BY r.RegionDescription
HAVING SUM(od.UnitPrice*od.Quantity*(1-od.Discount)) > 1000000;
--Only show the regions with total sales greater than 1000000

--Question 1.7

SELECT
	  COUNT(*) AS 'Number of Orders'
--Count the number of orders ...
FROM Orders
WHERE Freight > 100
	  AND ShipCountry IN ('UK', 'USA');
--... where the freight is greater than 100 and the Ship Country is either UK or USA

--Question 1.8

SELECT
	  TOP 1 OrderID AS 'Order ID',
--Show only the top order number
	  FORMAT(SUM(UnitPrice*Quantity*Discount),'N2') AS 'Discount Amount'
FROM [Order Details]
GROUP BY OrderID
ORDER BY SUM(UnitPrice*Quantity*Discount) DESC;
--Calculate the sum of the amount of discount taken from each order,
--then order the IDs by this amount