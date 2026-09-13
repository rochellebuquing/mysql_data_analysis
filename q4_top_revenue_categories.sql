use olist;

-- Which product categories generate the most revenue?
SELECT
    p.product_category_name AS category_name,
    ROUND(SUM(op.payment_value), 2) AS total_revenue,
    COUNT(DISTINCT oi.order_id) AS total_orders
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
JOIN order_payments op
    ON oi.order_id = op.order_id
GROUP BY p.product_category_name
ORDER BY total_revenue DESC;