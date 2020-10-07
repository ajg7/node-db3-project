-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT product.ProductName, category.categoryName FROM product JOIN category ON product.SupplierId = category.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT [order].id, shipper.CompanyName FROM [order] JOIN shipper on [order].ShipVia = shipper.Id WHERE [order].OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT Product.ProductName,OrderDetail.Quantity FROM OrderDetail JOIN Product ON OrderDetail.ProductId = Product.Id WHERE OrderId = 10251 ORDER BY Product.ProductName;


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.id, c.CompanyName, e.LastName
FROM [Order] AS o
JOIN Customer AS c
ON o.CustomerId = c.Id
JOIN Employee AS e
ON o.EmployeeId = e.Id