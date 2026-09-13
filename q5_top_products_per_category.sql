use olist;

-- Rank the top 3 products within each category by revenue.
WITH product_revenue AS (
    SELECT
        p.product_category_name AS category,
        p.product_id,
        ROUND(SUM(op.payment_value), 2) AS total_revenue,

        -- Rank products within each category based on total revenue
        ROW_NUMBER() OVER (
            PARTITION BY p.product_category_name
            ORDER BY SUM(op.payment_value) DESC
        ) AS revenue_rank

    FROM products p
    JOIN order_items oi ON p.product_id = oi.product_id
    JOIN order_payments op ON oi.order_id = op.order_id
    WHERE p.product_category_name IS NOT NULL
    GROUP BY p.product_category_name, p.product_id
)
SELECT
    category,
    product_id,
    total_revenue,
    revenue_rank
FROM product_revenue
WHERE revenue_rank <= 3
ORDER BY category ASC, revenue_rank ASC;


