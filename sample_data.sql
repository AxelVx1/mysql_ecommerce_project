-- Sample data for the Customers table
INSERT INTO Customers (FirstName, LastName, Email, Phone, Address, City, State, PostalCode, Country)
VALUES 
('John', 'Smith', 'john@example.com', '555-1234', '123 Elm St', 'New York', 'NY', '10001', 'USA'),
('Jane', 'Doe', 'jane@example.com', '333-3333', '200 First Av', 'San Francisco', 'CA', '30003', 'USA'),
('Mike', 'Johnson', 'mike@example.com', '555-4321', '789 Pine St', 'Chicago', 'IL', '60601', 'USA'),
('Emily', 'Davis', 'emily@example.com', '555-8765', '321 Maple St', 'Houston', 'TX', '77001', 'USA'),
('Michael', 'Brown', 'michael@example.com', '555-9876', '654 Cedar St', 'Miami', 'FL', '33101', 'USA');

-- Sample data for the Categories table
INSERT INTO Categories (CategoryName)
VALUES ('Electronics'), ('Clothing'), ('Home Appliances'), ('Books'), ('Toys');

-- Sample data for the Products table
INSERT INTO Products (ProductName, Description, Price, StockQuantity, CategoryID)
VALUES
('Laptop', '15-inch, 256GB SSD, 8GB RAM', 1200.00, 10, 1),  -- Electronics
('Smartphone', '6-inch screen, 64GB storage', 800.00, 15, 1),  -- Electronics
('T-shirt', 'Cotton, Large', 20.00, 50, 2),  -- Clothing
('Blender', '600W, 5-speed', 55.00, 25, 3),  -- Home Appliances
('Harry Potter Book', 'Fantasy novel, hardcover', 15.00, 100, 4),  -- Books
('Toy Car', 'Remote control car, 1:16 scale', 35.00, 40, 5);  -- Toys

-- Sample data for the Orders table
INSERT INTO Orders (CustomerID, OrderDate, OrderTotal, PaymentMethod, ShippingAddress, ShippingStatus)
VALUES
(1, '2024-01-10 10:30:00', 1200.00, 'Credit Card', '123 Elm St, New York, NY, 10001', 'Shipped'),  -- John Smith
(2, '2024-01-11 12:00:00', 820.00, 'PayPal', '456 Oak St, Los Angeles, CA, 90001', 'Processing'),  -- Jane Doe
(3, '2024-01-12 15:45:00', 35.00, 'Debit Card', '789 Pine St, Chicago, IL, 60601', 'Delivered'),  -- Mike Johnson
(4, '2024-01-13 11:20:00', 75.00, 'Credit Card', '321 Maple St, Houston, TX, 77001', 'Shipped'),  -- Emily Davis
(5, '2024-01-14 09:10:00', 15.00, 'Credit Card', '654 Cedar St, Miami, FL, 33101', 'Pending');  -- Michael Brown

-- Sample data for the OrderItems table
INSERT INTO OrderItems (OrderID, ProductID, Quantity, UnitPrice)
VALUES
(1, 1, 1, 1200.00),  -- John Smith ordered 1 Laptop (OrderID 1, ProductID 1)
(2, 2, 1, 800.00),  -- Jane Doe ordered 1 Smartphone (OrderID 2, ProductID 2)
(2, 3, 1, 20.00),  -- Jane Doe also ordered 1 T-shirt (OrderID 2, ProductID 3)
(3, 6, 1, 35.00),  -- Mike Johnson ordered 1 Toy Car (OrderID 3, ProductID 6)
(4, 4, 1, 55.00),  -- Emily Davis ordered 1 Blender (OrderID 4, ProductID 4)
(4, 3, 1, 20.00),  -- Emily Davis also ordered 1 T-shirt (OrderID 4, ProductID 3)
(5, 5, 1, 15.00); -- Michael Brown ordered 1 Harry Potter Book (OrderID 5, ProductID 3)

-- Sample data for the Payments table
INSERT INTO Payments (OrderID, PaymentDate, PaymentAmount, PaymentMethod)
VALUES
(1, '2024-01-10 11:00:00', 1200.00, 'Credit Card'),  -- Payment for John Smith's order
(2, '2024-01-11 12:30:00', 820.00, 'PayPal'),  -- Payment for Jane Does's order
(3, '2024-01-12 16:00:00', 35.00, 'Debit Card'),  -- Payment for Mike Johnson's order
(4, '2024-01-13 11:45:00', 75.00, 'Credit Card'),  -- Payment for Emily Davis's order
(5, '2024-01-14 09:30:00', 150.00, 'Credit Card');  -- Payment for Michael Brown's order 
