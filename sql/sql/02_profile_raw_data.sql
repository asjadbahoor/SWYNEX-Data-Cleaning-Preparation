USE data_cleaning_demo;

SELECT COUNT(*) AS total_rows
FROM messy_customer_orders;

SELECT *
FROM messy_customer_orders
LIMIT 10;

SELECT
    order_id,
    customer_id,
    COUNT(*) AS duplicate_count
FROM messy_customer_orders
GROUP BY order_id, customer_id
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC;
