# 📊 E-Commerce Revenue Intelligence & Customer Behaviour Analysis

## 🧠 Project Overview

This project analyzes e-commerce sales data to identify key revenue drivers, customer behavior patterns, regional performance, and operational inefficiencies.

The analysis is performed using SQL, Python, Excel, and Power BI, simulating a real-world business scenario where leadership needs data-driven insights for decision-making.

---

## 🎯 Business Problem

The company is facing inconsistent revenue performance and needs to understand:

* Which products drive revenue
* Why some regions perform better than others
* Customer purchasing behavior
* Seasonal trends in revenue
* Risks due to product/customer dependency
* Impact of cancellations and returns

---

## 🛠️ Tools & Technologies

* SQL → Data cleaning & transformation
* Python (Pandas) → Data analysis
* Excel → KPI validation & reporting
* Power BI → Dashboard & visualization

---

## 📂 Project Structure

```
data/
  raw/            → raw dataset
  processed/      → cleaned data

sql/              → SQL scripts
python/           → analysis notebook
excel/            → Excel analysis
powerbi/          → dashboard file
images/           → screenshots
```

---

## 📊 Dashboard Overview

### Executive Dashboard

![Dashboard Overview](images/22_powerbi_executive_overview.png)

### Customer & Operational Insights

![Customer Insights](images/23_powerbi_customer_operational_insights.png)

---

## 📈 Key Metrics

* Total Revenue → ₹264M+
* Total Orders → 14,844
* Unique Customers → 401
* Average Order Value → ₹17,834
* Revenue per Customer → ₹660K
* Orders per Customer → 37

---

## 🔍 Key Insights

### 🔹 Revenue Drivers

Revenue is heavily driven by the Electronics category, contributing over ₹223M. The top 3 products (Laptop, Headphones, Phone) contribute around 65% of total revenue, indicating strong product concentration and dependency on a few high-performing products.

---

### 🔹 Regional Performance

North region leads with ₹89M+ revenue, while East is the lowest performer. This shows a clear imbalance in regional performance and highlights growth opportunities in underperforming regions through targeted strategies.

---

### 🔹 Customer Behavior

With 401 customers generating ₹264M+, the business shows strong repeat purchasing behavior with high AOV. However, top customers contribute only ~7% of revenue, indicating a relatively diversified customer base.

---

### 🔹 Time Trends

Revenue peaks in December and is lowest in April, showing strong seasonal patterns. This suggests opportunities for aligning marketing and inventory strategies with high-demand periods.

---

### 🔹 Operational Insights

Cancelled (5033) and returned (4856) orders are close to completed orders (4955), indicating operational inefficiencies. Improving product quality, delivery experience, and customer satisfaction can significantly improve conversion rates.

---

### 🔹 Business Risk

The business faces product and regional concentration risks. While customer dependency is low, reliance on a few products and regions, along with high cancellations/returns, may impact long-term growth.

---

## 💡 Business Recommendations

* Diversify product focus beyond top-performing items
* Invest in underperforming regions (especially East)
* Improve customer retention strategies
* Reduce cancellations and returns through operational improvements
* Align marketing campaigns with seasonal trends

---
## 📸 Additional Analysis

---

## 🔹 1. Raw Data & Data Quality Issues

These images highlight the real-world messy nature of the dataset before cleaning.

### Raw Dataset Snapshot

![Raw Data](images/01_raw_uncleaned_data.png)

### Data Integrity Issues (Nulls, Duplicates, Inconsistencies)

![Data Issues](images/02_data_integrity_issues.png)

### Dataset Size & Structure

![Dataset Shape](images/03_dataset_shape_metrics.png)

### Pre-Cleaning Data Summary

![Pre Cleaning Stats](images/04_pre_cleaning_stats.png)

---

## 🔹 2. SQL Data Cleaning & Transformation

This stage shows how raw data was transformed into analysis-ready format.

### Final Cleaned Table (orders_final)

![Cleaned Table](images/05_orders_final_table.png)

### Top Products (SQL Analysis)

![Top Products SQL](images/06_top_products.png)

### Top Customers (SQL Analysis)

![Top Customers SQL](images/07_top_customers.png)

### Revenue by Region (SQL)

![Region Revenue SQL](images/08_revenue_by_region.png)

### Monthly Revenue Trend (SQL)

![Monthly Trend SQL](images/09_monthly_revenue_trend.png)

---

## 🔹 3. Python Analysis (Pandas)

Python was used for deeper analysis and validation.

### Data Preview in Python

![DF Head](images/10_df_head.png)

### Filtering Completed Orders (Correct Revenue Logic)

![Completed Filter](images/11_completed_orders_filter.png)

### Top Products (Python)

![Top Products Python](images/12_top_products_python.png)

### Revenue by Region (Python)

![Region Python](images/13_revenue_by_region_python.png)

### Monthly Trend (Python)

![Monthly Python](images/14_monthly_trend_python.png)

### Customer Behavior Analysis

![Customer Behavior](images/15_customer_behavior.png)

### Revenue Trend Visualization

![Trend Plot](images/16_monthly_revenue_trend_plot.png)

---

## 🔹 4. Excel Analysis & Validation

Excel was used to validate KPIs and create quick business summaries.

### Revenue by Product (Excel Pivot)

![Excel Product](images/17_excel_revenue_by_product.png)

### Revenue by Region (Excel Pivot)

![Excel Region](images/18_excel_revenue_by_region.png)

### Order Status Distribution

![Excel Status](images/19_excel_order_status_distribution.png)

### Region vs Order Status Analysis

![Excel Region Status](images/20_excel_region_vs_status.png)

### Top Customers (Excel)

![Excel Customers](images/21_excel_top_customers.png)

---




## 🚀 Conclusion

This project demonstrates an end-to-end data analysis workflow, from raw messy data to business insights and dashboard reporting. It highlights how data-driven decision-making can improve revenue, reduce risk, and optimize business performance.

---
