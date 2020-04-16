-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT Category.CategoryName, Product.ProductName
FROM Product
JOIN Category
ON Product.CategoryId = Category.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT [Order].id, Shipper.CompanyName
FROM [Order]
JOIN Shipper
ON [Order].ShipVia = Shipper.Id
WHERE [Order].OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT Product.ProductName, OrderDetail.Quantity
FROM [Order] 
JOIN OrderDetail 
ON [Order].id = OrderDetail.OrderId
JOIN Product 
ON OrderDetail.ProductId=Product.Id
WHERE [Order].Id = 10251
ORDER BY Product.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT [Order].Id, Customer.CompanyName, Employee.LastName
FROM [Order]
JOIN Customer
ON [Order].CustomerId = Customer.Id
JOIN Employee
ON [Order].EmployeeId = Employee.id;

--STRETCH

--   Displays CategoryName and a new column called Count that shows how many products are in each category. Shows 8 records.
SELECT Categories.CategoryName, (SELECT COUNT(CategoryId) 
FROM Products 
WHERE CategoryId = Categories.CategoryId) AS 'Count'
FROM Categories;

--   Display OrderID and a column called ItemCount that shows the total number of products placed on the order. Shows 196 records.
SELECT Orders.OrderID, (SELECT COUNT(ProductID) 
FROM OrderDetails 
WHERE OrderID = Orders.OrderID) AS 'ItemCount'
FROM Orders;