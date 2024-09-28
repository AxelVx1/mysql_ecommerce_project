# mysql_ecommerce_project

# E-Commerce Sales and Inventory Management System

## Project Overview
In this project I create an **E-Commerce Sales and Inventory Management System** designed to track customers, products, orders, payments, and inventory. I used **QuickDBD** to first visualize what I wanted the database schema to look like and then built it using **MySQL** in **Visual Studio** to simulate an e-commerce backend.

The project uses key database design concepts like normalization, table relationships, and SQL to query and analyze the data.

### Key Features:
- **Customer Management**: Keep track of customer information including names, emails, addresses, and phone numbers.
- **Product Catalog**: Manage a list of products with their categories, descriptions, prices, and stock quantities.
- **Order Processing**: Track customer orders, including order details and quantities.
- **Payments Tracking**: Record payments for orders.
- **Inventory Management**: Monitor stock levels and track product sales.

---

## Database Design
The database schema consists of the following tables:

- **Customers**: Stores customer information.
- **Categories**: Organizes products into different groupings.
- **Products**: Lists products available for sale and tracks their stock levels.
- **Orders**: Contains customer orders and order-related details.
- **OrderItems**: Links orders to the products being purchased (resolves the many-to-many relationship between `Orders` and `Products`).
- **Payments**: Records payments for customer orders.

---

## Tables and Sample Data

The SQL script for creating the database tables can be found [here](create_tables.sql).

The sample data used to populate the database can be found [here](insert_sample_data.sql). This file contains the data for customers, products, categories, orders, order items, and payments, allowing for testing and analysis.

## Example SQL Queries

Below are some example SQL queries that provide insightful analysis of the data in the e-commerce system.

### 1. Top-Selling Products
This query retrieves the top-selling products by total sales (based on the quantity sold and unit price).

```sql
SELECT Products.ProductName, SUM(OrderItems.Quantity) AS TotalQuantitySold, 
       SUM(OrderItems.Quantity * OrderItems.UnitPrice) AS TotalSales
FROM OrderItems
JOIN Products ON OrderItems.ProductID = Products.ProductID
GROUP BY Products.ProductID
ORDER BY TotalSales DESC;

### 2. Total Sales per Customer

,,,sql
SELECT Customers.FirstName, Customers.LastName, SUM(Orders.OrderTotal) AS TotalSpent
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Customers.CustomerID
ORDER BY TotalSpent DESC;

### 3. Monthly Sales Report (For this sample data the value is a total of all sales since they all happened in a one month period)

,,,sql
SELECT MONTH(OrderDate) AS Month, YEAR(OrderDate) AS Year, 
       SUM(OrderTotal) AS TotalSales
FROM Orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY Year, Month;

