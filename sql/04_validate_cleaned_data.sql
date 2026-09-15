USE data_cleaning_demo;

SELECT COUNT(*) AS cleaned_rows
FROM clean_customer_orders;

SELECT
    SUM(customer_id IS NULL) AS missing_customer_id,
    SUM(order_id IS NULL) AS missing_order_id,
    SUM(email IS NULL) AS missing_email,
    SUM(order_date IS NULL) AS missing_order_date,
    SUM(quantity IS NULL) AS missing_quantity,
    SUM(unit_price IS NULL) AS missing_unit_price,
    SUM(total_amount IS NULL) AS missing_total_amount
FROM clean_customer_orders;

SELECT
    order_id,
    COUNT(*) AS duplicate_count
FROM clean_customer_orders
WHERE order_id IS NOT NULL
GROUP BY order_id
HAVING COUNT(*) > 1;

SELECT COUNT(*) AS invalid_date_sequences
FROM clean_customer_orders
WHERE order_date IS NOT NULL
  AND ship_date IS NOT NULL
  AND ship_date < order_date;

DESCRIBE clean_customer_orders;
