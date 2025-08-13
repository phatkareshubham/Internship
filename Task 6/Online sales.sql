CREATE TABLE online_sales (
    transaction_id INT PRIMARY KEY,
    date DATE,
    product_category TEXT,
    product_name TEXT,
    units_sold INT,
    unit_price NUMERIC(10,2),
    total_revenue NUMERIC(10,2),
    region TEXT,
    payment_method TEXT
);

select * from online_sales;


SELECT
    EXTRACT(YEAR FROM date) AS order_year,
    EXTRACT(MONTH FROM date) AS order_month,
    SUM(total_revenue) AS total_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM
    online_sales
GROUP BY
    order_year,
    order_month
ORDER BY
    order_year,
    order_month;


##Limit to Specific Year
SELECT
    EXTRACT(YEAR FROM date) AS order_year,
    EXTRACT(MONTH FROM date) AS order_month,
    SUM(total_revenue) AS total_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM
    online_sales
WHERE
    EXTRACT(YEAR FROM date) = 2023
GROUP BY
    order_year,
    order_month
ORDER BY
    order_year,
    order_month;


SELECT
    EXTRACT(YEAR FROM date) AS order_year,
    EXTRACT(MONTH FROM date) AS order_month,
    SUM(total_revenue) AS total_revenue
FROM
    online_sales
GROUP BY
    order_year,
    order_month
ORDER BY
    total_revenue DESC
LIMIT 3;



SELECT
    EXTRACT(YEAR FROM date) AS order_year,
    EXTRACT(MONTH FROM date) AS order_month,
    product_category,
    SUM(total_revenue) AS total_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM
    online_sales
GROUP BY
    order_year,
    order_month,
    product_category
ORDER BY
    order_year,
    order_month,
    total_revenue DESC;


SELECT
    EXTRACT(YEAR FROM date) AS order_year,        
    EXTRACT(MONTH FROM date) AS order_month,       
    SUM(total_revenue) AS total_revenue,                 
    COUNT(DISTINCT transaction_id) AS order_volume      
FROM
    online_sales
WHERE
    EXTRACT(YEAR FROM date) = 2023                 
GROUP BY
    EXTRACT(YEAR FROM date),                       
    EXTRACT(MONTH FROM date)                       
ORDER BY
    order_year,                                         
    order_month;                                         


