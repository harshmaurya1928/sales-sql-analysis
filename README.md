# Ecommerce Sales Analysis — SQL

## Introduction

This project is an Ecommerce Sales Analysis project built using SQL to analyze customer, product, and order data and generate meaningful business insights.

The project focuses on analyzing sales performance, customer purchasing behavior, product performance, revenue trends, and geographical revenue contribution.

The objective was to use SQL to transform raw ecommerce data into useful insights that can support data-driven business decisions.

## Project Objective

The main objectives of this project are to:

- Analyze overall ecommerce sales performance.

- Calculate total revenue generated.

- Identify the best-selling products.

- Analyze revenue across different product categories.

- Identify the highest-spending customers.
Analyze monthly sales trends.
- Calculate Average Order Value (AOV).

- Identify customers spending above the average.
- Rank products based on revenue.
- Identify the highest-selling product in each category.
- Analyze city-wise revenue contribution.
- Practice advanced SQL techniques used in real-world data analysis.

## Database Structure

The project uses an EcommerceDB database containing three main tables:

## Customers

Contains information about customers.

### Columns:

- CustomerID
- CustomerName
- City

## Products

Contains information about products.

### Columns:

- ProductID
- ProductName
- Category
- Price

## Orders

Contains information about customer orders.

### Columns:

- OrderID
- CustomerID
- ProductID
- Quantity
- OrderDate

### Database Schema

![Revenue Analysis](/images/schema.png)

### Sample Data

![Sample Data](/images/data.png)

## Analysis Performed
1. **Total Revenue**

   Calculated the total revenue generated from all ecommerce orders.

2. **Revenue by Product Category**

   Analyzed which product categories contribute the most revenue.

3. **Top 3 Customers by Spending**

   Identified the customers who spent the most money.

4. **Best-Selling Products**

   Determined which products have the highest sales quantity.

5. **Monthly Sales Trend**

   Analyzed how sales and revenue changed over time.

6. **Average Order Value**

   Calculated the average amount spent per order.

7. **Customers Spending Above Average**

   Identified customers whose total spending was higher than the average customer spending.

8. **Product Revenue Ranking**

   Ranked products according to their generated revenue using SQL window functions.

9. **Highest-Selling Product in Each Category**

   Identified the top-performing product within each product category.

10. **City-Wise Revenue Contribution**

    Analyzed the contribution of different cities to overall revenue.

### SQL Analysis Queries

   ![SQL Analysis Queries](/images/analysis1.png)

   ![SQL Analysis Queries](/images/analysis1.png)


### Skills & Technologies
- SQL
- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- Aggregate Functions
- SUM()
- AVG()
- COUNT()
- MAX()
- MIN()
- CASE WHEN
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- Date Functions
- Data Aggregation
- Filtering and Sorting
- Business-oriented data analysis
- Database
- Database creation
- Table creation
- Primary/foreign key concepts
- Data insertion
- Relational database concepts
- Tools
- MySQL
- MySQL Workbench

## Key SQL Concepts Demonstrated

This project demonstrates the ability to:

Combine data from multiple tables using JOINs.
Aggregate and summarize data using GROUP BY.
Filter aggregated results using HAVING.
Perform conditional analysis using CASE WHEN.
Use subqueries for advanced analysis.
Rank records using window functions.
Analyze trends using date-based queries.
Convert business questions into SQL queries.

## Key Insights

The analysis helps answer important business questions such as:

- Which products generate the most revenue?
- Which category performs the best?
- Who are the highest-value customers?
- How are sales changing month by month?
- Which cities contribute the most revenue?
- Which products perform best within each category?
- How much does the average customer spend?

## Learning Outcomes

Through this project, I gained practical experience in:

- Writing SQL queries for data analysis.
- Working with relational databases.
- Joining multiple tables.
- Performing aggregations and calculations.
- Using SQL window functions.
- Solving real-world business problems using SQL.
- Turning raw data into actionable insights.

## Future Improvements

Possible improvements for this project include:

Connecting the SQL database to Power BI.
Creating an interactive ecommerce sales dashboard.
Adding more customer and product-level analysis.
Performing customer segmentation.
Adding profit and margin analysis.
Building more advanced time-series analysis.


## Project Highlights

- Project Type: Data Analytics / SQL Project
- Database: EcommerceDB
- Tools: MySQL, MySQL Workbench
- Focus: Sales & Customer Analysis
- Level: Intermediate SQL