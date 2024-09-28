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

Below is the QuickDBD schema, which illustrates the relationships between the tables:

![E-Commerce ERD]()

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
```

### 2. Total Sales per Customer

```sql
SELECT Customers.FirstName, Customers.LastName, SUM(Orders.OrderTotal) AS TotalSpent
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Customers.CustomerID
ORDER BY TotalSpent DESC;
```

### 3. Monthly Sales Report (This query generates a monthly breakdown of sales. For this specific sample data, the total is calculated for one month, but it can be applied to larger datasets to identify sales trends across different time periods.)

```sql
SELECT MONTH(OrderDate) AS Month, YEAR(OrderDate) AS Year, 
       SUM(OrderTotal) AS TotalSales
FROM Orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY Year, Month;
```

## Conclusion

Throughout the creation of this E-Commerce Sales and Inventory Management System, I gained valuable insights into both **database design** and **SQL query optimization**. Here are a few lessons I learned while completing this project:

### Database Normalization
Designing a database requires planning to ensure that the tables are properly normalized. This means reducing data redundancy to make sure that the relationships between entities (like Customers, Orders, and Products) are defined using foreign keys. This structure made querying the data more efficient.

### The Power of Data Analysis
I realized how powerful SQL can be for analyzing business data. By using simple functions like `SUM()` and `COUNT()`, I was able to extract meaningful insights, such as top-selling products and monthly sales trends. These types of queries are essential for businesses looking to make data-driven decisions.

### The Value of Sample Data
Inserting randomized sample data gave me a much better understanding of how real-world data might look in this system. It also allowed me to stress test the database with various queries and edge cases.

### Future Improvements & Conclusion

I believe this project can be improved further with the addition of interactive dashboards. By using tools like Tableau and Power BI, I can create visualizations that provide real-time insights into the data. These dashboards would streamline the data analysis process by allowing users to interact with visual data directly, without needing to write SQL queries.
This addition would enhance the project's usability, turning it into a more dynamic business intelligence tool where data-driven decisions can be made quickly and effectively. Integrating dashboards would also make it easier to share insights across teams and departments.

This project was an excellent learning experience in database design, query building, and data analysis. It has laid a strong foundation for future projects that involve building scalable, data-driven applications.


