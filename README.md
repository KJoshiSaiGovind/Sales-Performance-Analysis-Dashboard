# Sales Performance Analysis Dashboard

## Project Overview

The Sales Performance Analysis Dashboard is a data analytics project developed using Python, Pandas, SQL, and Matplotlib. The project analyzes retail sales data to uncover business insights related to product performance, regional sales trends, customer purchasing behavior, and overall profitability.

The dataset contains 9,994 sales records and includes information about orders, customers, products, regions, sales, discounts, and profits. The project demonstrates the complete data analytics workflow, including data cleaning, exploratory data analysis (EDA), SQL-based business intelligence queries, and data visualization.

---

## Objectives

* Analyze sales performance across different regions.
* Identify top-performing and low-performing products.
* Measure overall sales and profitability.
* Discover monthly sales trends.
* Analyze customer purchasing patterns.
* Store and query data using MySQL.
* Generate visual reports to support business decision-making.

---

## Technologies Used

### Programming Languages

* Python
* SQL

### Libraries

* Pandas
* NumPy
* Matplotlib
* SQLAlchemy
* PyMySQL

### Database

* MySQL

### Development Environment

* Jupyter Notebook
* Visual Studio Code

---

## Dataset Information

The dataset contains the following information:

* Order Details
* Customer Information
* Product Information
* Regional Information
* Sales Revenue
* Profit
* Quantity Sold
* Discounts Applied

### Dataset Size

* Total Records: 9,994
* Total Columns: 21

---

## Project Workflow

### 1. Data Collection

The sales dataset was loaded from a CSV file using Pandas.

### 2. Data Cleaning

Performed:

* Missing value analysis
* Duplicate removal
* Date conversion
* Column standardization

### 3. Exploratory Data Analysis (EDA)

Analyzed:

* Total Sales
* Total Profit
* Product Performance
* Customer Performance
* Regional Performance
* Monthly Sales Trends

### 4. SQL Database Integration

* Created MySQL database
* Uploaded cleaned data into MySQL
* Executed analytical SQL queries
* Generated business intelligence reports

### 5. Data Visualization

Created visualizations for:

* Monthly Sales Trend
* Regional Sales Analysis
* Top Product Performance

---

## Key Results

### Total Sales

```text
2,297,200.86
```

### Total Profit

```text
286,397.02
```

### Highest Revenue Region

```text
West Region
```

### Lowest Revenue Region

```text
South Region
```

### Best Selling Product

```text
Canon imageCLASS 2200 Advanced Copier
```

### Highest Sales Month

```text
November
```

---

## SQL Analysis Performed

The following business queries were implemented:

* Total Sales Analysis
* Total Profit Analysis
* Top Products by Sales
* Top Products by Profit
* Region-wise Sales
* Region-wise Profit
* Category-wise Sales
* Category-wise Profit
* Customer-wise Sales
* Customer-wise Profit
* Monthly Sales Trends
* Monthly Profit Trends
* Product Quantity Analysis
* Loss-Making Product Analysis

---

## Project Structure

```text
Sales_Performance_Dashboard/
│
├── data/
│   └── sales.csv
│
├── notebooks/
│   └── sales_analysis.ipynb
│
├── database.py
│
├── queries.sql
│
├── requirements.txt
│
├── reports/
│   ├── monthly_sales.png
│   ├── region_sales.png
│   └── top_products.png
│
└── README.md
```

---

## How to Run the Project

### Clone Repository

```bash
git clone <repository-url>
cd Sales_Performance_Dashboard
```

### Install Dependencies

```bash
pip install -r requirements.txt
```

### Run Data Analysis

```bash
python sales_analysis.py
```

### Upload Data to MySQL

```bash
python database.py
```

### Execute SQL Queries

Open MySQL and run:

```sql
USE sales_dashboard;
```

Execute the queries stored in:

```text
queries.sql
```

---

## Skills Demonstrated

* Data Cleaning
* Exploratory Data Analysis (EDA)
* Data Visualization
* SQL Querying
* Database Management
* Business Analytics
* Python Programming
* Pandas Data Manipulation
* MySQL Integration
* Reporting and Insight Generation

---

## Future Enhancements

* Interactive Power BI Dashboard
* Streamlit Web Dashboard
* Automated Reporting System
* Sales Forecasting using Machine Learning
* Customer Segmentation Analysis
* Real-Time Data Integration

---

## Author

Karri Joshi Sai Govind

B.Tech – Computer Science & Data Science

Anil Neerukonda Institute of Technology and Sciences

GitHub: https://github.com/KJoshiSaiGovind

LinkedIn: https://www.linkedin.com/in/k-joshi-sai-govind-3a21b1293/
