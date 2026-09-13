use olist;


-- What is the monthly revenue trend across the dataset?
SELECT
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS month,
    ROUND(SUM(op.payment_value), 2) AS monthly_revenue
FROM orders AS o
JOIN order_payments AS op ON o.order_id = op.order_id
GROUP BY month
ORDER BY month;