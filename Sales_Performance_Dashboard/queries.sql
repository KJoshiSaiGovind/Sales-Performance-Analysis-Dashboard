CREATE DATABASE sales_dashboard;

USE sales_dashboard;

CREATE TABLE sales (
    row_id INT,
    order_id VARCHAR(50),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(50),
    customer_name VARCHAR(255),
    segment VARCHAR(50),
    country VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code INT,
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(100),
    sub_category VARCHAR(100),
    product_name VARCHAR(255),
    sales DECIMAL(12,4),
    quantity INT,
    discount DECIMAL(5,2),
    profit DECIMAL(12,4)
);

SELECT SUM(sales) AS total_sales
FROM sales;

SELECT SUM(profit) AS total_profit
FROM sales;

SELECT
    product_name,
    SUM(sales) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

SELECT
    product_name,
    SUM(profit) AS total_profit
FROM sales
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

SELECT
    region,
    SUM(sales) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;

SELECT
    region,
    SUM(profit) AS total_profit
FROM sales
GROUP BY region
ORDER BY total_profit DESC;

SELECT
    category,
    SUM(sales) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;

SELECT
    category,
    SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC;

SELECT
    sub_category,
    SUM(sales) AS total_sales
FROM sales
GROUP BY sub_category
ORDER BY total_sales DESC;

SELECT
    MONTH(order_date) AS month,
    SUM(sales) AS total_sales
FROM sales
GROUP BY MONTH(order_date)
ORDER BY month;

SELECT
    MONTH(order_date) AS month,
    SUM(profit) AS total_profit
FROM sales
GROUP BY MONTH(order_date)
ORDER BY month;

SELECT
    customer_name,
    SUM(sales) AS total_sales
FROM sales
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

SELECT
    customer_name,
    SUM(profit) AS total_profit
FROM sales
GROUP BY customer_name
ORDER BY total_profit DESC
LIMIT 10;

SELECT
    product_name,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY product_name
ORDER BY total_quantity DESC
LIMIT 10;

SELECT
    category,
    AVG(discount) AS avg_discount
FROM sales
GROUP BY category;

SELECT
    state,
    SUM(sales) AS total_sales
FROM sales
GROUP BY state
ORDER BY total_sales DESC
LIMIT 10;

SELECT
    city,
    SUM(sales) AS total_sales
FROM sales
GROUP BY city
ORDER BY total_sales DESC
LIMIT 10;

SELECT
    product_name,
    SUM(profit) AS total_profit
FROM sales
GROUP BY product_name
HAVING total_profit < 0
ORDER BY total_profit;