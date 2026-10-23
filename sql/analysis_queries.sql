USE olist_analytics;


-- =========================================================
-- QUERY 1: MONTHLY SALES PERFORMANCE
-- Purpose: Analyze monthly sales value, delivered orders,
-- items sold, and average item sales value per order.
-- =========================================================

SELECT
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS purchase_month,
    COUNT(DISTINCT o.order_id) AS delivered_orders,
    COUNT(*) AS item_count,
    ROUND(SUM(oi.price), 2) AS item_sales_value,
    ROUND(
        SUM(oi.price) / COUNT(DISTINCT o.order_id),
        2
    ) AS average_item_sales_value_per_order
FROM orders AS o
INNER JOIN order_items AS oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m')
ORDER BY purchase_month;


-- =========================================================
-- QUERY 2: DELIVERY PERFORMANCE
-- Purpose: Calculate total delivered orders with available
-- delivery dates, on-time orders, late orders, and the
-- on-time delivery rate.
-- =========================================================

SELECT
    COUNT(*) AS total_orders,

    SUM(
        CASE
            WHEN order_delivered_customer_date
                 <= order_estimated_delivery_date
            THEN 1
            ELSE 0
        END
    ) AS on_time_orders,

    SUM(
        CASE
            WHEN order_delivered_customer_date
                 > order_estimated_delivery_date
            THEN 1
            ELSE 0
        END
    ) AS late_orders,

    ROUND(
        SUM(
            CASE
                WHEN order_delivered_customer_date
                     <= order_estimated_delivery_date
                THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        4
    ) AS on_time_delivery_rate

FROM orders
WHERE order_delivered_customer_date IS NOT NULL
  AND order_estimated_delivery_date IS NOT NULL;


-- =========================================================
-- QUERY 3: REVIEW SCORES BY DELIVERY PERFORMANCE
-- Purpose: Compare average review scores for orders
-- delivered on time or early versus orders delivered late.
-- =========================================================

WITH Overall_Category AS (
    SELECT
        COUNT(*) AS grand_total
    FROM orders AS o
    INNER JOIN order_reviews AS ro
        ON o.order_id = ro.order_id
    WHERE o.order_delivered_customer_date IS NOT NULL
      AND o.order_estimated_delivery_date IS NOT NULL
)

SELECT
    CASE
        WHEN o.order_delivered_customer_date >
             o.order_estimated_delivery_date
        THEN 'Late'
        ELSE 'On time or early'
    END AS delivery_status,

    ROUND(AVG(ro.review_score), 2) AS average_review_score,

    COUNT(*) AS total_reviews,

    ROUND(
        COUNT(*) / oc.grand_total,
        4
    ) AS percentage_of_reviews

FROM order_reviews AS ro
INNER JOIN orders AS o
    ON ro.order_id = o.order_id
CROSS JOIN Overall_Category AS oc

WHERE o.order_delivered_customer_date IS NOT NULL
  AND o.order_estimated_delivery_date IS NOT NULL

GROUP BY
    delivery_status,
    oc.grand_total;


-- =========================================================
-- QUERY 4: OVERALL SALES METRICS
-- Purpose: Calculate total item sales value, distinct
-- delivered orders, and average item sales value per order.
-- =========================================================

SELECT
    ROUND(SUM(oi.price), 2) AS total_item_sales_value,

    COUNT(DISTINCT o.order_id) AS number_of_delivered_orders,

    ROUND(
        SUM(oi.price) / COUNT(DISTINCT o.order_id),
        4
    ) AS average_item_sales_value_per_order

FROM orders AS o
INNER JOIN order_items AS oi
    ON o.order_id = oi.order_id

WHERE o.order_status = 'delivered';


-- =========================================================
-- PROJECT NOTES
-- =========================================================
-- 1. Monthly trends use the order purchase date.
-- 2. Item sales value sums oi.price and excludes freight.
-- 3. Sales value is not the same as profit.
-- 4. Delivery performance excludes orders with missing
--    actual or estimated delivery dates.
-- 5. Review analysis compares average review scores by
--    delivery status. The comparison shows an association,
--    not proof that delivery performance caused the scores.
