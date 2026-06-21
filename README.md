# Week3_AnalystLab_African_Task
SQL business analytics project using Chinook + sales dataset to uncover insights on customers, revenue, products, and employee performance.
🚀 Project Overview

This project showcases real-world business data analysis using SQL on two datasets:

- 🎵 Chinook Database – A digital music store (customers, invoices, employees, albums, tracks)
- 🛒 Sales Dataset – Retail sales performance data (customers, products, revenue, orders)


# 1. Chinook Music Store Analysis

## Revenue Overview:

* **Revenue Metrics:** Total store revenue across all transactions stands at **$2,328.60**, with an average lifetime customer expenditure value of **$39.47**.

## High-Value Customers:
* 14 customers spent more than $40, showing strong repeat or premium buying behavior. Top customers include Helena Holý ($49.62) and Richard Cunningham ($47.62).

## Product Performance:
* By quantity, “Minha Historia” was the most purchased album with 27 units sold.  
* By revenue, TV series box sets performed best, especially “Battlestar Galactica (Classic), Season 1” ($35.82) and “The Office, Season 3” ($31.84).

## Top Artist Performance:
* Rock and Heavy Metal dominate sales. Iron Maiden is the highest-earning artist with $138.60 in total sales.

## Sales Team Performance Ranking:
Using SQL RANK() OVER, sales representatives were ranked based on total revenue generated:  
* Jane Peacock: $833.04 (Rank 1)  
* Margaret Park: $775.40 (Rank 2)  
* Steve Johnson: $720.16 (Rank 3)

---

# 2. Global Sales Dataset Analysis

## Overall Business Performance:
* Total confirmed shipped orders generated $9,291,501.08 in revenue.

## Key Growth Drivers:
Only two product lines performed far above the average:  
* Classic Cars: $3,919,615.66  
* Vintage Cars: $1,903,150.84  

## Top Business Clients:
- **Euro Shopping Channel (Spain)**
  - Revenue: **$912,294.11**
  - Orders: 259
  - Items: 9,327

- **Mini Gifts Distributors Ltd. (USA)**
  - Revenue: **$654,858.06**
  - Orders: 180
  - Items: 6,366
---

# 🛠️ SQL Techniques Used

* Multi-table Joins: Combined multiple tables using INNER JOIN to connect customers, invoices, products, and artists.  
* Subqueries: Used nested queries to calculate averages and aggregated metrics.  
* Window Functions: Used RANK() OVER (ORDER BY SUM(Sales) DESC) to rank employees and customers without losing row-level detail.  
* Data Filtering & Grouping: Applied WHERE, GROUP BY, HAVING, and ORDER BY to focus on high-value insights and remove low-impact data.

## 📌 Tools Used
- SQL (SQL Server(SSMS))
- Data exploration & aggregation
- Business intelligence queries

---

## 📈 Outcome
This project demonstrates how SQL can be used to transform raw transactional data into actionable business insights for decision-making.
