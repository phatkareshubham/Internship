# Task 6 – Sales Trend Analysis Using Aggregations

##  Objective
Analyze **monthly revenue** and **order volume** from the `online_sales` dataset using SQL aggregate functions.

##  Tools Used
- **PostgreSQL** (queries executed in pgAdmin 4)
- **GitHub** for task submission

##  Dataset
**Table Name:** `online_sales`  
**Columns:**
- `transaction_id` – Unique ID for each order  
- `order_date` – Date of the order (DATE type)  
- `product_category` – Category of the product sold  
- `product_name` – Name of the product  
- `units_sold` – Number of units sold  
- `unit_price` – Price per unit  
- `total_revenue` – Total revenue from the order  
- `region` – Region of the sale  
- `payment_method` – Payment type used  

---

##  Queries

###  Monthly Revenue & Order Volume (All Years)

SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(total_revenue) AS total_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM
    online_sales
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    order_year,
    order_month;
```

---

###  Monthly Revenue & Order Volume (Specific Year: 2023)

SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(total_revenue) AS total_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM
    online_sales
WHERE
    EXTRACT(YEAR FROM order_date) = 2023
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    order_year,
    order_month;
```

---

###  Top 3 Months by Revenue

SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(total_revenue) AS total_revenue
FROM
    online_sales
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    total_revenue DESC
LIMIT 3;
```

---

###  Monthly Revenue by Product Category

SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    product_category,
    SUM(total_revenue) AS total_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM
    online_sales
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date),
    product_category
ORDER BY
    order_year,
    order_month,
    total_revenue DESC;
```

---

###  Top 3 Product Categories by Revenue (Per Year)

SELECT
    order_year,
    product_category,
    total_revenue
FROM (
    SELECT
        EXTRACT(YEAR FROM order_date) AS order_year,
        product_category,
        SUM(total_revenue) AS total_revenue,
        ROW_NUMBER() OVER (
            PARTITION BY EXTRACT(YEAR FROM order_date)
            ORDER BY SUM(total_revenue) DESC
        ) AS rn
    FROM
        online_sales
    GROUP BY
        order_year,
        product_category
) ranked
WHERE rn <= 3
ORDER BY
    order_year,
    total_revenue DESC;
```

---

##  Observations
- **Seasonal Trends:** Monthly sales volume and revenue vary significantly, with peak months showing higher product demand.
- **Top Months:** The top 3 months by revenue highlight seasonal demand or promotions.
- **Category Insights:** Some product categories consistently dominate sales every year.
- **Yearly Trends:** Year-over-year changes in revenue can indicate growth or decline in business performance.

---

##  Author
*Shubham Milind Phatkare* – Data Analyst Intern
