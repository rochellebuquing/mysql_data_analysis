OLIST BRAZILIAN E-COMMERCE DATA ANALYSIS
Overview
This project analyzes the Olist Brazilian E-Commerce Dataset from Kaggle, a real-world marketplace dataset containing customer purchases, product information, payments, and order details from a Brazilian online retail platform.
The analysis combines 5 relational tables:
•	orders: Order tracking, timestamp data, and transaction statuses.
•	order_items: Item counts, pricing details, and product IDs per transaction.
•	order_payments: Total transaction payment values and payment methods.
•	products: Mapping of product IDs to product category names.
•	customers: Mapping of transaction-level customer_id keys to individual account customer_unique_id keys.

Date Range: September 2016 – October 2018
Data Quality Notes
•	customer_unique_id was used instead of transaction-level customer_id to accurately track individual customers and repeat purchases. 
•	Records with missing product category labels were excluded from category-level rankings. 
•	Revenue analysis was based on product sales values from the available order data. 
________________________________________
Business Questions
1.	Who are the top 10 customers by total amount spent? 
2.	What is the monthly revenue trend across the dataset? 
3.	What is the month-over-month (MoM) change in revenue? 
4.	Which product categories generate the most revenue? 
5.	What are the top 3 products within each category ranked by revenue? 
6.	How can customers be segmented into Low, Medium, and High Spend tiers? 
7.	How many customers are repeat buyers versus one-time buyers? 
8.	What percentage of total revenue comes from the top product category? 
________________________________________

Insight Summary
Severe Retention Gap
The customer retention analysis found that 96.9% of customers (93,098 buyers) made only one purchase, while only 3.1% (2,997 buyers) made repeat purchases (Query Result 7). This indicates a significant opportunity to improve customer retention and increase customer lifetime value.

Strong Seasonal Demand
Monthly revenue peaked at $1,194,882.80 in November 2017, representing a $415,204.92 month-over-month increase (Query Result 3). This indicates that seasonal shopping periods and promotional events have a significant impact on sales performance.

High-Value Customers Drive Revenue
Customer segmentation found that approximately 10% of customers belong to the High Spend Tier (≥$300) while generating approximately 42% of total revenue (Query Result 6). This shows that a relatively small customer segment contributes a disproportionately large share of marketplace sales.

Diversified Revenue Structure
Cama_mesa_banho or bed_table_bath was the highest-revenue category, generating $1,712,553.67, or 10.7% of total revenue (Query Result 4). Since no single category dominates the marketplace, revenue is relatively diversified across product categories.
________________________________________
Key Findings
The Olist marketplace generated approximately $16 million in total revenue during the analysis period. Revenue grew significantly over time, reaching its highest monthly value of $1.19 million in November 2017.
Customer analysis revealed 96,095 unique customers with an average spend of $160.99. Approximately 70% of customers were classified as Low Spend, 20% as Medium Spend, and 10% as High Spend.
The largest business challenge is customer retention, with 96.9% of buyers making only one purchase. At the same time, high-value customers contribute a substantial share of revenue, creating an opportunity for targeted retention and loyalty strategies.
Product revenue was led by Cama_mesa_banho or bed_table_bath ($1.71M), followed by beleza_saude or beauty_ health ($1.66M)** and **informatica_acessorios or IT accessories ($1.59M). The top category represented only 10.7% of total revenue, indicating a relatively diversified product mix.
________________________________________
Strategic Recommendations
1.	Improve Customer Retention: Deploy targeted 30-day email and cross-sell campaigns to address the 93,098 one-time buyers (Query Result 7) and encourage first-time customers to make repeat purchases. 
2.	Establish a High-Tier VIP Program: Provide dedicated support, bundling incentives, and loyalty rewards for High-Tier customers (≥$300), who represent approximately 10% of customers but generate ~42% of total revenue (Query Result 6). 
3.	Plan for Seasonal Demand: Increase inventory and marketing capacity ahead of peak periods to capture the +$415,204.92 November revenue increase (Query Result 3), while adjusting December spending and inventory based on the observed post-peak decline. 
________________________________________
Tools & Skills
Tools
•	MySQL 
•	DataGrip 
SQL Skills
•	Common Table Expressions (CTEs) 
•	Window Functions 
•	Aggregate Functions 
•	Conditional Logic 
•	Relational Joins 
•	Data Cleaning 
•	Revenue Analysis 
•	Customer Segmentation 
•	Product Ranking 



