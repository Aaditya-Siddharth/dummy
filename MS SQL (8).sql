-- SQL Query to retrieve names and emails of all customers 

Select (firstname+' '+lastname) as Name, email from Customers

-- List of all orders with their order dates and corresponding customer names

Select orderid, orderdate, (Select (firstname+' '+lastname) from Customers as c where o.customerID = c.CustomerID ) from Orders as o

-- Insert new customer record

Insert into Customers(firstname, lastname, email, address) values ('Surendar','Duraisamy','Surendardurai@gmail.com','Chitra veedhi, Kannapanagar, Coimbatore')

-- Increasing the price of products by 10%

update Products SET price = price+(Products.price *0.1)
Select * from Products

Select * from Orders

DECLARE @OrderID INT;
PRINT 'Enter OrderID to delete:';
-- Manually set OrderID here
SET @OrderID = 11;  -- Replace with desired OrderID

BEGIN TRANSACTION;
DELETE FROM OrderDetails WHERE OrderID = @OrderID;
DELETE FROM Orders WHERE OrderID = @OrderID;
COMMIT TRANSACTION;
