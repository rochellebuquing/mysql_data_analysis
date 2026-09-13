use olist;

-- Segment customers into spend tiers (Low / Medium / High)

WITH customer_spending AS (
    SELECT
        c.customer_id,
        ROUND(SUM(op.payment_value), 2) AS total_spent
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    JOIN order_payments op ON o.order_id = op.order_id
    GROUP BY c.customer_id
)
SELECT
    customer_id,
    total_spent,
    CASE
        WHEN total_spent >= 300 THEN 'High'
        WHEN total_spent >= 160 THEN 'Medium'
        ELSE 'Low'
    END AS spend_tier
FROM customer_spending
ORDER BY total_spent DESC;

