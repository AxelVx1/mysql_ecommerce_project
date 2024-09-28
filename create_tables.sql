-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    Address VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    PostalCode VARCHAR(10),
    Country VARCHAR(50)
);

-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Description TEXT,
    Price FLOAT,
    StockQuantity INT,
    CategoryID INT,
    CONSTRAINT FK_Category FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- Create Categories table
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(100)
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATETIME,
    OrderTotal FLOAT,
    PaymentMethod VARCHAR(50),
    ShippingAddress VARCHAR(255),
    ShippingStatus VARCHAR(50),
    CONSTRAINT FK_Customer FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create OrderItems table (Connects Orders and Products)
CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice FLOAT,
    CONSTRAINT FK_Order FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    CONSTRAINT FK_Product FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Create Payments table
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    PaymentDate DATETIME,
    PaymentAmount FLOAT,
    PaymentMethod VARCHAR(50),
    CONSTRAINT FK_OrderPayment FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
