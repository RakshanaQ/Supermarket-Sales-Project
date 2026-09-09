SELECT customer_type, gender_customer, ROUND(SUM(CAST(REPLACE(REPLACE(revenue, '?', ''), ' ', '') AS REAL)), 2) AS total_revenue
FROM supermarket_sales
GROUP BY customer_type, gender_customer
ORDER BY total_revenue DESC;
