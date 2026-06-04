# 🛒 E-Commerce Sales Analysis

## About This Project

This project was created to analyze e-commerce sales data and understand customer behavior, product performance, payment trends, and overall business performance.

I used SQL for data preparation and analysis, Python (Pandas) for KPI calculations and automation, and Power BI for creating an interactive dashboard. The goal was to simulate a real-world business scenario and derive meaningful insights from the data.

---

## Tools Used

* MySQL
* Python
* Pandas
* SQLAlchemy
* Power BI
* GitHub

---

## Project Workflow

### 1. Data Preparation

* Imported datasets into MySQL.
* Created separate tables for customers, orders, products, and payments.
* Cleaned duplicate and inconsistent records.
* Joined multiple tables to create a final analysis dataset.

### 2. SQL Analysis

Using SQL, I answered business-related questions such as:

* What is the total revenue?
* Which categories generate the highest sales?
* Who are the top customers?
* Which payment methods are used most often?
* Which products generate the highest revenue?
* How does revenue vary over time?

### 3. Python Analysis

Using Pandas, I calculated:

* Total Revenue
* Average Order Value
* Total Orders
* Total Customers
* Top Categories by Revenue
* Top Spending Customers
* Payment Success Rate
* Revenue by City
* Category-wise Quantity Sold
* Brand Performance Analysis

### 4. Automation

I created a Python script that connects to MySQL, extracts data from the final joined table, and automatically exports the data into CSV format for reporting and dashboarding purposes.

### 5. Dashboard Creation

The cleaned dataset was used in Power BI to build an interactive dashboard that highlights:

* Sales Performance
* Customer Insights
* Product Performance
* Category Analysis
* Payment Trends
* Key Business KPIs

---

## Project Structure

```text
Ecommerce-Analysis/
│
├── Data/
│   ├── final_joined_table.csv
│   └── kpi_report.csv
│
├── SQL/
│   ├── 01_database_creation.sql
│   ├── 02_customers_table.sql
│   ├── 03_orders_table.sql
│   ├── 04_products_table.sql
│   ├── 05_payments_table.sql
│   ├── 06_data_cleaning.sql
│   └── 07_analysis_queries.sql
│
├── Python/
│   ├── ecommerce_analysis.py
│   └── automation.py
│
├── PowerBI/
│   └── Ecommerce_Dashboard.pbix
│
├── Images/
│   └── dashboard_screenshot.png
│
└── README.md
```

---
## Dashboard Preview

![Dashboard](./Images/ecommerce_dashboard.jpg)

---

## Key Learnings

Through this project, I gained hands-on experience in:

* Writing SQL queries for business analysis
* Data cleaning and transformation
* Performing exploratory data analysis using Pandas
* Automating data extraction workflows
* Building dashboards in Power BI
* Presenting data-driven insights for decision-making

---

## Author

**Priyadharshini**

Aspiring Data Analyst with interests in SQL, Python, Power BI, Tableau, and Data Visualization.
