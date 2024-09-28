# mysql_ecommerce_project

# E-Commerce Sales and Inventory Management System

## Project Overview
In this project I create an **E-Commerce Sales and Inventory Management System** designed to track customers, products, orders, payments, and inventory. I used **QuickDBD** to first visualize what I wanted the database schema to look like and then built it using **MySQL** in **Visual Studio** to simulate an e-commerce backend.

The project uses key database design concepts like normalization, table relationships, and the use of SQL to query and analyze the data.

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

### 1. Customers
**Description**: Stores customer information like names, emails, and addresses.

Sample Data:
