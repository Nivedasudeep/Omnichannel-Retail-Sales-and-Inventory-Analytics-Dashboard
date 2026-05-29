-- Total Revenue
SELECT ROUND(SUM(sales)::numeric, 2) AS total_revenue
FROM retail_sales;

-- Total Profit
SELECT ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM retail_sales;

-- Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM retail_sales;

-- Sales by Category
SELECT category,
       ROUND(SUM(sales)::numeric, 2) AS revenue
FROM retail_sales
GROUP BY category
ORDER BY revenue DESC;

-- Profit by Category
SELECT category,
       ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM retail_sales
GROUP BY category
ORDER BY total_profit DESC;

-- Sales by Region
SELECT region,
       ROUND(SUM(sales)::numeric, 2) AS revenue
FROM retail_sales
GROUP BY region
ORDER BY revenue DESC;

-- Top 10 Products
SELECT product_name,
       ROUND(SUM(sales)::numeric, 2) AS revenue
FROM retail_sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;

-- Monthly Sales Trend
SELECT month,
       ROUND(SUM(sales)::numeric, 2) AS revenue
FROM retail_sales
GROUP BY month
ORDER BY month;

-- Most Ordered Products
SELECT product_name,
       SUM(quantity) AS total_quantity
FROM retail_sales
GROUP BY product_name
ORDER BY total_quantity DESC
LIMIT 10;

-- Weekend vs Weekday Sales
SELECT day_name,
       ROUND(SUM(sales)::numeric, 2) AS revenue
FROM retail_sales
GROUP BY day_name
ORDER BY revenue DESC;