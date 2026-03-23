-- This query combines customer info with their order prices
SELECT 
    c.customer_unique_id,
    o.order_id,
    o.order_purchase_timestamp,
    oi.price + oi.freight_value AS total_order_cost
FROM olist_orders_dataset o
JOIN olist_customers_dataset c ON o.customer_id = c.customer_id
JOIN olist_order_items_dataset oi ON o.order_id = oi.order_id
LIMIT 100;
