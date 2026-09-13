use olist;

-- How many customers are repeat buyers vs one-time buyers?
WITH customer_order_counts AS (
    SELECT
        c.customer_unique_id,
        COUNT(o.order_id) AS total_orders
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_unique_id
)
SELECT
    CASE
        WHEN total_orders > 1 THEN 'Repeat Buyer'
        ELSE 'One-Time Buyer'
    END AS buyer_type,
    COUNT(customer_unique_id) AS total_customers
FROM customer_order_counts
GROUP BY 1;
