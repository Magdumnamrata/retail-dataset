-- create database
CREATE DATABASE retail_analytics;

use retail_analytics;

-- select data from retail trasaction csv file
select *from retail_transactions_dataset;

-- total cost or revenue of data
SELECT SUM(Total_Cost) AS total_sales
FROM retail_transactions_dataset;

SELECT AVG(Total_Cost) AS avg_order_value
FROM retail_transactions_dataset;

SELECT product,
SUM(total_items) AS total_sold
FROM retail_transactions_dataset
GROUP BY product
ORDER BY total_sold DESC;

SELECT city,
SUM(Total_Cost) AS total_revenue
FROM retail_transactions_dataset
GROUP BY city
ORDER BY total_revenue DESC;

SELECT MONTH(date) AS month,
SUM(Total_Cost) AS monthly_sales
FROM retail_transactions_dataset
GROUP BY month
ORDER BY month;

SELECT DAYNAME(date) AS day,
SUM(Total_Cost) AS sales
FROM retail_transactions_dataset
GROUP BY day;
