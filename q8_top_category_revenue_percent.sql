use olist;

-- What percent of total revenue comes from the top category?

WITH category_revenue AS (
    SELECT
        p.product_category_name AS category_name,
        SUM(op.payment_value) AS category_revenue
    FROM order_items oi
    JOIN products p ON oi.product_id = p.product_id
    JOIN order_payments op ON oi.order_id = op.order_id
    WHERE p.product_category_name IS NOT NULL
    GROUP BY p.product_category_name
)
SELECT
    category_name,
    ROUND(category_revenue, 2) AS category_revenue,
    ROUND(SUM(category_revenue) OVER (), 2) AS global_total_revenue,

    -- Percent of Total Calculation: (Category Revenue / Global Revenue) * 100
    ROUND(
        (category_revenue / SUM(category_revenue) OVER ()) * 100,
        2
    ) AS pct_of_total_revenue

FROM category_revenue
ORDER BY category_revenue DESC
LIMIT 1;