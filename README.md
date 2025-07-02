# 📊Final Project - Retail Business Performance & Profitability Analysis

## 📝 Project Overview
This project focuses on analyzing transactional retail data to uncover **profit-draining categories**, optimize **inventory turnover**, and understand **seasonal sales behavior**.
It demonstrates a complete data analytics workflow using **SQL for data preparation**, **Python for advanced analysis**, and **Tableau for interactive visualization**.

---

## 🎯 Objectives
* Identify underperforming product sub-categories draining profit.
* Analyze the correlation between **inventory holding days** and **profitability**.
* Visualize monthly sales & profit trends to detect seasonality.
* Highlight overstocked items tying up working capital.
* Build an interactive Tableau dashboard to drive business decisions.

---

## 🛠 Tools & Technologies
| Tool                         | Purpose                                                                                 |
| ---------------------------- | --------------------------------------------------------------------------------------- |
| **MySQL**                    | Data cleaning & calculation of profit margins, monthly sales/profit.                    |
| **Python (Pandas, Seaborn)** | Data merging, correlation analysis, heatmaps, bar & line plots.                         |
| **Tableau**                  | Interactive dashboard with filters, KPI tiles, scatterplots, and profit margin visuals. |

---

## 🚀 Project Workflow
### 1️⃣ Data Preparation with SQL
* Imported transactional retail data into MySQL.
* Cleaned missing / null records.
* Calculated:
  * Profit margin by **category & sub-category**.
  * Monthly sales & profit trends.

> 📁 **SQL Files:**
> - [SQL Scripts](Final Project/Final Project (Superstore Sales SQL).sql)

---

### 2️⃣ Data Analysis with Python
* Used **Pandas** to merge sales, inventory, and category data.
* Computed correlation between `Inventory_Days` and `Profitability`:
  Correlation: Inventory_Days vs Profit = -0.01
* Visualized insights with **Seaborn**:
  * Heatmap of correlations
  * Line plot of sales & profit trends
  * Bar plot for top 10 profit-draining sub-categories

> 📁 **Python Notebook:**
> - [Python Notebook](Final Project/Final Project (Superstore Sales Python).ipynb)

---

### 3️⃣ Visualization with Tableau
* Developed an interactive dashboard with:
  * **Dual-axis line chart:** Sales & Profit over time.
  * **Bar chart:** Profit margin by category.
  * **Scatterplot:** Inventory Days vs Sales, colored by overstocked status.
  * **KPI tiles:** Total Sales, Avg Profit Margin, Avg Inventory Days, % Overstocked SKUs.
  * Filters for Region, Product Type, and Season.

> 🔗 **[View Tableau Dashboard on Tableau Public](Final Project/Final Project (Superstore Sales Tableau Dashboard).twbx)**

---

## 🔍 Key Insights

* Some sub-categories (like Tables & Binders) had **high sales but negative profit margins**, indicating discounting or supplier cost issues.
* Products with **Inventory Days > 40 and Profit < ₹500** formed **38% of SKUs**, tying up capital.
* Sales & profit spiked in **Q4**, signaling potential for strategic promotions.

---

## ✍️ How to Run This Project

### ⚙️ Prerequisites
* MySQL Server
* Python 3 (with pandas, seaborn, matplotlib)
* Tableau Desktop or Tableau Public

---

## 💡 Conclusion
This project provided deep insights into retail profitability, inventory management, and seasonality.
It enables stakeholders to:
* Trim overstocked, low-profit SKUs.
* Plan seasonal pricing strategies.
* Use live dashboards for agile, data-driven decisions.

---

## 🙌 Connect with Me
* 💼 [LinkedIn](https://linkedin.com/in/harshitavyas02)
* ✉️ [Email](mailto:vyasharshita24@gmail.com)
